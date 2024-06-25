import 'package:hive_flutter/hive_flutter.dart';
part 'noteModel.g.dart';

@HiveType(typeId: 0)
class NoteModel {
  @HiveField(1)
  String? title;
  @HiveField(2)
  String? content;
  @HiveField(3)
  List<String>? checkList;
  @HiveField(4)
  List<bool>? isCheckedList;
  @HiveField(5)
  int? id;

  NoteModel(
      {required this.title,
      this.id,
      this.checkList,
      this.content,
      this.isCheckedList}) {
    id = DateTime.now().millisecondsSinceEpoch;
  }
}
