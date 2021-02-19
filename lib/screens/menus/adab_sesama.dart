import 'package:adab_edu/text/text_adab.dart';
import 'package:flutter/material.dart';

class AdabSesama extends StatefulWidget {
  @override
  _AdabSesamaState createState() => _AdabSesamaState();
}

class _AdabSesamaState extends State<AdabSesama> {
  List<String> adabSesama = [
    "Saling Membantu",
    "Mengucapkan Salam",
    "Berjabat Tangan",
    "Saling Mengingatkan",
    "Tidak Mencela Org Lain",
    "Mengajak Hal Kebaikan",
    "Saling Berbagi"
  ];
  List<String> adabArti = [
    "Mendapat Pahala Dengan Membantu",
    "Mendapat Pahala Dengan Membantu",
    "Mendapat Pahala Dengan Membantu",
    "Mendapat Pahala Dengan Membantu",
    "Mendapat Pahala Dengan Membantu",
    "Mendapat Pahala Dengan Membantu",
    "Mendapat Pahala Dengan Membantu",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: adabSesama.length,
          itemBuilder: (BuildContext context, int index) {
            final title = adabSesama[index].toString();
            final subtitle = adabArti[index].toString();
            return Container(
              child: Padding(
                padding: EdgeInsets.all(12.5),
                child: GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: MediaQuery
                            .of(context)
                            .size
                            .width - 000,
                        padding: const EdgeInsets.all(12.5),
                        child: ListItem(
                            title,
                            subtitle),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: <Color>[
                              Color(0xff283048),
                              Color(0xff859398),
                            ]),
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }

  ListItem(String title, String subTitle) {
    return new Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            title,
            style:bigHeaderTextStyle,
            textAlign: TextAlign.end,
          ),
          Text(
            subTitle,
            style:descTextStyle,
            textAlign: TextAlign.end,
          )
        ],
      ),
    );
  }
}
