// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageSearchQuery> _$imageSearchQuerySerializer =
    new _$ImageSearchQuerySerializer();

class _$ImageSearchQuerySerializer
    implements StructuredSerializer<ImageSearchQuery> {
  @override
  final Iterable<Type> types = const [ImageSearchQuery, _$ImageSearchQuery];
  @override
  final String wireName = 'ImageSearchQuery';

  @override
  Iterable<Object?> serialize(Serializers serializers, ImageSearchQuery object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'query',
      serializers.serialize(object.query,
          specifiedType: const FullType(String)),
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(int)),
      'per_page',
      serializers.serialize(object.perPage, specifiedType: const FullType(int)),
      'sort',
      serializers.serialize(object.sort, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ImageSearchQuery deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageSearchQueryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'query':
          result.query = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'per_page':
          result.perPage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'sort':
          result.sort = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageSearchQuery extends ImageSearchQuery {
  @override
  final String query;
  @override
  final int page;
  @override
  final int perPage;
  @override
  final String sort;

  factory _$ImageSearchQuery(
          [void Function(ImageSearchQueryBuilder)? updates]) =>
      (new ImageSearchQueryBuilder()..update(updates)).build();

  _$ImageSearchQuery._(
      {required this.query,
      required this.page,
      required this.perPage,
      required this.sort})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(query, 'ImageSearchQuery', 'query');
    BuiltValueNullFieldError.checkNotNull(page, 'ImageSearchQuery', 'page');
    BuiltValueNullFieldError.checkNotNull(
        perPage, 'ImageSearchQuery', 'perPage');
    BuiltValueNullFieldError.checkNotNull(sort, 'ImageSearchQuery', 'sort');
  }

  @override
  ImageSearchQuery rebuild(void Function(ImageSearchQueryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageSearchQueryBuilder toBuilder() =>
      new ImageSearchQueryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageSearchQuery &&
        query == other.query &&
        page == other.page &&
        perPage == other.perPage &&
        sort == other.sort;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, query.hashCode), page.hashCode), perPage.hashCode),
        sort.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageSearchQuery')
          ..add('query', query)
          ..add('page', page)
          ..add('perPage', perPage)
          ..add('sort', sort))
        .toString();
  }
}

class ImageSearchQueryBuilder
    implements Builder<ImageSearchQuery, ImageSearchQueryBuilder> {
  _$ImageSearchQuery? _$v;

  String? _query;
  String? get query => _$this._query;
  set query(String? query) => _$this._query = query;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _perPage;
  int? get perPage => _$this._perPage;
  set perPage(int? perPage) => _$this._perPage = perPage;

  String? _sort;
  String? get sort => _$this._sort;
  set sort(String? sort) => _$this._sort = sort;

  ImageSearchQueryBuilder();

  ImageSearchQueryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _query = $v.query;
      _page = $v.page;
      _perPage = $v.perPage;
      _sort = $v.sort;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageSearchQuery other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ImageSearchQuery;
  }

  @override
  void update(void Function(ImageSearchQueryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageSearchQuery build() {
    final _$result = _$v ??
        new _$ImageSearchQuery._(
            query: BuiltValueNullFieldError.checkNotNull(
                query, 'ImageSearchQuery', 'query'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, 'ImageSearchQuery', 'page'),
            perPage: BuiltValueNullFieldError.checkNotNull(
                perPage, 'ImageSearchQuery', 'perPage'),
            sort: BuiltValueNullFieldError.checkNotNull(
                sort, 'ImageSearchQuery', 'sort'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
