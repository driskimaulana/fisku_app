import 'package:fisku_app/models/materi_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hexcolor/hexcolor.dart';

class MateriCard extends StatefulWidget {
  final ModelMateri dataMateri;
  const MateriCard({Key? key, required this.dataMateri}) : super(key: key);

  @override
  _MateriCardState createState() => _MateriCardState();
}

class _MateriCardState extends State<MateriCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: HexColor('#FFDFB0'),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.dataMateri.judul,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(widget.dataMateri.desc),
                ],
              ),
            ),
            Expanded(
              // flex: ,
              child: IconButton(
                onPressed: () {},
                icon: FaIcon(FontAwesomeIcons.star),
              ),
            )
          ],
        ),
      ),
    );
  }
}
