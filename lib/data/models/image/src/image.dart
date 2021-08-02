import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'image.g.dart';

abstract class Image implements Built<Image, ImageBuilder> {
  String get id;

  ImageAsset get assets;

  String get description;

  Image._();

  factory Image([void Function(ImageBuilder) updates]) = _$Image;

  static Serializer<Image> get serializer => _$imageSerializer;
}

abstract class ImageAsset implements Built<ImageAsset, ImageAssetBuilder> {
  ImageProperties get preview;

  @BuiltValueField(wireName: 'small_thumb')
  ImageProperties get smallThumb;

  @BuiltValueField(wireName: 'large_thumb')
  ImageProperties get largeThumb;

  @BuiltValueField(wireName: 'huge_thumb')
  ImageProperties get hugeThumb;

  @BuiltValueField(wireName: 'preview_1000')
  ImageProperties get preview1000;

  @BuiltValueField(wireName: 'preview_1500')
  ImageProperties get preview1500;

  ImageAsset._();

  factory ImageAsset([void Function(ImageAssetBuilder) updates]) = _$ImageAsset;

  static Serializer<ImageAsset> get serializer => _$imageAssetSerializer;
}

abstract class ImageProperties
    implements Built<ImageProperties, ImagePropertiesBuilder> {
  int get height;

  int get width;

  String get url;

  ImageProperties._();

  factory ImageProperties([void Function(ImagePropertiesBuilder) updates]) =
      _$ImageProperties;

  static Serializer<ImageProperties> get serializer =>
      _$imagePropertiesSerializer;
}
