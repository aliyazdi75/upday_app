import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:upday_app/data/models/image/src/serializers.dart';

part 'search.g.dart';

abstract class ImageSearchQuery
    implements Built<ImageSearchQuery, ImageSearchQueryBuilder> {
  String get query;

  int get page;

  @BuiltValueField(wireName: 'per_page')
  int get perPage;

  String get sort;

  ImageSearchQuery._();

  factory ImageSearchQuery([void Function(ImageSearchQueryBuilder) updates]) =
      _$ImageSearchQuery;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(ImageSearchQuery.serializer, this)
        as Map<String, dynamic>;
  }

  static Serializer<ImageSearchQuery> get serializer =>
      _$imageSearchQuerySerializer;
}
