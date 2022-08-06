// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:client_app/presentation/constants/enums.dart';

class MagasinCategory {
  final MagasinType magasinType;
  final String imagepath;
  final String title;
  List<MagasinSubCategory>? subcategory;
  MagasinCategory({
    required this.magasinType,
    required this.imagepath,
    required this.title,
    required this.subcategory,
  });
}

class MagasinSubCategory {
  final Subtypes subtypes;
  final String title;
  final String imagepath;
  MagasinSubCategory({
    required this.subtypes,
    required this.title,
    required this.imagepath,
  });
}
