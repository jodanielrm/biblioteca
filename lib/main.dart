import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> imageRows = [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'images/apex_legends.jpg',
            width: 120,
            height: 200,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/destiny_2.jpg',
            width: 120,
            height: 200,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/hollow.jpeg',
            width: 120,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'images/hotline.jpeg',
            width: 120,
            height: 200,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/left4dead.jpg',
            width: 120,
            height: 200,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/mortal_kombat11.png',
            width: 120,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
      const SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            'images/red_dead.jpg',
            width: 120,
            height: 200,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/speed.jpeg',
            width: 120,
            height: 200,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'images/valley.jpeg',
            width: 120,
            height: 200,
            fit: BoxFit.cover,
          ),
        ],
      ),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Biblioteca',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF202126),
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'LIBRARY',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'images/goku.jpg',
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
                const SizedBox(width: 10), // Espacio entre la imagen y el borde del AppBar
              ],
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            color: const Color(0xFF292C35),
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        decoration: const BoxDecoration(
                          color: Color(0xFF343843),
                        ),
                        child: Row(
                          children: [
                            const Expanded(
                              child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  hintStyle: TextStyle(color: Colors.white70),
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.search, color: Colors.white),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    const Text(
                      'SORT BY:',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recent',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                            Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                ...imageRows, // Agregar todas las filas de imágenes aquí
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xFF202126),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.label, color: Colors.white),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.newspaper, color: Colors.white),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.security, color: Colors.white),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications, color: Colors.white),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu, color: Colors.white),
              label: "",
            ),
          ],
        ),
      ),
    );
  }
}
