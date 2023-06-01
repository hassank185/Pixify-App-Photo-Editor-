import 'package:dio/dio.dart';
import 'package:pixify/features/core/network/client_utils.dart';
import 'package:pixify/features/home_page/data/model/collection/collection_model.dart';
import 'package:pixify/features/home_page/data/model/photo/photo_model.dart';
import 'package:pixify/features/home_page/domain/repository/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  final Dio client;

  HomeRepositoryImpl({required this.client});

  @override
  Future<List<CollectionItemModel>> getCollections(int perPage) async {
    try {
      final result = await client.get(
        "/collections/featured",
        options: ClientUtils.pexelAuth,
        queryParameters: {
          "per_page": perPage,
        },
      );

      if (result.statusCode == 200) {
        final resultData = result.data as Map<String, dynamic>;
        final resultFromJson = CollectionModel.fromJson(resultData);
        return resultFromJson.collections;
      }

      return [];
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<List<PhotoItemModel>> getPhotos(int page, int perPage) async {
    try {
      final result = await client.get(
        "/curated",
        options: ClientUtils.pexelAuth,
        queryParameters: {
          "page": page,
          "per_page": perPage,
        },
      );

      if (result.statusCode == 200) {
        final resultData = result.data as Map<String, dynamic>;
        final resultFromJson = PhotoModel.fromJson(resultData);
        return resultFromJson.photos;
      }

      return [];
    } catch (e) {
      rethrow;
    }
  }
}
