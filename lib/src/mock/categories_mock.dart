import 'package:today_i_learned/src/core/core.dart';

class CategoriesMock {
  static const List<String> categoryNames = [
    'Flutter',
    'Self-Management',
    'Mental-Health',
    'General Knowledge',
    'Science',
  ];

  static Future createAll(CategoryRepository categoryRepository) async {
    for (var categoryName in categoryNames) {
      await categoryRepository.create(CategoryModel(uid: '', name: categoryName));
    }
  }
}
