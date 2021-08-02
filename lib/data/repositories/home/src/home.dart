import 'dart:async';

import 'package:upday_app/data/models/image/index.dart';
import 'package:upday_app/data/models/response/index.dart';
import 'package:upday_app/data/providers/api/home/index.dart';

class HomeRepository {
  Future<Pagination<Image>> getImagesPagination({
    required int page,
    String query = 'sunrise',
    int perPage = 5,
    String sort = 'popular',
  }) async {
    final imageSearchQuery = ImageSearchQuery(
      (b) => b
        ..query = query
        ..page = page
        ..perPage = perPage
        ..sort = sort,
    );

    return await HomeApi.getImagesPagination(imageSearchQuery);
  }
}
