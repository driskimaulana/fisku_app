import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 28.0,
      ),
      height: 40.0,
      child: TextFormField(
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
