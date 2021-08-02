// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Image> _$imageSerializer = new _$ImageSerializer();
Serializer<ImageAsset> _$imageAssetSerializer = new _$ImageAssetSerializer();
Serializer<ImageProperties> _$imagePropertiesSerializer =
    new _$ImagePropertiesSerializer();

class _$ImageSerializer implements StructuredSerializer<Image> {
  @override
  final Iterable<Type> types = const [Image, _$Image];
  @override
  final String wireName = 'Image';

  @override
  Iterable<Object?> serialize(Serializers serializers, Image object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'assets',
      serializers.serialize(object.assets,
          specifiedType: const FullType(ImageAsset)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Image deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'assets':
          result.assets.replace(serializers.deserialize(value,
              specifiedType: const FullType(ImageAsset))! as ImageAsset);
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageAssetSerializer implements StructuredSerializer<ImageAsset> {
  @override
  final Iterable<Type> types = const [ImageAsset, _$ImageAsset];
  @override
  final String wireName = 'ImageAsset';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImageAsset object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'preview',
      serializers.serialize(object.preview,
          specifiedType: const FullType(ImageProperties)),
      'small_thumb',
      serializers.serialize(object.smallThumb,
          specifiedType: const FullType(ImageProperties)),
      'large_thumb',
      serializers.serialize(object.largeThumb,
          specifiedType: const FullType(ImageProperties)),
      'huge_thumb',
      serializers.serialize(object.hugeThumb,
          specifiedType: const FullType(ImageProperties)),
      'preview_1000',
      serializers.serialize(object.preview1000,
          specifiedType: const FullType(ImageProperties)),
      'preview_1500',
      serializers.serialize(object.preview1500,
          specifiedType: const FullType(ImageProperties)),
    ];

    return result;
  }

  @override
  ImageAsset deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageAssetBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'preview':
          result.preview.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ImageProperties))!
              as ImageProperties);
          break;
        case 'small_thumb':
          result.smallThumb.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ImageProperties))!
              as ImageProperties);
          break;
        case 'large_thumb':
          result.largeThumb.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ImageProperties))!
              as ImageProperties);
          break;
        case 'huge_thumb':
          result.hugeThumb.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ImageProperties))!
              as ImageProperties);
          break;
        case 'preview_1000':
          result.preview1000.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ImageProperties))!
              as ImageProperties);
          break;
        case 'preview_1500':
          result.preview1500.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ImageProperties))!
              as ImageProperties);
          break;
      }
    }

    return result.build();
  }
}

class _$ImagePropertiesSerializer
    implements StructuredSerializer<ImageProperties> {
  @override
  final Iterable<Type> types = const [ImageProperties, _$ImageProperties];
  @override
  final String wireName = 'ImageProperties';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImageProperties object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ImageProperties deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagePropertiesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Image extends Image {
  @override
  final String id;
  @override
  final ImageAsset assets;
  @override
  final String description;

  factory _$Image([void Function(ImageBuilder)? updates]) =>
      (new ImageBuilder()..update(updates)).build();

  _$Image._({required this.id, required this.assets, required this.description})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Image', 'id');
    BuiltValueNullFieldError.checkNotNull(assets, 'Image', 'assets');
    BuiltValueNullFieldError.checkNotNull(description, 'Image', 'description');
  }

  @override
  Image rebuild(void Function(ImageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageBuilder toBuilder() => new ImageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Image &&
        id == other.id &&
        assets == other.assets &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), assets.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Image')
          ..add('id', id)
          ..add('assets', assets)
          ..add('description', description))
        .toString();
  }
}

class ImageBuilder implements Builder<Image, ImageBuilder> {
  _$Image? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ImageAssetBuilder? _assets;
  ImageAssetBuilder get assets => _$this._assets ??= new ImageAssetBuilder();
  set assets(ImageAssetBuilder? assets) => _$this._assets = assets;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  ImageBuilder();

  ImageBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _assets = $v.assets.toBuilder();
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Image other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Image;
  }

  @override
  void update(void Function(ImageBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Image build() {
    _$Image _$result;
    try {
      _$result = _$v ??
          new _$Image._(
              id: BuiltValueNullFieldError.checkNotNull(id, 'Image', 'id'),
              assets: assets.build(),
              description: BuiltValueNullFieldError.checkNotNull(
                  description, 'Image', 'description'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'assets';
        assets.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Image', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ImageAsset extends ImageAsset {
  @override
  final ImageProperties preview;
  @override
  final ImageProperties smallThumb;
  @override
  final ImageProperties largeThumb;
  @override
  final ImageProperties hugeThumb;
  @override
  final ImageProperties preview1000;
  @override
  final ImageProperties preview1500;

  factory _$ImageAsset([void Function(ImageAssetBuilder)? updates]) =>
      (new ImageAssetBuilder()..update(updates)).build();

  _$ImageAsset._(
      {required this.preview,
      required this.smallThumb,
      required this.largeThumb,
      required this.hugeThumb,
      required this.preview1000,
      required this.preview1500})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(preview, 'ImageAsset', 'preview');
    BuiltValueNullFieldError.checkNotNull(
        smallThumb, 'ImageAsset', 'smallThumb');
    BuiltValueNullFieldError.checkNotNull(
        largeThumb, 'ImageAsset', 'largeThumb');
    BuiltValueNullFieldError.checkNotNull(hugeThumb, 'ImageAsset', 'hugeThumb');
    BuiltValueNullFieldError.checkNotNull(
        preview1000, 'ImageAsset', 'preview1000');
    BuiltValueNullFieldError.checkNotNull(
        preview1500, 'ImageAsset', 'preview1500');
  }

  @override
  ImageAsset rebuild(void Function(ImageAssetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageAssetBuilder toBuilder() => new ImageAssetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageAsset &&
        preview == other.preview &&
        smallThumb == other.smallThumb &&
        largeThumb == other.largeThumb &&
        hugeThumb == other.hugeThumb &&
        preview1000 == other.preview1000 &&
        preview1500 == other.preview1500;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, preview.hashCode), smallThumb.hashCode),
                    largeThumb.hashCode),
                hugeThumb.hashCode),
            preview1000.hashCode),
        preview1500.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageAsset')
          ..add('preview', preview)
          ..add('smallThumb', smallThumb)
          ..add('largeThumb', largeThumb)
          ..add('hugeThumb', hugeThumb)
          ..add('preview1000', preview1000)
          ..add('preview1500', preview1500))
        .toString();
  }
}

class ImageAssetBuilder implements Builder<ImageAsset, ImageAssetBuilder> {
  _$ImageAsset? _$v;

  ImagePropertiesBuilder? _preview;
  ImagePropertiesBuilder get preview =>
      _$this._preview ??= new ImagePropertiesBuilder();
  set preview(ImagePropertiesBuilder? preview) => _$this._preview = preview;

  ImagePropertiesBuilder? _smallThumb;
  ImagePropertiesBuilder get smallThumb =>
      _$this._smallThumb ??= new ImagePropertiesBuilder();
  set smallThumb(ImagePropertiesBuilder? smallThumb) =>
      _$this._smallThumb = smallThumb;

  ImagePropertiesBuilder? _largeThumb;
  ImagePropertiesBuilder get largeThumb =>
      _$this._largeThumb ??= new ImagePropertiesBuilder();
  set largeThumb(ImagePropertiesBuilder? largeThumb) =>
      _$this._largeThumb = largeThumb;

  ImagePropertiesBuilder? _hugeThumb;
  ImagePropertiesBuilder get hugeThumb =>
      _$this._hugeThumb ??= new ImagePropertiesBuilder();
  set hugeThumb(ImagePropertiesBuilder? hugeThumb) =>
      _$this._hugeThumb = hugeThumb;

  ImagePropertiesBuilder? _preview1000;
  ImagePropertiesBuilder get preview1000 =>
      _$this._preview1000 ??= new ImagePropertiesBuilder();
  set preview1000(ImagePropertiesBuilder? preview1000) =>
      _$this._preview1000 = preview1000;

  ImagePropertiesBuilder? _preview1500;
  ImagePropertiesBuilder get preview1500 =>
      _$this._preview1500 ??= new ImagePropertiesBuilder();
  set preview1500(ImagePropertiesBuilder? preview1500) =>
      _$this._preview1500 = preview1500;

  ImageAssetBuilder();

  ImageAssetBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _preview = $v.preview.toBuilder();
      _smallThumb = $v.smallThumb.toBuilder();
      _largeThumb = $v.largeThumb.toBuilder();
      _hugeThumb = $v.hugeThumb.toBuilder();
      _preview1000 = $v.preview1000.toBuilder();
      _preview1500 = $v.preview1500.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageAsset other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageAsset;
  }

  @override
  void update(void Function(ImageAssetBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageAsset build() {
    _$ImageAsset _$result;
    try {
      _$result = _$v ??
          new _$ImageAsset._(
              preview: preview.build(),
              smallThumb: smallThumb.build(),
              largeThumb: largeThumb.build(),
              hugeThumb: hugeThumb.build(),
              preview1000: preview1000.build(),
              preview1500: preview1500.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'preview';
        preview.build();
        _$failedField = 'smallThumb';
        smallThumb.build();
        _$failedField = 'largeThumb';
        largeThumb.build();
        _$failedField = 'hugeThumb';
        hugeThumb.build();
        _$failedField = 'preview1000';
        preview1000.build();
        _$failedField = 'preview1500';
        preview1500.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ImageAsset', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ImageProperties extends ImageProperties {
  @override
  final int height;
  @override
  final int width;
  @override
  final String url;

  factory _$ImageProperties([void Function(ImagePropertiesBuilder)? updates]) =>
      (new ImagePropertiesBuilder()..update(updates)).build();

  _$ImageProperties._(
      {required this.height, required this.width, required this.url})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(height, 'ImageProperties', 'height');
    BuiltValueNullFieldError.checkNotNull(width, 'ImageProperties', 'width');
    BuiltValueNullFieldError.checkNotNull(url, 'ImageProperties', 'url');
  }

  @override
  ImageProperties rebuild(void Function(ImagePropertiesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagePropertiesBuilder toBuilder() =>
      new ImagePropertiesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageProperties &&
        height == other.height &&
        width == other.width &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, height.hashCode), width.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageProperties')
          ..add('height', height)
          ..add('width', width)
          ..add('url', url))
        .toString();
  }
}

class ImagePropertiesBuilder
    implements Builder<ImageProperties, ImagePropertiesBuilder> {
  _$ImageProperties? _$v;

  int? _height;
  int? get height => _$this._height;
  set height(int? height) => _$this._height = height;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  ImagePropertiesBuilder();

  ImagePropertiesBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _height = $v.height;
      _width = $v.width;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageProperties other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageProperties;
  }

  @override
  void update(void Function(ImagePropertiesBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageProperties build() {
    final _$result = _$v ??
        new _$ImageProperties._(
            height: BuiltValueNullFieldError.checkNotNull(
                height, 'ImageProperties', 'height'),
            width: BuiltValueNullFieldError.checkNotNull(
                width, 'ImageProperties', 'width'),
            url: BuiltValueNullFieldError.checkNotNull(
                url, 'ImageProperties', 'url'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
