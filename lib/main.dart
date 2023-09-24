import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _controller;
  void _onScroll() {}

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: 0,
    )..addListener(_onScroll);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        children: [
          makePage(
              NO: '1',
              image: 'assets/images/one.jpg',
              title: 'masjid al nabawi',
              description:
                  "The Prophet's Mosque or Mosque of the Prophet (Arabic: ٱلْمَسْجِد ٱلنَّبَوِي‎, romanized: al-Masjid an-Nabawī, lit. 'Mosque of the Prophet'), is the second mosque built by the Islamic prophet Muhammad in Medina, after that of Quba, as well as the second largest mosque and holiest site in Islam"),
          makePage(
              NO: '2',
              image: 'assets/images/tow.jpg',
              title: 'Masjid E Quba',
              description:
                  "The Quba Mosque (Arabic: مَسْجِد قُبَاء‎, romanized: Masjid Qubāʾ) is a mosque located in Medina, in the Hejazi region of Saudi Arabia, built in the lifetime of the Islamic prophet Muhammad in the 7th century C.E. It is thought to be the first mosque in the world, built on the first day of Muhammad's emigration to Medina."),
          makePage(
              NO: '3',
              image: 'assets/images/three.jpg',
              title: 'Masjid Qiblatain',
              description:
                  "The Masjid al-Qiblatayn (Arabic: مسجد القبلتين, lit. 'Mosque of the Two Qiblas'), also spelt Masjid al-Qiblatain, is a mosque in Medina believed by Muslims to be the place where the final Islamic prophet, Muhammad, received the command to change the Qibla (direction of prayer) from Jerusalem to Mecca."),
          makePage(
              NO: '4',
              image: 'assets/images/four.jpg',
              title: 'King Fahd Complex',
              description:
                  'King Fahd Complex for the Printing of the Holy Qur’an, in Medina, is the largest printing press in the world for printing the Qur’an. It is one of the landmarks provided by the Kingdom of Saudi Arabia to serve Islam and Muslims in various parts of the world. The Custodian of the Two Holy Mosques, King Fahd bin Abdulaziz, laid the foundation stone for the complex in 1403 AH and inaugurated it in 1405 AH.'),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, NO}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                stops: const [
              0.3,
              0.9
            ],
                colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2)
            ])),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    NO,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '/4',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 3),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        child: const Icon(
                          Icons.star,
                          color: Colors.yellow,
                          size: 15,
                        ),
                      ),
                      const Text(
                        '5.0',
                        style: TextStyle(color: Colors.white70),
                      ),
                      const Text(
                        ' (22675)',
                        style: TextStyle(color: Colors.white38, fontSize: 12),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    description,
                    style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        height: 1.9,
                        fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Read More',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
