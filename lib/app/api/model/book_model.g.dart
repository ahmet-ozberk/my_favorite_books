// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookModelImpl _$$BookModelImplFromJson(Map<String, dynamic> json) =>
    _$BookModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      publisher: json['publisher'] as String?,
      publishedDate: json['publishedDate'] as String?,
      pageCount: json['pageCount'] as int?,
      imageLinks: json['imageLinks'] == null
          ? null
          : BookThumbnailModel.fromJson(
              json['imageLinks'] as Map<String, dynamic>),
      authors:
          (json['authors'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$BookModelImplToJson(_$BookModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'publisher': instance.publisher,
      'publishedDate': instance.publishedDate,
      'pageCount': instance.pageCount,
      'imageLinks': instance.imageLinks,
      'authors': instance.authors,
    };

_$BookThumbnailModelImpl _$$BookThumbnailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BookThumbnailModelImpl(
      smallThumbnail: json['smallThumbnail'] as String?,
      thumbnail: json['thumbnail'] as String?,
    );

Map<String, dynamic> _$$BookThumbnailModelImplToJson(
        _$BookThumbnailModelImpl instance) =>
    <String, dynamic>{
      'smallThumbnail': instance.smallThumbnail,
      'thumbnail': instance.thumbnail,
    };
