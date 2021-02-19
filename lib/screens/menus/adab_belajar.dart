import 'package:adab_edu/text/text_adab.dart';
import 'package:flutter/material.dart';

class AdabBelajar extends StatefulWidget {
  @override
  _AdabBelajarState createState() => _AdabBelajarState();
}

class _AdabBelajarState extends State<AdabBelajar> {
  List<String> adabBelajar = [
    "Berdoa Sebelum Belajar",
    "Berdoa Sesudah Belajar",
    "Memperhatikan Guru Yang Sedang Menjelaskan",
    "Mengulang / Membaca Buku Pelajaran",
    "Ikhlas Dalam Belajar / Menuntut Ilmu",
    "Tidak Berbicara Ketika Guru Menerangkan",
    "Mengucap Terima Kasih Kepada Guru Setelah Belajar",
  ];
  List<String> adabArtiBelajar = [
    "Adab Menuntun Ilmu",
    "Adab Menuntun Ilmu",
    "Adab Menuntun Ilmu",
    "Adab Menuntun Ilmu",
    "Adab Menuntun Ilmu",
    "Adab Menuntun Ilmu",
    "Adab Menuntun Ilmu",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: adabBelajar.length,
          itemBuilder: (BuildContext context, int index) {
            final title = adabBelajar[index].toString();
            final subtitle = adabArtiBelajar[index].toString();
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
            style: bigHeaderBelajarTextStyle,
            textAlign: TextAlign.end,
          ),
          Text(
            subTitle,
            style: descBelajarStyle,
            textAlign: TextAlign.end,
          )
        ],
      ),
    );
  }
}
