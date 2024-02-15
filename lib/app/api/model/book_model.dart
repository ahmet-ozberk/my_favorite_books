import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_model.freezed.dart';
part 'book_model.g.dart';

@freezed
abstract class BookModel with _$BookModel {
  factory BookModel({
    String? id,
    String? title,
    String? description,
    String? publisher,
    String? publishedDate,
    int? pageCount,
    BookThumbnailModel? imageLinks,
    List<String>? authors,
  }) = _BookModel;
  factory BookModel.fromJson(Map<String, dynamic> json) =>
      _$BookModelFromJson(json);
}

@freezed
abstract class BookThumbnailModel with _$BookThumbnailModel {
  factory BookThumbnailModel({
    String? smallThumbnail,
    String? thumbnail,
  }) = _BookThumbnailModel;
  factory BookThumbnailModel.fromJson(Map<String, dynamic> json) =>
      _$BookThumbnailModelFromJson(json);
}