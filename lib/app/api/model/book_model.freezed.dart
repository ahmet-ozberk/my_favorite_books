// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'book_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BookModel _$BookModelFromJson(Map<String, dynamic> json) {
  return _BookModel.fromJson(json);
}

/// @nodoc
mixin _$BookModel {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get publisher => throw _privateConstructorUsedError;
  String? get publishedDate => throw _privateConstructorUsedError;
  int? get pageCount => throw _privateConstructorUsedError;
  BookThumbnailModel? get imageLinks => throw _privateConstructorUsedError;
  List<String>? get authors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookModelCopyWith<BookModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookModelCopyWith<$Res> {
  factory $BookModelCopyWith(BookModel value, $Res Function(BookModel) then) =
      _$BookModelCopyWithImpl<$Res, BookModel>;
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      String? publisher,
      String? publishedDate,
      int? pageCount,
      BookThumbnailModel? imageLinks,
      List<String>? authors});

  $BookThumbnailModelCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class _$BookModelCopyWithImpl<$Res, $Val extends BookModel>
    implements $BookModelCopyWith<$Res> {
  _$BookModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? publisher = freezed,
    Object? publishedDate = freezed,
    Object? pageCount = freezed,
    Object? imageLinks = freezed,
    Object? authors = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      imageLinks: freezed == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as BookThumbnailModel?,
      authors: freezed == authors
          ? _value.authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookThumbnailModelCopyWith<$Res>? get imageLinks {
    if (_value.imageLinks == null) {
      return null;
    }

    return $BookThumbnailModelCopyWith<$Res>(_value.imageLinks!, (value) {
      return _then(_value.copyWith(imageLinks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookModelImplCopyWith<$Res>
    implements $BookModelCopyWith<$Res> {
  factory _$$BookModelImplCopyWith(
          _$BookModelImpl value, $Res Function(_$BookModelImpl) then) =
      __$$BookModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? title,
      String? description,
      String? publisher,
      String? publishedDate,
      int? pageCount,
      BookThumbnailModel? imageLinks,
      List<String>? authors});

  @override
  $BookThumbnailModelCopyWith<$Res>? get imageLinks;
}

/// @nodoc
class __$$BookModelImplCopyWithImpl<$Res>
    extends _$BookModelCopyWithImpl<$Res, _$BookModelImpl>
    implements _$$BookModelImplCopyWith<$Res> {
  __$$BookModelImplCopyWithImpl(
      _$BookModelImpl _value, $Res Function(_$BookModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? publisher = freezed,
    Object? publishedDate = freezed,
    Object? pageCount = freezed,
    Object? imageLinks = freezed,
    Object? authors = freezed,
  }) {
    return _then(_$BookModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      publisher: freezed == publisher
          ? _value.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String?,
      publishedDate: freezed == publishedDate
          ? _value.publishedDate
          : publishedDate // ignore: cast_nullable_to_non_nullable
              as String?,
      pageCount: freezed == pageCount
          ? _value.pageCount
          : pageCount // ignore: cast_nullable_to_non_nullable
              as int?,
      imageLinks: freezed == imageLinks
          ? _value.imageLinks
          : imageLinks // ignore: cast_nullable_to_non_nullable
              as BookThumbnailModel?,
      authors: freezed == authors
          ? _value._authors
          : authors // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookModelImpl implements _BookModel {
  _$BookModelImpl(
      {this.id,
      this.title,
      this.description,
      this.publisher,
      this.publishedDate,
      this.pageCount,
      this.imageLinks,
      final List<String>? authors})
      : _authors = authors;

  factory _$BookModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookModelImplFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? publisher;
  @override
  final String? publishedDate;
  @override
  final int? pageCount;
  @override
  final BookThumbnailModel? imageLinks;
  final List<String>? _authors;
  @override
  List<String>? get authors {
    final value = _authors;
    if (value == null) return null;
    if (_authors is EqualUnmodifiableListView) return _authors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BookModel(id: $id, title: $title, description: $description, publisher: $publisher, publishedDate: $publishedDate, pageCount: $pageCount, imageLinks: $imageLinks, authors: $authors)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.publishedDate, publishedDate) ||
                other.publishedDate == publishedDate) &&
            (identical(other.pageCount, pageCount) ||
                other.pageCount == pageCount) &&
            (identical(other.imageLinks, imageLinks) ||
                other.imageLinks == imageLinks) &&
            const DeepCollectionEquality().equals(other._authors, _authors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      publisher,
      publishedDate,
      pageCount,
      imageLinks,
      const DeepCollectionEquality().hash(_authors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      __$$BookModelImplCopyWithImpl<_$BookModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookModelImplToJson(
      this,
    );
  }
}

abstract class _BookModel implements BookModel {
  factory _BookModel(
      {final String? id,
      final String? title,
      final String? description,
      final String? publisher,
      final String? publishedDate,
      final int? pageCount,
      final BookThumbnailModel? imageLinks,
      final List<String>? authors}) = _$BookModelImpl;

  factory _BookModel.fromJson(Map<String, dynamic> json) =
      _$BookModelImpl.fromJson;

  @override
  String? get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  String? get publisher;
  @override
  String? get publishedDate;
  @override
  int? get pageCount;
  @override
  BookThumbnailModel? get imageLinks;
  @override
  List<String>? get authors;
  @override
  @JsonKey(ignore: true)
  _$$BookModelImplCopyWith<_$BookModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookThumbnailModel _$BookThumbnailModelFromJson(Map<String, dynamic> json) {
  return _BookThumbnailModel.fromJson(json);
}

/// @nodoc
mixin _$BookThumbnailModel {
  String? get smallThumbnail => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookThumbnailModelCopyWith<BookThumbnailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookThumbnailModelCopyWith<$Res> {
  factory $BookThumbnailModelCopyWith(
          BookThumbnailModel value, $Res Function(BookThumbnailModel) then) =
      _$BookThumbnailModelCopyWithImpl<$Res, BookThumbnailModel>;
  @useResult
  $Res call({String? smallThumbnail, String? thumbnail});
}

/// @nodoc
class _$BookThumbnailModelCopyWithImpl<$Res, $Val extends BookThumbnailModel>
    implements $BookThumbnailModelCopyWith<$Res> {
  _$BookThumbnailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      smallThumbnail: freezed == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookThumbnailModelImplCopyWith<$Res>
    implements $BookThumbnailModelCopyWith<$Res> {
  factory _$$BookThumbnailModelImplCopyWith(_$BookThumbnailModelImpl value,
          $Res Function(_$BookThumbnailModelImpl) then) =
      __$$BookThumbnailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? smallThumbnail, String? thumbnail});
}

/// @nodoc
class __$$BookThumbnailModelImplCopyWithImpl<$Res>
    extends _$BookThumbnailModelCopyWithImpl<$Res, _$BookThumbnailModelImpl>
    implements _$$BookThumbnailModelImplCopyWith<$Res> {
  __$$BookThumbnailModelImplCopyWithImpl(_$BookThumbnailModelImpl _value,
      $Res Function(_$BookThumbnailModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? smallThumbnail = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$BookThumbnailModelImpl(
      smallThumbnail: freezed == smallThumbnail
          ? _value.smallThumbnail
          : smallThumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookThumbnailModelImpl implements _BookThumbnailModel {
  _$BookThumbnailModelImpl({this.smallThumbnail, this.thumbnail});

  factory _$BookThumbnailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookThumbnailModelImplFromJson(json);

  @override
  final String? smallThumbnail;
  @override
  final String? thumbnail;

  @override
  String toString() {
    return 'BookThumbnailModel(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookThumbnailModelImpl &&
            (identical(other.smallThumbnail, smallThumbnail) ||
                other.smallThumbnail == smallThumbnail) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, smallThumbnail, thumbnail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookThumbnailModelImplCopyWith<_$BookThumbnailModelImpl> get copyWith =>
      __$$BookThumbnailModelImplCopyWithImpl<_$BookThumbnailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookThumbnailModelImplToJson(
      this,
    );
  }
}

abstract class _BookThumbnailModel implements BookThumbnailModel {
  factory _BookThumbnailModel(
      {final String? smallThumbnail,
      final String? thumbnail}) = _$BookThumbnailModelImpl;

  factory _BookThumbnailModel.fromJson(Map<String, dynamic> json) =
      _$BookThumbnailModelImpl.fromJson;

  @override
  String? get smallThumbnail;
  @override
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$BookThumbnailModelImplCopyWith<_$BookThumbnailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
