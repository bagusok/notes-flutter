import 'package:flutter/material.dart';
import 'package:submission/components/note_list.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(color: Color(0xFF220B57)),
      padding: const EdgeInsets.fromLTRB(24, 30, 24, 0),
      alignment: Alignment.topLeft,
      width: double.maxFinite,
      child: ListView(scrollDirection: Axis.vertical, children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset("images/user.png", width: 50, height: 50),
                Container(
                  margin: const EdgeInsets.only(left: 12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hi, John Doe",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        padding: const EdgeInsets.all(0),
                        child: const Text(
                          "Let's explore your notes",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        Container(
          width: double.maxFinite,
          margin: const EdgeInsets.only(top: 30),
          padding: const EdgeInsets.all(20),
          // height: 146,
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.09),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(children: [
            Flexible(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Welcome to Note Notion",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: const Text(
                      "It is a long established fact that a reader will be distracted",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(top: 20),
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xFFF4A402),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Add Note",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ))
                ],
              ),
            ),
            const SizedBox(width: 20),
            Flexible(
              flex: 1,
              child:
                  Image.asset('images/note-icon.png', width: 106, height: 106),
            )
          ]),
        ),
        Container(
          margin: const EdgeInsets.only(top: 30),
          height: 132,
          width: double.maxFinite,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 125,
                  height: 132,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("images/note-icon-kecil.png",
                            width: 45, height: 45),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "19th Sep,2022",
                            style: TextStyle(
                              color: Color(0xFF220B57),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "Review my personal pro..",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 125,
                  height: 132,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("images/note-icon-kecil.png",
                            width: 45, height: 45),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "19th Sep,2022",
                            style: TextStyle(
                              color: Color(0xFF220B57),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "Review my personal pro..",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  width: 125,
                  height: 132,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("images/note-icon-kecil.png",
                            width: 45, height: 45),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "19th Sep,2022",
                            style: TextStyle(
                              color: Color(0xFF220B57),
                              fontSize: 10,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          child: const Text(
                            "Review my personal pro..",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ),
        const NoteList()
      ]),
    ));
  }
}
