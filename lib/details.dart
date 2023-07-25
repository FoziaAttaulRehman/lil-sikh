import 'package:flutter/material.dart';

import 'books.dart';

class DetailScreen extends StatelessWidget {
  final image;
  String title;

  DetailScreen({required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(title.toUpperCase()),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              children: [
                GestureDetector(
                  child: Image.asset(
                    'assets/read_icon.png',
                    scale: 3,
                  ),
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const BookScreen())),
                ),
                const SizedBox(width: 15),
                Image.asset(
                  'assets/share_icon.png',
                  scale: 3,
                ),
              ],
            ),
          )
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.25,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 0.5,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'सफलता की सबसे खास बात है कि, वो मेहनत करने वालों पर फिदा हो जाती है मैं "दूसरों के चेहरे हम याद रखें हमारी ऐसी फितरत नहीं लोग हमारा चेहरा देख के अपनी फितरत बदल ले ऐसी हमारी फितरत है ',
                        style: TextStyle(
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02),
                      Image.asset(
                        'assets/play_icon.png',
                        scale: 4,
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset(
                  image,
                  scale: 3,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 0.5,
                        offset:
                            const Offset(0, 1), // changes position of shadow
                      )
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'The most special thing about success is that, it is lost on those who work hard.',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * 0.06),
                      const Text(
                        'FULI SHADAB HERE',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
