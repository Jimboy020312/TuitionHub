import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tuition_hub/chat_list_screen.dart';
import 'package:tuition_hub/classes_list_screen.dart';
import 'package:tuition_hub/payments_screen.dart';
import 'package:tuition_hub/profile_screen.dart';
import 'flutterviz_bottom_navigationbar_model.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _DiscoverScreenState createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen> {
  int _currentIndex = 0;

  List<FlutterVizBottomNavigationBarModel> flutterVizBottomNavigationBarItems =
      [
    FlutterVizBottomNavigationBarModel(icon: Icons.search, label: "Discover"),
    FlutterVizBottomNavigationBarModel(icon: Icons.sms, label: "Chats"),
    FlutterVizBottomNavigationBarModel(icon: Icons.article, label: "Classes"),
    FlutterVizBottomNavigationBarModel(
        icon: Icons.attach_money, label: "Payments"),
    FlutterVizBottomNavigationBarModel(
        icon: Icons.account_circle, label: "Profile"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe2e5e7),
      bottomNavigationBar: BottomNavigationBar(
        items: flutterVizBottomNavigationBarItems
            .map((FlutterVizBottomNavigationBarModel item) {
          return BottomNavigationBarItem(
            icon: Icon(item.icon),
            label: item.label,
          );
        }).toList(),
        backgroundColor: const Color(0xffffffff),
        currentIndex: _currentIndex,
        elevation: 8,
        iconSize: 24,
        selectedItemColor: const Color(0xff3a57e8),
        unselectedItemColor: const Color(0xff9e9e9e),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: [
          // Discover Screen Content
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Container(
                    margin: const EdgeInsets.all(0),
                    padding: const EdgeInsets.all(0),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: const Color(0xff3a57e8),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.zero,
                      border:
                          Border.all(color: const Color(0x4d9e9e9e), width: 1),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
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
                                  "Tuition",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 22,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                                Text(
                                  "Hub",
                                  textAlign: TextAlign.start,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontStyle: FontStyle.normal,
                                    fontSize: 22,
                                    color: Color(0xff716e6e),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                        child: TextField(
                          controller: TextEditingController(),
                          obscureText: false,
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color(0xffffffff),
                          ),
                          decoration: InputDecoration(
                            disabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: const BorderSide(
                                  color: Color(0x00ffffff), width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: const BorderSide(
                                  color: Color(0x00ffffff), width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              borderSide: const BorderSide(
                                  color: Color(0x00ffffff), width: 1),
                            ),
                            hintText: "Find Tutor...",
                            hintStyle: const TextStyle(
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0x55ffffff),
                            ),
                            filled: true,
                            fillColor: const Color(0xff4c67ee),
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 8, horizontal: 12),
                            prefixIcon: const Icon(Icons.search,
                                color: Color(0x55ffffff), size: 20),
                          ),
                        ),
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
                        "Subject Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      subtitle: Text(
                        "Location",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
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
                      leading: Icon(Icons.account_box,
                          color: Color(0xff212435), size: 40),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              flex: 1,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  RatingBar.builder(
                                    initialRating: 3.5,
                                    unratedColor: const Color(0xff9e9e9e),
                                    itemBuilder: (context, index) => const Icon(
                                        Icons.star,
                                        color: Color(0xffffc107)),
                                    itemCount: 4,
                                    itemSize: 25,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    onRatingUpdate: (value) {},
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.description),
                                        onPressed: () {},
                                        color: const Color(0xff212435),
                                        iconSize: 24,
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.favorite),
                                        onPressed: () {},
                                        color: const Color(0xff212435),
                                        iconSize: 24,
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.thumb_up),
                                        onPressed: () {},
                                        color: const Color(0xff212435),
                                        iconSize: 24,
                                      ),
                                      IconButton(
                                        icon: const Icon(Icons.thumb_down),
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
                                      "Subject Name",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FontStyle.normal,
                                        fontSize: 14,
                                        color: Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                    subtitle: Text(
                                      "Location",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontStyle: FontStyle.italic,
                                        fontSize: 14,
                                        color: Color(0xff000000),
                                      ),
                                      textAlign: TextAlign.start,
                                    ),
                                    dense: false,
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 0, horizontal: 16),
                                    selected: false,
                                    selectedTileColor: Color(0x42000000),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.zero,
                                      side: BorderSide(
                                          color: Color(0x4d9e9e9e), width: 1),
                                    ),
                                    leading: Icon(Icons.account_box,
                                        color: Color(0xff212435), size: 40),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: RatingBar.builder(
                        initialRating: 2.5,
                        unratedColor: const Color(0xff9e9e9e),
                        itemBuilder: (context, index) =>
                            const Icon(Icons.star, color: Color(0xffffc107)),
                        itemCount: 4,
                        itemSize: 25,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        onRatingUpdate: (value) {},
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.description),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.favorite),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.thumb_up),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.thumb_down),
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
                        "Subject Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      subtitle: Text(
                        "Location",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
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
                      leading: Icon(Icons.account_box,
                          color: Color(0xff212435), size: 40),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: RatingBar.builder(
                        initialRating: 4,
                        unratedColor: const Color(0xff9e9e9e),
                        itemBuilder: (context, index) =>
                            const Icon(Icons.star, color: Color(0xffffc107)),
                        itemCount: 4,
                        itemSize: 25,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        onRatingUpdate: (value) {},
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.description),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.favorite),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.thumb_up),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.thumb_down),
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
                        "Subject Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      subtitle: Text(
                        "Location",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
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
                      leading: Icon(Icons.account_box,
                          color: Color(0xff212435), size: 40),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: RatingBar.builder(
                        initialRating: 2,
                        unratedColor: const Color(0xff9e9e9e),
                        itemBuilder: (context, index) =>
                            const Icon(Icons.star, color: Color(0xffffc107)),
                        itemCount: 4,
                        itemSize: 25,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        onRatingUpdate: (value) {},
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.description),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.favorite),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.thumb_up),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.thumb_down),
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
                        "Subject Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Color(0xff000000),
                        ),
                        textAlign: TextAlign.start,
                      ),
                      subtitle: Text(
                        "Location",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.italic,
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
                      leading: Icon(Icons.account_box,
                          color: Color(0xff212435), size: 40),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: RatingBar.builder(
                        initialRating: 3,
                        unratedColor: const Color(0xff9e9e9e),
                        itemBuilder: (context, index) =>
                            const Icon(Icons.star, color: Color(0xffffc107)),
                        itemCount: 4,
                        itemSize: 25,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        onRatingUpdate: (value) {},
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.description),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.favorite),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.thumb_up),
                          onPressed: () {},
                          color: const Color(0xff212435),
                          iconSize: 24,
                        ),
                        IconButton(
                          icon: const Icon(Icons.thumb_down),
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
          ChatListScreen(),
          ClassesListScreen(),
          PaymentsScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }
}
