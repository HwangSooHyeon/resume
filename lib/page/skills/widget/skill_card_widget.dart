import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:resume/util/extension/build_context_extension.dart';
import 'package:resume/util/theme/custom_text_theme.dart';

class SkillCardWidget extends StatefulWidget {
  const SkillCardWidget(
    this.name, {
    super.key,
    this.level,
    this.description,
    this.detailedDescriptions,
  });

  final String name;
  final double? level;
  final String? description;
  final List<String>? detailedDescriptions;

  @override
  State<SkillCardWidget> createState() => _SkillCardWidgetState();
}

class _SkillCardWidgetState extends State<SkillCardWidget> {
  bool _isHovered = false;

  void _showDetailModal(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Skill Detail",
      barrierColor: Colors.black.withValues(alpha: 0.6),
      transitionDuration: const Duration(milliseconds: 300),
      transitionBuilder: (context, animation, secondaryAnimation, child) {
        final curve = CurvedAnimation(
          parent: animation,
          curve: Curves.easeOutBack,
        );

        return ScaleTransition(
          scale: Tween<double>(begin: 0.8, end: 1.0).animate(curve),
          child: FadeTransition(
            opacity: Tween<double>(begin: 0.0, end: 1.0).animate(curve),
            child: child,
          ),
        );
      },
      pageBuilder: (_, __, ___) => _buildModalContent(context),
    );
  }

  Widget _buildModalContent(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          constraints: BoxConstraints(
            maxWidth: 600,
            maxHeight: context.height * 0.8,
          ),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.2),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildModalHeader(context),
                _buildModalBody(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildModalHeader(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: context.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              widget.name,
              style: CustomTextTheme.boldTextStyle(
                fontSize: 24,
                color: context.colorScheme.onPrimary,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.close, color: context.colorScheme.onPrimary),
            onPressed: () => context.pop(),
            splashRadius: 24,
          ),
        ],
      ),
    );
  }

  Widget _buildModalBody(BuildContext context) {
    return Flexible(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.level != null) ...[
              const Text(
                "Proficiency",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 12),
              _buildAnimatedProgressBar(context),
              const SizedBox(height: 24),
            ],
            const Text(
              "Description",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
              ),
            ),
            const SizedBox(height: 12),
            if (widget.detailedDescriptions != null &&
                widget.detailedDescriptions!.isNotEmpty)
              ...widget.detailedDescriptions!.map((description) => Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 10, right: 8),
                          height: 6,
                          width: 6,
                          decoration: BoxDecoration(
                            color: context.colorScheme.primary,
                            shape: BoxShape.circle,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            description,
                            style: CustomTextTheme.regularTextStyle(
                              fontSize: 16,
                              height: 1.6,
                              color: context.colorScheme.onSurface,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ))
            else
              Text(
                widget.description ?? "No description available.",
                style: CustomTextTheme.regularTextStyle(
                  fontSize: 16,
                  height: 1.6,
                  color: context.colorScheme.onSurface,
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnimatedProgressBar(BuildContext context) {
    return TweenAnimationBuilder<double>(
      duration: const Duration(milliseconds: 1500),
      tween: Tween<double>(begin: 0, end: widget.level! / 100),
      curve: Curves.easeOutQuart,
      builder: (context, value, _) {
        return Stack(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                color: context.colorScheme.surfaceContainerHighest,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              height: 40,
              width: 500 * value,
              decoration: BoxDecoration(
                color: context.colorScheme.primary,
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                "${(value * 100).toInt()}%",
                style: CustomTextTheme.boldTextStyle(
                  fontSize: 16,
                  color: context.colorScheme.onPrimary,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildCardHeader() {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          context.colorScheme.primary,
          context.colorScheme.secondary,
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ).createShader(bounds),
      child: Text(
        widget.name,
        style: CustomTextTheme.boldTextStyle(
          fontSize: 22,
          color: Colors.white,
        ),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  Widget _buildCardProgressInfo(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Proficiency:',
              style: CustomTextTheme.regularTextStyle(
                fontSize: 14,
                color: context.colorScheme.onSurface.withValues(alpha: 0.7),
              ),
            ),
            const SizedBox(width: 8),
            Text(
              '${widget.level!.toInt()}%',
              style: CustomTextTheme.boldTextStyle(
                fontSize: 14,
                color: context.colorScheme.primary,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: widget.level! / 100,
            backgroundColor:
                context.colorScheme.onSurface.withValues(alpha: 0.2),
            color: context.colorScheme.primary,
            minHeight: 6,
          ),
        ),
      ],
    );
  }

  Widget _buildCardDescription(BuildContext context) {
    return Text(
      widget.description!,
      style: CustomTextTheme.regularTextStyle(
        fontSize: 14,
        color: context.colorScheme.onSurface.withValues(alpha: 0.7),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => widget.detailedDescriptions != null
          ? _showDetailModal(context)
          : null,
      child: MouseRegion(
        onEnter: (_) => setState(() => _isHovered = true),
        onExit: (_) => setState(() => _isHovered = false),
        cursor: SystemMouseCursors.click,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: const Cubic(0.0, 0.0, 0.5, 1.0),
          width: 290,
          margin: const EdgeInsets.only(right: 20, bottom: 20),
          padding: const EdgeInsets.all(20),
          transformAlignment: Alignment.center,
          transform: Matrix4.identity()..scale(_isHovered ? 1.009 : 1),
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: _isHovered ? 0.16 : 0.08),
                offset: const Offset(2, 4),
                blurRadius: 20,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 16,
            children: [
              _buildCardHeader(),
              if (widget.level != null) ...[
                _buildCardProgressInfo(context),
              ] else if (widget.description != null) ...[
                Container(
                  height: 2,
                  width: 40,
                  decoration: BoxDecoration(
                    color: context.colorScheme.primary,
                    borderRadius: BorderRadius.circular(1),
                  ),
                ),
              ],
              if (widget.description != null) ...[
                _buildCardDescription(context),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
