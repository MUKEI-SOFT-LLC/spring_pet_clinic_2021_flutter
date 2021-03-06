import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PetType {
  late int id;
  late String name;
  PetType.fromJson(json) {
    id = json['id'] as int;
    name = json['name'] as String;
  }
  PetType.withDefaults() {
    id = 0;
    name = 'unknown';
  }

  String get emoji {
    String emoji = '🐾';
    switch (id) {
      case 1 :
        emoji = '🐈';
        break;
      case 2:
        emoji = '🦮';
        break;
      case 3:
        emoji = '🦎';
        break;
      case 4:
        emoji = '🐍';
        break;
      case 5:
        emoji = '🦜';
        break;
      case 6:
        emoji = '🐹';
    }
    return emoji;
   }

  Map<String, dynamic> toJson() => {
    'id': id,
    'name' : name
  };

  String get emojiAndName => '${emoji} ${name}';

  static final _singleton = PetType.withDefaults();
  static PetType get unknown => _singleton;
}
