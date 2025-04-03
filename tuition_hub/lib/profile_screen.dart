// ignore_for_file: must_be_immutable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'flutterViz_bottom_navigationBar_model.dart';

class ProfileScreen extends StatelessWidget {
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
      //   currentIndex: 4,
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
                                  "Profile",
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
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Container(
              height: 120,
              width: 120,
              clipBehavior: Clip.antiAlias,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.network("https://picsum.photos/250?image=9",
                  fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 30, 5, 0),
            child: TextField(
              controller: TextEditingController(text: "Student Name"),
              obscureText: false,
              textAlign: TextAlign.left,
              maxLines: 1,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                labelText: "Full Name",
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                filled: false,
                fillColor: const Color(0xfff2f2f3),
                isDense: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                prefixIcon: const Icon(Icons.person,
                    color: Color(0xff212435), size: 24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
            child: TextField(
              controller: TextEditingController(text: "student@gmail.com"),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                labelText: "Email",
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                hintText: "Enter Text",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                filled: false,
                fillColor: const Color(0xfff2f2f3),
                isDense: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                prefixIcon: const Icon(Icons.alternate_email,
                    color: Color(0xff212435), size: 24),
                suffixIcon:
                    const Icon(Icons.edit, color: Color(0xff212435), size: 24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
            child: Align(
              alignment: const Alignment(0.9, 0.0),
              child: MaterialButton(
                onPressed: () {},
                color: const Color(0xffe2e5e7),
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                padding: const EdgeInsets.all(0),
                textColor: const Color(0xff000000),
                height: MediaQuery.of(context).size.height * 0,
                minWidth: MediaQuery.of(context).size.width * 0,
                child: const Text(
                  "Edit",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 15, 5, 0),
            child: TextField(
              controller: TextEditingController(text: "+6 012 345 6789"),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                labelText: "Phone Number",
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                hintText: "Enter Text",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                filled: false,
                fillColor: const Color(0xfff2f2f3),
                isDense: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                prefixIcon:
                    const Icon(Icons.call, color: Color(0xff212435), size: 24),
                suffixIcon:
                    const Icon(Icons.edit, color: Color(0xff212435), size: 24),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 2, 0, 0),
            child: Align(
              alignment: const Alignment(0.9, 0.0),
              child: MaterialButton(
                onPressed: () {},
                color: const Color(0xffe2e5e7),
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero,
                ),
                padding: const EdgeInsets.all(0),
                textColor: const Color(0xff000000),
                height: MediaQuery.of(context).size.height * 0,
                minWidth: MediaQuery.of(context).size.width * 0,
                child: const Text(
                  "Edit",
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w100,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 13, 5, 0),
            child: TextField(
              controller: TextEditingController(text: "Student"),
              obscureText: false,
              textAlign: TextAlign.start,
              maxLines: 1,
              style: const TextStyle(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 14,
                color: Color(0xff000000),
              ),
              decoration: InputDecoration(
                disabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.0),
                  borderSide:
                      const BorderSide(color: Color(0xff000000), width: 1),
                ),
                labelText: "User",
                labelStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                hintText: "Enter Text",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 14,
                  color: Color(0xff000000),
                ),
                filled: false,
                fillColor: const Color(0xfff2f2f3),
                isDense: false,
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                prefixIcon: const Icon(Icons.info_outline,
                    color: Color(0xff212435), size: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
