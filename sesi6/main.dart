import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32), // Padding for the entire row
      child: Row(
        children: [
          Expanded(
            // Step 1: Column inside Expanded
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // Align to start
              children: [
                // Step 2: First text container
                Container(
                  padding:
                      const EdgeInsets.only(bottom: 8), // Padding for bottom
                  child: const Text(
                    'Wisata Gunung di Batu',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Batu, Malang, Indonesia',
                  style: TextStyle(color: Colors.grey), // Set color to grey
                ),
              ],
            ),
          ),
          // Step 3: Star icon and text
          Icon(
            Icons.star,
            color: Colors.red, // Set color to red
          ),
          const Text('41'), // Text for star count
        ],
      ),
    );
    // Helper method to build each button with icon and text
    Column _buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(20), // Padding for the entire row
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, // Space buttons evenly
        children: [
          _buildButtonColumn(Colors.blue, Icons.call, 'CALL'),
          _buildButtonColumn(Colors.blue, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(Colors.blue, Icons.share, 'SHARE'),
        ],
      ),
    );
    Widget textSection = Container(
      padding: const EdgeInsets.all(32), // Padding for the entire row
      child: const Text(
        'Batu, Malang dikenal dengan pesona alam pegunungannya yang memikat. Wisatawan dapat menikmati suasana tenang dengan udara yang sejuk, dihiasi pemandangan hijau yang membentang luas. Gunung Panderman dan Gunung Banyak menjadi tujuan favorit, menawarkan trekking seru dan spot foto indah yang tak terlupakan. Kicauan burung dan kabut pagi yang menyelimuti puncak menjadi daya tarik alami yang membuat wisata ke Batu semakin spesial.',
        textAlign: TextAlign.justify,
        ),
    );
    return MaterialApp(
      title: 'Flutter Layout: Yonatan Efrassetyo - 2241720063',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   title: const Text('Flutter layout demo'),
        // ),
        body: Column(
          // Change body to use a Column
          children: [
            Image.asset('image/panderman.png'),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
