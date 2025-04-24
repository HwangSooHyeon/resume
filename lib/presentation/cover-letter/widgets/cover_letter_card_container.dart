import 'package:flutter/material.dart';
import 'package:resume/core/extensions/build_context_extension.dart';
import 'package:resume/domain/entities/cover_letter_model.dart';
import 'package:resume/presentation/core/widgets/custom_text.dart';
import 'package:resume/presentation/cover-letter/widgets/cover_letter_cards_grid.dart';

class CoverLetterCardContainer extends StatelessWidget {
  final String title;
  final String subtitle1;
  final String subtitle2;
  final List<CoverLetterCard> cards;

  const CoverLetterCardContainer({
    super.key,
    required this.title,
    required this.subtitle1,
    required this.subtitle2,
    required this.cards,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height - 164,
      width: context.width * 0.8,
      padding: EdgeInsets.symmetric(horizontal: 0.15 * context.width - 7.5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(32),
        color: context.colorScheme.surface,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 30,
        children: [
          CustomText.bold(title, fontSize: 32),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 10,
            children: [
              CustomText.bold(
                subtitle1,
                fontSize: 20,
                textColor: TextColorEnum.sub,
              ),
              CustomText.bold(
                subtitle2,
                fontSize: 20,
                textColor: TextColorEnum.sub,
              ),
            ],
          ),
          CoverLetterCardsGrid(cards: cards),
        ],
      ),
    );
  }
}
