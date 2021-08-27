import 'package:fisku_app/materi/daftar_materi.dart';
import 'package:fisku_app/models/materi_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatefulWidget {
  List<ModelMateri> foundMateri;
  SearchBar({Key? key, required this.foundMateri}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
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
    return Container(
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
    );
  }
}
