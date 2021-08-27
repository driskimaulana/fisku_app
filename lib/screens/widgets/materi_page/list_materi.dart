import 'package:fisku_app/materi/daftar_materi.dart';
import 'package:fisku_app/models/materi_model.dart';
import 'package:fisku_app/screens/widgets/materi_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListMateri extends StatefulWidget {
  List<ModelMateri> foundMateri;

  ListMateri({required this.foundMateri});

  @override
  _ListMateriState createState() => _ListMateriState();
}

class _ListMateriState extends State<ListMateri> {
  // filtering function
  void _runFilter(String enteredKeyword) {
    List<ModelMateri> results = [];
    if (enteredKeyword.isEmpty) {
      results = demoData;
    } else {
      results = demoData
          .where((i) =>
              i.judul.toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    // refresh UI
    setState(() {
      widget.foundMateri = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 28.0,
          ),
          height: 40.0,
          child: TextFormField(
            onChanged: (value) => _runFilter(value),
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () {
                  print('gaskeun!');
                  FocusScope.of(context).unfocus();
                },
                icon: FaIcon(
                  FontAwesomeIcons.search,
                ),
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 0.0,
                horizontal: 20.0,
              ),
              filled: true,
              fillColor: Colors.white,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
        widget.foundMateri.length > 0
            ? ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                // scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemCount: widget.foundMateri.length,
                itemBuilder: (context, index) => MateriCard(
                  dataMateri: widget.foundMateri[index],
                ),
              )
            : SizedBox(
                height: 20.0,
                child: Text('Materi tidak ditemukan, coba kata kunci lain.'),
              ),
      ],
    );
  }
}
