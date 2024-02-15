import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';
import '../model/book_model.dart';
import '../../constant/app_constant.dart';

final searchBooksProvider = Provider.family((ref, String query) async {
  try {
    final dio = Dio();
    final response = await dio.get(AppConstant.apiSearchUrl + query);
    if (response.statusCode == 200) {
      final List<dynamic> data = response.data['items'];
      final lastData = data.map((e) {
        Map<String, dynamic> map = e['volumeInfo'];
        map['id'] = e['id'];
        final model = BookModel.fromJson(map);
        return model;
      }).toList();
      return lastData;
    } else {
      return <BookModel>[];
    }
  } catch (e) {
    return null;
  }
});
