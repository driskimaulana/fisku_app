import 'package:fisku_app/models/materi_model.dart';
import 'package:flutter/material.dart';

class InheritedMateri extends InheritedWidget {
  final ModelMateri dataMateri;

  InheritedMateri({Key? key, required this.child, required this.dataMateri})
      : super(key: key, child: child);

  final Widget child;

  static InheritedMateri? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<InheritedMateri>();
  }

  @override
  bool updateShouldNotify(InheritedMateri oldWidget) {
    return true;
  }
}
