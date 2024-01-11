import 'package:flutter/material.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(
      initialPage: 0,
    );
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
            title: 'Masjid al Nabawi',
            description:
                "The Prophet's Mosque or Mosque of the Prophet (Arabic: ٱلْمَسْجِد ٱلنَّبَوِي‎) is the second mosque built by the Islamic prophet Muhammad in Medina.",
          ),
          makePage(
            NO: '2',
            image: 'assets/images/tow.jpg',
            title: 'Masjid e Quba',
            description:
                "The Quba Mosque (Arabic: مَسْجِد قُبَاء‎) is a mosque located in Medina, in the Hejazi region of Saudi Arabia, built in the lifetime of the Islamic prophet Muhammad.",
          ),
          makePage(
            NO: '3',
            image: 'assets/images/three.jpg',
            title: 'Masjid Qiblatain',
            description:
                "The Masjid al-Qiblatayn is a mosque in Medina believed by Muslims to be the place where the final Islamic prophet, Muhammad, received the command to change the Qibla.",
          ),
          makePage(
            NO: '4',
            image: 'assets/images/four.jpg',
            title: 'King Fahd Complex',
            description:
                'King Fahd Complex for the Printing of the Holy Qur’an, in Medina, is the largest printing press in the world for printing the Qur’an.',
          ),
        ],
      ),
    );
  }

  Widget makePage(
      {String? image, String? title, String? description, String? NO}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image ?? ''),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: const [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 40),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    NO ?? '',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
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
                      title ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        for (int i = 0; i < 5; i++)
                          Container(
                            margin: const EdgeInsets.only(right: 3),
                            child: const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                        Text(
                          '5.0',
                          style: const TextStyle(color: Colors.white70),
                        ),
                        const Text(
                          ' (22675)',
                          style: TextStyle(color: Colors.white38, fontSize: 12),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      description ?? '',
                      style: TextStyle(
                        color: Colors.white.withOpacity(.8),
                        height: 1.9,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Read More',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
