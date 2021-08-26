import 'package:fisku_app/screens/widgets/inherited_widgets/inherit_materi.dart';
import 'package:flutter/material.dart';

class PelajaranPage extends StatelessWidget {
  const PelajaranPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: InheritedMateri.of(context)!.dataMateri.materi.length,
        itemBuilder: (context, index) {
          return Image.asset(
              'assets/images/materi/${InheritedMateri.of(context)!.dataMateri.materi[index]}');
        });
  }
}
