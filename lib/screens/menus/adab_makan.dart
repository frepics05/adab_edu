import 'package:adab_edu/text/text_adab.dart';
import 'package:flutter/material.dart';

class AdabMakan extends StatefulWidget {
  @override
  _AdabMakanState createState() => _AdabMakanState();
}

class _AdabMakanState extends State<AdabMakan> {
  List<String> adabMakan = [
    "Menggunakan Tangan Kanan",
    "Membaca Basmallah",
    "Mengambil Makanan Terdekat",
    "Makan & Minum ( Duduk )",
    "Mengucap Alhamdulillah Setelah Makan",
    "Tidak Makan Sambil Berjalan",
    "Makan Secukupny & Tidak Berlebihan ( Hingga Kekenyangan )"
  ];

  List<String> adabArtiMakan = [
    "Adab Makan & Minum",
    "Adab Makan & Minum",
    "Adab Makan & Minum",
    "Adab Makan & Minum",
    "Adab Makan & Minum",
    "Adab Makan & Minum",
    "Adab Makan & Minum"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: adabMakan.length,
          itemBuilder: (BuildContext context, int index) {
            final title = adabMakan[index].toString();
            final subtitle = adabArtiMakan[index].toString();
            return Container(
              child: Padding(
                padding: EdgeInsets.all(12.5),
                child: GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width - 000,
                        padding: const EdgeInsets.all(12.5),
                        child: ListItem(title, subtitle),
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
            style: bigHeaderMakan,
            textAlign: TextAlign.end,
          ),
          Text(
            subTitle,
            style: descMakanStyle,
            textAlign: TextAlign.end,
          )
        ],
      ),
    );
  }
}
