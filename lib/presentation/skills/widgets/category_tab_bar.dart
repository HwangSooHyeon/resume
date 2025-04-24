import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/core/theme/custom_text_theme.dart';
import 'package:resume/presentation/core/widgets/hover_box_widget.dart';
import 'package:collection/collection.dart';

class CategoryTabBar extends StatelessWidget {
  final List<String> categories;
  final int selectedIndex;
  final Function(int) onCategorySelected;

  const CategoryTabBar({
    super.key,
    required this.categories,
    required this.selectedIndex,
    required this.onCategorySelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: categories.mapIndexed((i, category) {
          final bool isSelected = selectedIndex == i;
          return HoverBoxWidget(
            onTap: () => onCategorySelected(i),
            margin: const EdgeInsets.only(right: 16.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
            backgroundColor: isSelected
                ? context.colorScheme.primary
                : context.colorScheme.surface,
            borderRadius: 32,
            child: Text(
              category,
              style: isSelected
                  ? CustomTextTheme.boldTextStyle(
                      fontSize: 16,
                      color: context.colorScheme.onPrimary,
                    )
                  : CustomTextTheme.regularTextStyle(
                      fontSize: 16,
                      color:
                          context.colorScheme.onSurface.withValues(alpha: 0.8),
                    ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
