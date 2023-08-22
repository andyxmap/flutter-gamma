// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:isar/isar.dart';

part 'solicitud.g.dart';

@collection
class Solicitud {
  Id? id;

  String? serie;

  DateTime? createdAt;

  bool? isClose;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'serie': serie,
      'createdAt': createdAt?.millisecondsSinceEpoch,
      'isClose': isClose,
    };
  }

}
