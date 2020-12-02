import 'package:flutter/material.dart';
import 'package:sportcred/UI/Picks/PickWidget.dart';
import 'package:sportcred/models/global.dart';

class PicksHistoryPage extends StatefulWidget {
  @override
  _PicksHistoryPageState createState() => _PicksHistoryPageState();
}

class _PicksHistoryPageState extends State<PicksHistoryPage> {
  List<bool> pickValue = new List.filled(30, false);
  String dropdownValue = 'NBA 2019-2020 Playoffs';
  List<List<String>> pickNames = [
    new List.filled(30, '1'),
    new List.filled(30, '2'),
    new List.filled(30, '3'),
    new List.filled(30, '4'),
  ];
  int _choice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundGray,
      appBar: AppBar(
        title: Text(
          "Pick History",
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontFamily: 'Lato',
              fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 20),
          child: Center(
            child: Column(
              children: [
                DropdownButton<String>(
                  dropdownColor: AppTheme.backgroundGray,
                  value: dropdownValue,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.white),
                  underline: Container(
                    height: 2,
                    color: AppTheme.sportGreen,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue = newValue;
                      if (newValue == 'NBA 2019-2020 Playoffs') {
                        _choice = 0;
                      } else if (newValue == 'NBA 2018-2019 Playoffs') {
                        _choice = 1;
                      } else if (newValue == 'NBA 2017-2018 Playoffs') {
                        _choice = 2;
                      } else {
                        _choice = 3;
                      }
                    });
                  },
                  items: <String>[
                    'NBA 2019-2020 Playoffs',
                    'NBA 2018-2019 Playoffs',
                    'NBA 2017-2018 Playoffs',
                    'NBA 2016-2017 Playoffs'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Container(
                      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Center(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "First Round A",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][0],
                                  name2: pickNames[_choice][1],
                                  selected1: pickValue[0],
                                  selected2: pickValue[1],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "First Round B",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][2],
                                  name2: pickNames[_choice][3],
                                  selected1: pickValue[2],
                                  selected2: pickValue[3],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "First Round C",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][4],
                                  name2: pickNames[_choice][5],
                                  selected1: pickValue[4],
                                  selected2: pickValue[5],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "First Round D",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][6],
                                  name2: pickNames[_choice][7],
                                  selected1: pickValue[6],
                                  selected2: pickValue[7],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "First Round E",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][8],
                                  name2: pickNames[_choice][9],
                                  selected1: pickValue[8],
                                  selected2: pickValue[9],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "First Round F",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][10],
                                  name2: pickNames[_choice][11],
                                  selected1: pickValue[10],
                                  selected2: pickValue[11],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "First Round G",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][12],
                                  name2: pickNames[_choice][13],
                                  selected1: pickValue[12],
                                  selected2: pickValue[13],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "First Round H",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][14],
                                  name2: pickNames[_choice][15],
                                  selected1: pickValue[14],
                                  selected2: pickValue[15],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "Conf. Semi Finals A",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][16],
                                  name2: pickNames[_choice][17],
                                  selected1: pickValue[16],
                                  selected2: pickValue[17],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "Conf. Semi Finals B",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][18],
                                  name2: pickNames[_choice][19],
                                  selected1: pickValue[18],
                                  selected2: pickValue[19],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "Conf. Semi Finals C",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][20],
                                  name2: pickNames[_choice][21],
                                  selected1: pickValue[20],
                                  selected2: pickValue[21],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "Conf. Semi Finals D",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][22],
                                  name2: pickNames[_choice][23],
                                  selected1: pickValue[22],
                                  selected2: pickValue[23],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "Conf. Finals A",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][24],
                                  name2: pickNames[_choice][25],
                                  selected1: pickValue[24],
                                  selected2: pickValue[25],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "Conf. Finals B",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][26],
                                  name2: pickNames[_choice][27],
                                  selected1: pickValue[26],
                                  selected2: pickValue[27],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 15.0),
                              child: PickWidget(
                                  bracket: "Finals",
                                  icon1: "assets/images/TorontoRaptors.jpg",
                                  icon2: "assets/images/TorontoRaptors.jpg",
                                  name1: pickNames[_choice][28],
                                  name2: pickNames[_choice][29],
                                  selected1: pickValue[28],
                                  selected2: pickValue[29],
                                  onTap1: () {},
                                  onTap2: () {}),
                            ),
                          ],
                        ),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
