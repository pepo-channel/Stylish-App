import 'package:flutter/material.dart';
import 'package:stylish_app/core/widgets/custom_appbar_2.dart';
import 'package:stylish_app/features/reviews/presentation/widgets/reviews_addreviews.dart';
import 'package:stylish_app/features/reviews/presentation/widgets/reviews_review_list.dart';

class ReviewsSreen extends StatelessWidget {
  const ReviewsSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar2(pagetitle: 'Reviews'),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 25,),
            ReviewsAddReview(),
            SizedBox(height: 30,),
            Expanded(child: ReviewList()),
          ],
        ),
      ),
    );
  }
}


