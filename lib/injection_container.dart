
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pixify/features/core/network/client.dart';
import 'package:pixify/features/home_page/data/repository/home_repository_impl.dart';
import 'package:pixify/features/home_page/domain/repository/home_repository.dart';
import 'package:pixify/features/search_page/data/repository/search_repository_impl.dart';
import 'package:pixify/features/search_page/domain/repository/search_repository.dart';


final sl = GetIt.instance;

Future<void> init()async{


  sl.registerLazySingleton(() => Dio().initClient("https://api.pexels.com/v1/"));

  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(client: sl.get()));
  sl.registerLazySingleton<SearchRepository>(() => SearchRepositoryImpl(client: sl.get()));

}