import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../app/api/model/book_model.dart';
import '../../../app/api/request/api_search_books.dart';
import '../../../app/database/shared_preferences_db.dart';
import '../../../app/rules/app_rules.dart';

final homeProvider = ChangeNotifierProvider((ref) => HomeProvider());

class HomeProvider extends ChangeNotifier {
  final searchController = TextEditingController();
  late final BuildContext context;
  List<BookModel>? books;
  bool isLoading = false;

  void init(BuildContext newContext) {
    context = newContext;
  }

  void clearSearch() {
    searchController.clear();
    books = null;
    FocusScope.of(context).unfocus();
    notifyListeners();
  }

  Future<void> addFavorite(BookModel book) async {
    if (!isFavorite(book)) {
      final result = await SharedPreferencesDb.setFavoriteBook(book);
      if (result) {
        const snackBar = SnackBar(
          content: Text('Kitap favorilere eklendi'),
        );
        showSnackbar(snackBar);
      }
      notifyListeners();
    }
  }

  Future<void> removeFavorite(BookModel book) async {
    if (isFavorite(book)) {
      final result =
          await SharedPreferencesDb.removeFavoriteBook(book.id ?? '');
      if (result) {
        const snackBar = SnackBar(
          content: Text('Kitap favorilerden kaldırıldı'),
        );
        showSnackbar(snackBar);
      }
      notifyListeners();
    }
  }

  void showSnackbar(SnackBar snackbar) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(snackbar);
    }
  }

  bool isFavorite(BookModel book) {
    return SharedPreferencesDb.isFavoriteBook(book.id ?? '');
  }

  List<BookModel> get getFavorites => SharedPreferencesDb.getFavoriteBooks();

  Future<void> searchBooks() async {
    final text = searchController.text;
    if (!AppRules.isSearchFieldRules(text)) {
      const snackBar = SnackBar(
        content: Text("Lütfen geçerli bir arama yapınız"),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    } else {
      FocusScope.of(context).unfocus();
      isLoading = true;
      notifyListeners();
      final provider = ProviderContainer();
      provider.read(searchBooksProvider(text)).then((value) {
        books = value;
        isLoading = false;
        notifyListeners();
      }).catchError(
        (e) {
          isLoading = false;
          notifyListeners();
          return null;
        },
      );
    }
  }
}
