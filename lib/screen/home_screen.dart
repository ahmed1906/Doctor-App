import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            // AppBar(
            //   leading: Image.asset(
            //     'assets/preuzmi1.jpg',
            //     scale: 1,
            //     width: 30,
            //   ),
            //   title: IconButton(
            //     icon: Image.asset('assets/backButton.jpg'),
            //     onPressed: () => Navigator.of(context).pop(),
            //   ),
            // ),
            AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          automaticallyImplyLeading: false,
          title: Image.asset(
            "assets/mainTitle.jpg",
            fit: BoxFit.contain,
            height: 72,
          ),
          toolbarHeight: 88,
          actions: [
            IconButton(
                onPressed: () => {Navigator.of(context).pop()},
                icon: Image.asset('assets/backButton.jpg')),
          ],
        ),
        body: Container(
            // height: 190,
            padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
            child: ListView(
              children: [
                (Row(children: [
                  Column(children: [
                    Image.asset(
                      'assets/profile.jpg',
                      fit: BoxFit.contain,
                      height: 80,
                    )
                  ]),
                  SizedBox(width: 50),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'My Profile',
                          style: TextStyle(fontSize: 20),
                        ),
                        Text('Ahmed Duranovic',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20))
                      ]),
                ])),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 10), //apply padding to some sides only
                  child: Text(
                    'Patient list for today',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                (Row(children: [
                  Column(children: [
                    Image.asset(
                      'assets/prof.jpg',
                      fit: BoxFit.contain,
                      height: 50,
                    )
                  ]),
                  SizedBox(width: 30),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Alen K',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text('16:00 common cold',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))
                      ]),
                ])),
                Padding(
                  padding: EdgeInsets.only(
                      top: 20,
                      bottom: 20,
                      left: 10), //apply padding to some sides only
                  child: Text(
                    'Patient list for tomorrow',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                (Row(children: [
                  Column(children: [
                    Image.asset(
                      'assets/prof2.jpg',
                      fit: BoxFit.contain,
                      height: 50,
                    )
                  ]),
                  SizedBox(width: 30),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Andy',
                          style: TextStyle(fontSize: 15),
                        ),
                        Text('08:00 common cold',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15))
                      ]),
                ]))
              ],
            )));
  }
}
