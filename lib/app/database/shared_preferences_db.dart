import 'dart:convert';
import 'package:flutter/material.dart';
import '../api/model/book_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDb {
  static late final SharedPreferences prefs;
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    prefs = await SharedPreferences.getInstance();
  }

  static Future<bool> setFavoriteBook(BookModel model) async {
    try {
      await prefs.setString(model.id ?? '', jsonEncode(model.toJson()));
      return true;
    } catch (e) {
      return false;
    }
  }

  static Future<bool> removeFavoriteBook(String id) async {
    try {
      await prefs.remove(id);
      return true;
    } catch (e) {
      return false;
    }
  }

  static List<BookModel> getFavoriteBooks() {
    final keys = prefs.getKeys();
    final List<BookModel> books = [];
    for (var key in keys) {
      final book = prefs.getString(key);
      if (book != null) {
        books.add(BookModel.fromJson(jsonDecode(book)));
      }
    }
    return books;
  }

  static bool isFavoriteBook(String id) {
    return prefs.getString(id) != null;
  }
}
