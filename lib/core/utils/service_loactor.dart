import 'package:bookly_shop_app/features/home/data/repos/home_repo_-impl.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

import 'api_service.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    getIt.get<ApiService>(),
  ));
}
