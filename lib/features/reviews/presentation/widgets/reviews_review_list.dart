import 'package:flutter/material.dart';
import 'package:stylish_app/features/reviews/presentation/widgets/reviews_review_item.dart';

class ReviewList extends StatelessWidget {
  const ReviewList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, index) {
        return ReviewItem();
      },
    );
  }
}