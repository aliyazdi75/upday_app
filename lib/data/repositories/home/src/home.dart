import 'dart:async';

import 'package:upday_app/data/models/image/index.dart';
import 'package:upday_app/data/models/response/index.dart';
import 'package:upday_app/data/providers/api/home/index.dart';

class HomeRepository {
  Future<Pagination<Image>> getImagesPagination({
    required int page,
    required String query,
    int perPage = 5,
    String sort = 'popular',
    String imageType = 'photo',
  }) async {
    final imageSearchQuery = ImageSearchQuery(
      (b) => b
        ..query = query
        ..page = page.toString()
        ..perPage = perPage.toString()
        ..sort = sort
        ..imageType = imageType,
    );

    return await HomeApi.getImagesPagination(imageSearchQuery);
  }
}
