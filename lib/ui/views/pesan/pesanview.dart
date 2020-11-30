import 'package:flutter/material.dart';

class PesanView extends StatefulWidget {
  @override
  _PesanViewState createState() => _PesanViewState();
}

class _PesanViewState extends State<PesanView> {
  List<ListMessage> _listMessages = [];
  @override
  void initState() {
    super.initState();

    _listMessages.add(ListMessage(
        event: "event",
        description: "Puasa SUnnah Ayyamul Bidh pada tanggal 01-11-2020"));
    _listMessages.add(ListMessage(
        event: "hari raya",
        description: "Maulid Nabi SAW pada tanggal 29-10-2020"));
    _listMessages.add(ListMessage(
        event: "renungan harian",
        description: "Silahkan lihat renungan hari ini"));
    _listMessages.add(ListMessage(
        event: "1 hari 1 ayat",
        description: "Ayat hari ini: Surat Al-Baqarah ayat 24"));
    _listMessages.add(ListMessage(
        event: "renungan harian",
        description: "Silahkan lihat renungan hari ini"));
    _listMessages.add(ListMessage(
        event: "1 hari 1 ayat",
        description: "Ayat hari ini: Surat Al-Baqarah ayat 24"));
    _listMessages.add(ListMessage(
        event: "event",
        description: "Puasa SUnnah Ayyamul Bidh pada tanggal 01-11-2020"));
    _listMessages.add(ListMessage(
        event: "hari raya",
        description: "Maulid Nabi SAW pada tanggal 29-10-2020"));
    _listMessages.add(ListMessage(
        event: "renungan harian",
        description: "Silahkan lihat renungan hari ini"));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Pesan-',
            style: TextStyle(
              fontFamily: "Gotham-Bold",
              fontWeight: FontWeight.w700,
              fontSize: 15,
              color: Color(0xff9164cc),
            ),
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Container(
          child: ListView.builder(
            itemCount: _listMessages.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              ListMessage item = _listMessages[index];
              return pesanList(item.event, item.description);
            },
          ),
        ),
      ),
    );
  }
}

Widget pesanList(String event, String description) {
  return Container(
    child: Card(
      child: Container(
        padding: EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              event,
              style: TextStyle(
                  fontFamily: "Gotham-Medium",
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: Color(0xff454d66)),
            ),
            SizedBox(height: 7),
            Text(
              description,
              style: TextStyle(
                  fontFamily: "Gotham-Medium",
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Color(0xff454d66)),
            ),
          ],
        ),
      ),
    ),
  );
}

class ListMessage {
  final String event;
  final String description;

  ListMessage({this.event, this.description});
}
