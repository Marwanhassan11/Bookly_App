import 'package:bookly_shop_app/core/utils/service_loactor.dart';
import 'package:bookly_shop_app/features/home/book_details_view.dart';
import 'package:bookly_shop_app/features/home/data/models/book_model/book_model.dart';
import 'package:bookly_shop_app/features/home/data/repos/home_repo_-impl.dart';
import 'package:bookly_shop_app/features/home/presentation/mange/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_shop_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_shop_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_shop_app/features/splash/views/splash_view.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppRouter {
  static const kHomeView = "/HomeView";
  static const kBookDetailView = "/BookDetailView";
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(
            getIt.get<HomeRepoImpl>(),
          ),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
    ],
  );
}
