import 'package:bookly_shop_app/core/utils/app_router.dart';
import 'package:bookly_shop_app/core/widgets/custom_erorr_widget.dart';
import 'package:bookly_shop_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_shop_app/features/home/presentation/mange/feature_books_cubit/feature_books_cubit.dart';
import 'package:bookly_shop_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeaturedBookListView extends StatelessWidget {
  const FeaturedBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(
                            extra: state.books[index],
                            AppRouter.kBookDetailView);
                      },
                      child: CustomBookImages(
                          imageUrl: state.books[index].volumeInfo.imageLinks
                                  ?.thumbnail ??
                              ""),
                    ),
                  );
                }),
          );
        } else if (state is FeatureBooksFailure) {
          return CustomErrorWidget(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
