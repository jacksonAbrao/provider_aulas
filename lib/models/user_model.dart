// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:provider_aulas/models/base_model.dart';

class UserModel extends BaseModel {
  final String name;
  final String pathAvatar;
  final String dataNascimento;
  UserModel({
    required this.name,
    required this.pathAvatar,
    required this.dataNascimento,
  });
}
