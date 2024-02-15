class AppRules {
  static bool isSearchFieldRules(String? text) {
    return text != null && text.trim().isNotEmpty && text.length < 500;
  }
}
