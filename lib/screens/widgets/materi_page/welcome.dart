import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AspectRatio(
        aspectRatio: 3 / 1,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: HexColor('#E4D7FF'),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 20.0,
                  ),
                  child: Text(
                    'Selamat Datang di FisKu, Dreamer',
                    style: TextStyle(color: HexColor('#4D269B'), fontSize: 16),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.asset(
                        'assets/images/materi_page/dreamer.png',
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
