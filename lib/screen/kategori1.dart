import 'package:flutter/material.dart';
import 'package:flashcard/screen/kategori.dart';

// class Kategori1 extends StatelessWidget {
//   final List<String>
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(child: Container()),
//     );
//   }
// }
class kategori1 extends StatelessWidget {
  final String indexKategori;
  final List<String> data;
  const kategori1({super.key, required this.data, required this.indexKategori});

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
                                "lib/asset/kategori${indexKategori}/${data[index]}.png")
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
