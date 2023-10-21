import 'package:flutter/material.dart';

class NoteList extends StatefulWidget {
  const NoteList({
    super.key,
  });

  @override
  State<NoteList> createState() => _NoteListState();
}

class _NoteListState extends State<NoteList> {
  final List<Map<String, dynamic>> dummyData = [
    {
      'id': 1,
      'title': 'Ini Contoh Notes 1',
      'content': 'Ini adalah contoh notes 1',
      'status': 'reminder',
      'dateline': '2021-08-20',
    },
    {
      'id': 2,
      'title': 'Ini Contoh Notes Expired',
      'content': 'Ini adalah contoh notes 2',
      'status': 'expired',
      'dateline': '2021-08-20',
    },
    {
      'id': 3,
      'title': 'Ini Contoh Notes Complete',
      'content': 'Ini adalah contoh notes 3',
      'status': 'completed',
      'dateline': '2021-08-20',
    },
    {
      'id': 4,
      'title': 'Ini Contoh Notes 4',
      'content': 'Ini adalah contoh notes 4',
      'status': 'reminder',
      'dateline': '2021-08-20',
    },
  ];

  var _items = [];
  var _selectedStatus = 'all';

  @override
  void initState() {
    super.initState();
    setState(() {
      _items = dummyData;
    });
  }

  void filterItems(String status) {
    List<Map<String, dynamic>> items;

    if (status == "all") {
      items = dummyData;
    } else {
      items =
          dummyData.where((element) => element['status'] == status).toList();
    }

    setState(() {
      _items = items;
      _selectedStatus = status;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 30),
          height: 60,
          width: double.maxFinite,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: _selectedStatus == 'all'
                          ? const Color(0xFFF4A402)
                          : Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () => filterItems('all'),
                    child: Text(
                      "All Notes",
                      style: TextStyle(
                        color: _selectedStatus == 'all'
                            ? Colors.white
                            : const Color(0xFF220B57),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: _selectedStatus == 'reminder'
                          ? const Color(0xFFF4A402)
                          : Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () => filterItems('reminder'),
                    child: Text(
                      "Reminder",
                      style: TextStyle(
                        color: _selectedStatus == 'reminder'
                            ? Colors.white
                            : const Color(0xFF220B57),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: _selectedStatus == 'completed'
                          ? const Color(0xFFF4A402)
                          : Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () => filterItems('completed'),
                    child: Text(
                      "Completed",
                      style: TextStyle(
                        color: _selectedStatus == 'completed'
                            ? Colors.white
                            : const Color(0xFF220B57),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: _selectedStatus == 'expired'
                          ? const Color(0xFFF4A402)
                          : Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    onPressed: () => filterItems('expired'),
                    child: Text(
                      "Expired",
                      style: TextStyle(
                        color: _selectedStatus == 'expired'
                            ? Colors.white
                            : const Color(0xFF220B57),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: _items.map((e) {
            return Container(
              margin: const EdgeInsets.only(top: 20),
              padding: const EdgeInsets.all(15),
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          flex: 1,
                          child: Text(
                            e['title'],
                            style: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Flexible(flex: 1, child: Text(e['dateline']))
                    ],
                  ),
                  Container(
                    height: 40,
                    margin: const EdgeInsets.only(top: 10),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Chip(
                            backgroundColor: Colors.grey.withOpacity(0.1),
                            label: const Text(
                              "Interview",
                              style: TextStyle(fontSize: 10),
                            )),
                        Chip(
                            backgroundColor: Colors.grey.withOpacity(0.1),
                            label: const Text(
                              "Ui Ux Design",
                              style: TextStyle(fontSize: 10),
                            )),
                      ],
                    ),
                  )
                ],
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
