import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class News with _$News {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory News({
    @JsonKey(name: 'status', defaultValue: "") required String status,
    @JsonKey(name: 'totalResults', defaultValue: 0) required int totalResults,
    @JsonKey(name: 'articles', defaultValue: []) required List<NewsData>? data,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
  // Map<String, dynamic> toJson() => _$NewsToJson(this);
}

@freezed
class NewsData with _$NewsData {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory NewsData({
    @JsonKey(name: 'author', defaultValue: "") required String author,
    @JsonKey(name: 'title', defaultValue: "") required String title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'url', defaultValue: "") required String url,
    @JsonKey(name: 'publishedAt') DateTime? publishedAt,
  }) = _NewsData;

  factory NewsData.fromJson(Map<String, dynamic> json) =>
      _$NewsDataFromJson(json);
  // Map<String, dynamic> toJson() => _$NewsDataToJson(this);
}
