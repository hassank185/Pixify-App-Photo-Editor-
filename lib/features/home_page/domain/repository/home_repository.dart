
import 'package:pixify/features/home_page/data/model/collection/collection_model.dart';
import 'package:pixify/features/home_page/data/model/photo/photo_model.dart';

abstract class HomeRepository {
  Future<List<CollectionItemModel>> getCollections(int perPage);

  Future<List<PhotoItemModel>> getPhotos(int page, int perPage);
}
