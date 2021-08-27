import 'package:fisku_app/materi/daftar_materi.dart';
import 'package:fisku_app/models/materi_model.dart';
import 'package:fisku_app/screens/widgets/materi_page/list_materi.dart';
import 'package:fisku_app/screens/widgets/materi_page/search_bar.dart';
import 'package:fisku_app/screens/widgets/materi_page/welcome.dart';
import 'package:flutter/material.dart';

class MateriPage extends StatefulWidget {
  const MateriPage({Key? key}) : super(key: key);

  @override
  _MateriPageState createState() => _MateriPageState();
}

class _MateriPageState extends State<MateriPage> {
  // List untuk menyimpan hasil search, pertama kosong
  List<ModelMateri> foundMateri = [];

// init function untuk mengisi nilai awal dari list found materi menjadi semua
  @override
  void initState() {
    foundMateri = demoData;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: <Widget>[
              Welcome(),
              // SearchBar(
              //   foundMateri: foundMateri,
              // ),
              ListMateri(
                foundMateri: foundMateri,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
