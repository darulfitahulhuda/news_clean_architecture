// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

News _$NewsFromJson(Map<String, dynamic> json) {
  return _News.fromJson(json);
}

/// @nodoc
mixin _$News {
  @JsonKey(name: 'status', defaultValue: "")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalResults', defaultValue: 0)
  int get totalResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'articles', defaultValue: [])
  List<NewsData>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsCopyWith<News> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsCopyWith<$Res> {
  factory $NewsCopyWith(News value, $Res Function(News) then) =
      _$NewsCopyWithImpl<$Res, News>;
  @useResult
  $Res call(
      {@JsonKey(name: 'status', defaultValue: "") String status,
      @JsonKey(name: 'totalResults', defaultValue: 0) int totalResults,
      @JsonKey(name: 'articles', defaultValue: []) List<NewsData>? data});
}

/// @nodoc
class _$NewsCopyWithImpl<$Res, $Val extends News>
    implements $NewsCopyWith<$Res> {
  _$NewsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewsData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsCopyWith<$Res> implements $NewsCopyWith<$Res> {
  factory _$$_NewsCopyWith(_$_News value, $Res Function(_$_News) then) =
      __$$_NewsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'status', defaultValue: "") String status,
      @JsonKey(name: 'totalResults', defaultValue: 0) int totalResults,
      @JsonKey(name: 'articles', defaultValue: []) List<NewsData>? data});
}

/// @nodoc
class __$$_NewsCopyWithImpl<$Res> extends _$NewsCopyWithImpl<$Res, _$_News>
    implements _$$_NewsCopyWith<$Res> {
  __$$_NewsCopyWithImpl(_$_News _value, $Res Function(_$_News) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? totalResults = null,
    Object? data = freezed,
  }) {
    return _then(_$_News(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NewsData>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_News implements _News {
  const _$_News(
      {@JsonKey(name: 'status', defaultValue: "") required this.status,
      @JsonKey(name: 'totalResults', defaultValue: 0)
      required this.totalResults,
      @JsonKey(name: 'articles', defaultValue: [])
      required final List<NewsData>? data})
      : _data = data;

  factory _$_News.fromJson(Map<String, dynamic> json) => _$$_NewsFromJson(json);

  @override
  @JsonKey(name: 'status', defaultValue: "")
  final String status;
  @override
  @JsonKey(name: 'totalResults', defaultValue: 0)
  final int totalResults;
  final List<NewsData>? _data;
  @override
  @JsonKey(name: 'articles', defaultValue: [])
  List<NewsData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'News(status: $status, totalResults: $totalResults, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_News &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, totalResults,
      const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsCopyWith<_$_News> get copyWith =>
      __$$_NewsCopyWithImpl<_$_News>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsToJson(
      this,
    );
  }
}

abstract class _News implements News {
  const factory _News(
      {@JsonKey(name: 'status', defaultValue: "") required final String status,
      @JsonKey(name: 'totalResults', defaultValue: 0)
      required final int totalResults,
      @JsonKey(name: 'articles', defaultValue: [])
      required final List<NewsData>? data}) = _$_News;

  factory _News.fromJson(Map<String, dynamic> json) = _$_News.fromJson;

  @override
  @JsonKey(name: 'status', defaultValue: "")
  String get status;
  @override
  @JsonKey(name: 'totalResults', defaultValue: 0)
  int get totalResults;
  @override
  @JsonKey(name: 'articles', defaultValue: [])
  List<NewsData>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_NewsCopyWith<_$_News> get copyWith => throw _privateConstructorUsedError;
}

NewsData _$NewsDataFromJson(Map<String, dynamic> json) {
  return _NewsData.fromJson(json);
}

/// @nodoc
mixin _$NewsData {
  @JsonKey(name: 'author', defaultValue: "")
  String get author => throw _privateConstructorUsedError;
  @JsonKey(name: 'title', defaultValue: "")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'url', defaultValue: "")
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: 'publishedAt')
  DateTime? get publishedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewsDataCopyWith<NewsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsDataCopyWith<$Res> {
  factory $NewsDataCopyWith(NewsData value, $Res Function(NewsData) then) =
      _$NewsDataCopyWithImpl<$Res, NewsData>;
  @useResult
  $Res call(
      {@JsonKey(name: 'author', defaultValue: "") String author,
      @JsonKey(name: 'title', defaultValue: "") String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'url', defaultValue: "") String url,
      @JsonKey(name: 'publishedAt') DateTime? publishedAt});
}

/// @nodoc
class _$NewsDataCopyWithImpl<$Res, $Val extends NewsData>
    implements $NewsDataCopyWith<$Res> {
  _$NewsDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? title = null,
    Object? description = freezed,
    Object? url = null,
    Object? publishedAt = freezed,
  }) {
    return _then(_value.copyWith(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NewsDataCopyWith<$Res> implements $NewsDataCopyWith<$Res> {
  factory _$$_NewsDataCopyWith(
          _$_NewsData value, $Res Function(_$_NewsData) then) =
      __$$_NewsDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'author', defaultValue: "") String author,
      @JsonKey(name: 'title', defaultValue: "") String title,
      @JsonKey(name: 'description') String? description,
      @JsonKey(name: 'url', defaultValue: "") String url,
      @JsonKey(name: 'publishedAt') DateTime? publishedAt});
}

/// @nodoc
class __$$_NewsDataCopyWithImpl<$Res>
    extends _$NewsDataCopyWithImpl<$Res, _$_NewsData>
    implements _$$_NewsDataCopyWith<$Res> {
  __$$_NewsDataCopyWithImpl(
      _$_NewsData _value, $Res Function(_$_NewsData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? author = null,
    Object? title = null,
    Object? description = freezed,
    Object? url = null,
    Object? publishedAt = freezed,
  }) {
    return _then(_$_NewsData(
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      publishedAt: freezed == publishedAt
          ? _value.publishedAt
          : publishedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_NewsData implements _NewsData {
  const _$_NewsData(
      {@JsonKey(name: 'author', defaultValue: "") required this.author,
      @JsonKey(name: 'title', defaultValue: "") required this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'url', defaultValue: "") required this.url,
      @JsonKey(name: 'publishedAt') this.publishedAt});

  factory _$_NewsData.fromJson(Map<String, dynamic> json) =>
      _$$_NewsDataFromJson(json);

  @override
  @JsonKey(name: 'author', defaultValue: "")
  final String author;
  @override
  @JsonKey(name: 'title', defaultValue: "")
  final String title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'url', defaultValue: "")
  final String url;
  @override
  @JsonKey(name: 'publishedAt')
  final DateTime? publishedAt;

  @override
  String toString() {
    return 'NewsData(author: $author, title: $title, description: $description, url: $url, publishedAt: $publishedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewsData &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.publishedAt, publishedAt) ||
                other.publishedAt == publishedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, author, title, description, url, publishedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewsDataCopyWith<_$_NewsData> get copyWith =>
      __$$_NewsDataCopyWithImpl<_$_NewsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NewsDataToJson(
      this,
    );
  }
}

abstract class _NewsData implements NewsData {
  const factory _NewsData(
      {@JsonKey(name: 'author', defaultValue: "") required final String author,
      @JsonKey(name: 'title', defaultValue: "") required final String title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'url', defaultValue: "") required final String url,
      @JsonKey(name: 'publishedAt') final DateTime? publishedAt}) = _$_NewsData;

  factory _NewsData.fromJson(Map<String, dynamic> json) = _$_NewsData.fromJson;

  @override
  @JsonKey(name: 'author', defaultValue: "")
  String get author;
  @override
  @JsonKey(name: 'title', defaultValue: "")
  String get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'url', defaultValue: "")
  String get url;
  @override
  @JsonKey(name: 'publishedAt')
  DateTime? get publishedAt;
  @override
  @JsonKey(ignore: true)
  _$$_NewsDataCopyWith<_$_NewsData> get copyWith =>
      throw _privateConstructorUsedError;
}
