import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'serializers.dart';

part 'exception.g.dart';

abstract class HttpExceptionModel
    implements Built<HttpExceptionModel, HttpExceptionModelBuilder> {
  String get key;

  String get value;

  HttpExceptionModel._();

  factory HttpExceptionModel(
          [void Function(HttpExceptionModelBuilder) updates]) =
      _$HttpExceptionModel;

  static HttpExceptionModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(HttpExceptionModel.serializer, json)!;
  }

  static Serializer<HttpExceptionModel> get serializer =>
      _$httpExceptionModelSerializer;
}
