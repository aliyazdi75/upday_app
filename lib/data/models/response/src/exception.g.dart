// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exception.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HttpExceptionModel> _$httpExceptionModelSerializer =
    new _$HttpExceptionModelSerializer();

class _$HttpExceptionModelSerializer
    implements StructuredSerializer<HttpExceptionModel> {
  @override
  final Iterable<Type> types = const [HttpExceptionModel, _$HttpExceptionModel];
  @override
  final String wireName = 'HttpExceptionModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, HttpExceptionModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  HttpExceptionModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HttpExceptionModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HttpExceptionModel extends HttpExceptionModel {
  @override
  final String key;
  @override
  final String value;

  factory _$HttpExceptionModel(
          [void Function(HttpExceptionModelBuilder)? updates]) =>
      (new HttpExceptionModelBuilder()..update(updates)).build();

  _$HttpExceptionModel._({required this.key, required this.value}) : super._() {
    BuiltValueNullFieldError.checkNotNull(key, 'HttpExceptionModel', 'key');
    BuiltValueNullFieldError.checkNotNull(value, 'HttpExceptionModel', 'value');
  }

  @override
  HttpExceptionModel rebuild(
          void Function(HttpExceptionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HttpExceptionModelBuilder toBuilder() =>
      new HttpExceptionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HttpExceptionModel &&
        key == other.key &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, key.hashCode), value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HttpExceptionModel')
          ..add('key', key)
          ..add('value', value))
        .toString();
  }
}

class HttpExceptionModelBuilder
    implements Builder<HttpExceptionModel, HttpExceptionModelBuilder> {
  _$HttpExceptionModel? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  HttpExceptionModelBuilder();

  HttpExceptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HttpExceptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$HttpExceptionModel;
  }

  @override
  void update(void Function(HttpExceptionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HttpExceptionModel build() {
    final _$result = _$v ??
        new _$HttpExceptionModel._(
            key: BuiltValueNullFieldError.checkNotNull(
                key, 'HttpExceptionModel', 'key'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, 'HttpExceptionModel', 'value'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
