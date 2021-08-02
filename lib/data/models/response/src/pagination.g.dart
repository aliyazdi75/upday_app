// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Pagination<Object?>> _$paginationSerializer =
    new _$PaginationSerializer();

class _$PaginationSerializer
    implements StructuredSerializer<Pagination<Object?>> {
  @override
  final Iterable<Type> types = const [Pagination, _$Pagination];
  @override
  final String wireName = 'Pagination';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, Pagination<Object?> object,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = <Object?>[
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'per_page',
      serializers.serialize(object.perPage, specifiedType: const FullType(int)),
      'total_count',
      serializers.serialize(object.totalCount,
          specifiedType: const FullType(int)),
      'data',
      serializers.serialize(object.data,
          specifiedType: new FullType(BuiltList, [parameterT])),
    ];

    return result;
  }

  @override
  Pagination<Object?> deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final isUnderspecified =
        specifiedType.isUnspecified || specifiedType.parameters.isEmpty;
    if (!isUnderspecified) serializers.expectBuilder(specifiedType);
    final parameterT =
        isUnderspecified ? FullType.object : specifiedType.parameters[0];

    final result = isUnderspecified
        ? new PaginationBuilder<Object?>()
        : serializers.newBuilder(specifiedType) as PaginationBuilder<Object?>;

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'per_page':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: new FullType(BuiltList, [parameterT]))!
              as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$Pagination<T> extends Pagination<T> {
  @override
  final int page;
  @override
  final int perPage;
  @override
  final int totalCount;
  @override
  final BuiltList<T> data;

  factory _$Pagination([void Function(PaginationBuilder<T>)? updates]) =>
      (new PaginationBuilder<T>()..update(updates)).build();

  _$Pagination._(
      {required this.page,
      required this.perPage,
      required this.totalCount,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(page, 'Pagination', 'page');
    BuiltValueNullFieldError.checkNotNull(perPage, 'Pagination', 'perPage');
    BuiltValueNullFieldError.checkNotNull(
        totalCount, 'Pagination', 'totalCount');
    BuiltValueNullFieldError.checkNotNull(data, 'Pagination', 'data');
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('Pagination', 'T');
    }
  }

  @override
  Pagination<T> rebuild(void Function(PaginationBuilder<T>) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaginationBuilder<T> toBuilder() => new PaginationBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Pagination &&
        page == other.page &&
        perPage == other.perPage &&
        totalCount == other.totalCount &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, page.hashCode), perPage.hashCode), totalCount.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Pagination')
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('totalCount', totalCount)
          ..add('data', data))
        .toString();
  }
}

class PaginationBuilder<T>
    implements Builder<Pagination<T>, PaginationBuilder<T>> {
  _$Pagination<T>? _$v;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  int? _totalCount;
  int? get totalCount => _$this._totalCount;
  set totalCount(int? totalCount) => _$this._totalCount = totalCount;

  ListBuilder<T>? _data;
  ListBuilder<T> get data => _$this._data ??= new ListBuilder<T>();
  set data(ListBuilder<T>? data) => _$this._data = data;

  PaginationBuilder();

  PaginationBuilder<T> get _$this {
    final $v = _$v;
    if ($v != null) {
      _page = $v.page;
      _perPage = $v.perPage;
      _totalCount = $v.totalCount;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Pagination<T> other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Pagination<T>;
  }

  @override
  void update(void Function(PaginationBuilder<T>)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Pagination<T> build() {
    _$Pagination<T> _$result;
    try {
      _$result = _$v ??
          new _$Pagination<T>._(
              page: BuiltValueNullFieldError.checkNotNull(
                  page, 'Pagination', 'page'),
              perPage: BuiltValueNullFieldError.checkNotNull(
                  perPage, 'Pagination', 'perPage'),
              totalCount: BuiltValueNullFieldError.checkNotNull(
                  totalCount, 'Pagination', 'totalCount'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Pagination', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
