import 'package:flutter/material.dart';
import 'flutterViz_bottom_navigationBar_model.dart';

// ignore: must_be_immutable, use_key_in_widget_constructors
class ChatListScreen extends StatelessWidget {
  List<FlutterVizBottomNavigationBarModel> flutterVizBottomNavigationBarItems =
      [
    FlutterVizBottomNavigationBarModel(icon: Icons.search, label: "Discover"),
    FlutterVizBottomNavigationBarModel(icon: Icons.sms, label: "Chats"),
    FlutterVizBottomNavigationBarModel(icon: Icons.article, label: "Classes"),
    FlutterVizBottomNavigationBarModel(
        icon: Icons.attach_money, label: "Payments"),
    FlutterVizBottomNavigationBarModel(
        icon: Icons.account_circle, label: "Profile")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2e5e7),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: flutterVizBottomNavigationBarItems
      //       .map((FlutterVizBottomNavigationBarModel item) {
      //     return BottomNavigationBarItem(
      //       icon: Icon(item.icon),
      //       label: item.label,
      //     );
      //   }).toList(),
      //   backgroundColor: const Color(0xffffffff),
      //   currentIndex: 1,
      //   elevation: 8,
      //   iconSize: 24,
      //   selectedItemColor: const Color(0xff3a57e8),
      //   unselectedItemColor: const Color(0xff9e9e9e),
      //   selectedFontSize: 14,
      //   unselectedFontSize: 14,
      //   showSelectedLabels: true,
      //   showUnselectedLabels: false,
      //   onTap: (value) {},
      // ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.1,
                    decoration: BoxDecoration(
                      color: const Color(0xff3a57e8),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                  ),
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 24, 16, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  "Chats",
                                  textAlign: TextAlign.left,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 22,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            flex: 1,
            child: ListView(
              scrollDirection: Axis.vertical,
              padding: const EdgeInsets.all(0),
              shrinkWrap: false,
              physics: const ScrollPhysics(),
              children: [
                const ListTile(
                  tileColor: Color(0x1f000000),
                  title: Text(
                    "Name of Tutor 01",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  subtitle: Text(
                    "Message",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  dense: false,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  selected: false,
                  selectedTileColor: Color(0x42000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
                  ),
                  leading:
                      Icon(Icons.person, color: Color(0xff212435), size: 24),
                  trailing:
                      Icon(Icons.push_pin, color: Color(0xff212435), size: 24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chat),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                    IconButton(
                      icon: const Icon(Icons.push_pin),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                  ],
                ),
                const Divider(
                  color: Color(0xff808080),
                  height: 16,
                  thickness: 0,
                  indent: 0,
                  endIndent: 0,
                ),
                const ListTile(
                  tileColor: Color(0x1f000000),
                  title: Text(
                    "Name of Tutor 02",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  subtitle: Text(
                    "Message",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  dense: false,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  selected: false,
                  selectedTileColor: Color(0x42000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
                  ),
                  leading:
                      Icon(Icons.person, color: Color(0xff212435), size: 24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chat),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                    IconButton(
                      icon: const Icon(Icons.push_pin),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                  ],
                ),
                const Divider(
                  color: Color(0xff808080),
                  height: 16,
                  thickness: 0,
                  indent: 0,
                  endIndent: 0,
                ),
                const ListTile(
                  tileColor: Color(0x1f000000),
                  title: Text(
                    "Name of Tutor 03",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  subtitle: Text(
                    "Message",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      color: Color(0xff000000),
                    ),
                    textAlign: TextAlign.start,
                  ),
                  dense: false,
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                  selected: false,
                  selectedTileColor: Color(0x42000000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                    side: BorderSide(color: Color(0x4d9e9e9e), width: 1),
                  ),
                  leading:
                      Icon(Icons.person, color: Color(0xff212435), size: 24),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.chat),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                    IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                    IconButton(
                      icon: const Icon(Icons.push_pin),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                    IconButton(
                      icon: const Icon(Icons.more_horiz),
                      onPressed: () {},
                      color: const Color(0xff212435),
                      iconSize: 24,
                    ),
                  ],
                ),
                const Divider(
                  color: Color(0xff808080),
                  height: 16,
                  thickness: 0,
                  indent: 0,
                  endIndent: 0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
