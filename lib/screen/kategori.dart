import 'package:flashcard/screen/kategori2.dart';
import 'package:flutter/material.dart';
import 'package:flashcard/screen/kategori1.dart';

class Kategori extends StatelessWidget {
  final String? username;

  const Kategori({super.key, this.username});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: data.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                        childAspectRatio: 0.7,
                      ),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            if (index == 0) {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return kategori2(
                                    data: data[index]["images"],
                                    indexKategori: (index + 1).toString(),
                                  );
                                },
                              ));
                            } else {
                              Navigator.push(context, MaterialPageRoute(
                                builder: (context) {
                                  return kategori1(
                                    data: data[index]["images"],
                                    indexKategori: (index + 1).toString(),
                                  );
                                },
                              ));
                            }
                          },
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            height: MediaQuery.of(context).size.height * 0.3,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.asset(
                                    "lib/asset/kategori/${data[index]["backgroundImage"]}.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }))
            ],
          ),
        ),
      )),
    );
  }
}

List<Map<String, dynamic>> data = [
  {
    "kategori": "Kategori 1",
    "backgroundImage": "1",
    "images": ["1cewe", "1cowo", "3", "4"]
  },
  {
    "kategori": "Kategori 2",
    "backgroundImage": "2",
    "images": ["2.1", "2.2", "2.3", "2.4", "2.5", "2.6", "2.7", "2.8"]
  },
  {
    "kategori": "Kategori 3",
    "backgroundImage": "3",
    "images": ["3.1", "3.2", "3.3", "3.4"]
  },
  {
    "kategori": "Kategori 4",
    "backgroundImage": "4",
    "images": [
      "4.1",
      "4.2",
      "4.3",
      "4.4",
      "4.5",
      "4.6",
      "4.7",
    ]
  },
  {
    "kategori": "Kategori 5",
    "backgroundImage": "5",
    "images": [
      "5.1",
      "5.2",
      "5.3",
      "5.4",
      "5.5",
      "5.6",
      "5.7",
      "5.8",
      "5.9",
      "5.10",
      "5.11"
    ]
  },
  {
    "kategori": "Kategori 6",
    "backgroundImage": "6",
    "images": ["6.1", "6.2"]
  },
  {
    "kategori": "Kategori 7",
    "backgroundImage": "7",
    "images": ["7.1", "7.2", "7.3", "7.4"]
  },
  {
    "kategori": "Kategori 8",
    "backgroundImage": "8",
    "images": ["8.1", "8.2", "8.3", "8.4", "8.5", "8.6"]
  },
];
