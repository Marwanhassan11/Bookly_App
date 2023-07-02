import 'package:bookly_shop_app/core/utils/app_router.dart';
import 'package:bookly_shop_app/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 48, left: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            AssetsData.logo,
            width: 75,
            height: 16,
          ),
          Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {
                  GoRouter.of(context).push(AppRouter.kSearchView);
                },
                icon: const Icon(Icons.search),
              )),
        ],
      ),
    );
  }
}
