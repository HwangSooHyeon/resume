// widgets/cv_profile_widget.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:resume/asset/gen/assets.gen.dart';
import 'package:resume/core/provider/app_localizations_state_provider.dart';
import 'package:resume/core/theme/custom_text_theme.dart';

class CvProfileWidget extends ConsumerWidget {
  const CvProfileWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocalizationsStateProvider);

    return Container(
      margin: const EdgeInsets.fromLTRB(100, 30, 100, 0),
      padding: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: 24,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: Theme.of(context).colorScheme.surface,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            offset: const Offset(2, 4),
            blurRadius: 20,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        spacing: 32,
        children: [
          SizedBox(
            width: 150,
            height: 150,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Assets.image.imageProfile.image(fit: BoxFit.cover),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                Text(
                  locale.myName,
                  style: CustomTextTheme.boldTextStyle(fontSize: 36),
                ),
                Text(
                  locale.title,
                  style: CustomTextTheme.regularTextStyle(
                    fontSize: 20,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text(
                  locale.cvProfileComment,
                  style: CustomTextTheme.regularTextStyle(
                    fontSize: 16,
                    height: 1.6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
