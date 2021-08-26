import 'package:fisku_app/materi/daftar_materi.dart';
import 'package:fisku_app/screens/widgets/materi_card.dart';
import 'package:flutter/material.dart';

class ListMateri extends StatefulWidget {
  @override
  _ListMateriState createState() => _ListMateriState();
}

class _ListMateriState extends State<ListMateri> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: NeverScrollableScrollPhysics(),
      // scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: demoData.length,
      itemBuilder: (context, index) => MateriCard(
        dataMateri: demoData[index],
      ),
    );
  }
}
