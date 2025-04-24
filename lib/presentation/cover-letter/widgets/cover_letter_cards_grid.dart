import 'package:flutter/material.dart';
import 'package:resume/domain/entities/cover_letter_model.dart';
import 'package:resume/presentation/cover-letter/widgets/cover_letter_image_box_widget.dart';

class CoverLetterCardsGrid extends StatelessWidget {
  const CoverLetterCardsGrid({super.key, required this.cards});

  final List<CoverLetterCard> cards;

  Widget _buildCard(int index) {
    if (index < cards.length) {
      final card = cards[index];
      return CoverLetterImageBoxWidget(
        image: card.image,
        title: card.title,
        description: card.description,
      );
    }
    return const SizedBox.shrink();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            _buildCard(0),
            _buildCard(1),
          ],
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            _buildCard(2),
            _buildCard(3),
          ],
        ),
      ],
    );
  }
}
