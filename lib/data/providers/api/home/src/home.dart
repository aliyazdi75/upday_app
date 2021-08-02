import 'package:upday_app/data/models/image/index.dart';
import 'package:upday_app/data/models/response/index.dart';
import 'package:upday_app/services/http/index.dart';

class HomeApi {
  static Future<Pagination<Image>> getImagesPagination(
      ImageSearchQuery query) async {
    final queryParams = Map<String, String>.from(query.toJson());
    final response =
        await HttpHelper('images/search').httpGet(queryParams: queryParams);
    return Pagination.fromJson<Image>(response);
  }
}
