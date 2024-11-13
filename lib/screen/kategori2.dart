import 'package:flutter/material.dart';
import 'package:flashcard/screen/kategori.dart';
import 'package:flutter/services.dart';

// class Kategori1 extends StatelessWidget {
//   final List<String>
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(child: Container()),
//     );
//   }
// }
class kategori2 extends StatelessWidget {
  final String indexKategori;
  final List<String> data;
  const kategori2({super.key, required this.data, required this.indexKategori});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.07,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("lib/asset/logoflashcard.png"))),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 1,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: data.length,
                  controller: PageController(viewportFraction: 1),
                  physics: PageScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                                "lib/asset/kategori${indexKategori}/${data[index]}.png"),
                            if (index == 0 || index == 1)
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.red)),
                                  onPressed: () {
                                    // Tambahkan aksi tombol di sini
                                    showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text(
                                              "Data Diri",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            content: SizedBox(
                                              height: 280,
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Alamat : ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    TextField(
                                                      decoration: InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: Colors
                                                                          .blue)),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                          color:
                                                                              Colors.blue))),
                                                      maxLines: 2,
                                                      keyboardType:
                                                          TextInputType
                                                              .multiline,
                                                    ),
                                                    Text(
                                                      "No HP Ayah : ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    TextField(
                                                      decoration: InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: Colors
                                                                          .blue)),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                          color:
                                                                              Colors.blue))),
                                                    ),
                                                    Text(
                                                      "Aku Istimewa Karena : ",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                    TextField(
                                                      decoration: InputDecoration(
                                                          border:
                                                              OutlineInputBorder(),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                                  borderSide: BorderSide(
                                                                      color: Colors
                                                                          .blue)),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                                  borderSide:
                                                                      BorderSide(
                                                                          color:
                                                                              Colors.blue))),
                                                      maxLines: 2,
                                                      keyboardType:
                                                          TextInputType
                                                              .multiline,
                                                    ),
                                                  ]),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                onPressed: () {
                                                  // Tambahkan aksi tombol Save di sini
                                                  print("Data disimpan!");
                                                  Navigator.of(context)
                                                      .pop(); // Tutup dialog setelah menyimpan
                                                },
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.blue)),
                                                child: Text(
                                                  "Simpan",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                              ElevatedButton(
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pop(); // Tutup dialog
                                                },
                                                style: ButtonStyle(
                                                    backgroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.red),
                                                    foregroundColor:
                                                        MaterialStateProperty
                                                            .all(Colors.blue)),
                                                child: Text(
                                                  "Tutup",
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          );
                                        });
                                  },
                                  child: const Text(
                                    "Lengkapi Data Diri",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
