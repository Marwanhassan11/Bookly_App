import 'package:bookly_shop_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, this.mainAxisAlignment = MainAxisAlignment.start});
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          Icons.star,
          color: Color(0xFFFFDD4F),
        ),
        const SizedBox(
          width: 6,
        ),
        Text(
          "4.4",
          style: Styles.textStyle14.copyWith(color: const Color(0xFFFFFFFF)),
        ),
        const SizedBox(
          width: 4.5,
        ),
        const Text(
          "(222)",
          style: Styles.textStyle14,
        )
      ],
    );
  }
}
