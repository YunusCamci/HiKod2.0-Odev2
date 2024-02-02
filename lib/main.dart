import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HiKod 2.0 - Ödev 2',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'HiKod 2.0 - Ödev 2'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.orange,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to My App!',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('Widget 1',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Card(
                          elevation: 0,
                          color: Colors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Center(),
                          ),
                        ),
                        TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green),
                            ),
                            onPressed: null,
                            child: Text(
                              'OPEN Text Button',
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: <Widget>[
                        Text('Widget 1',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold)),
                        Card(
                          elevation: 0,
                          color: Colors.yellow,
                          shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                          child: SizedBox(
                            width: 100,
                            height: 100,
                            child: Center(),
                          ),
                        ),
                        TextButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.green),
                            ),
                            onPressed: null,
                            child: Text(
                              'CLOSE Text Button',
                              style: TextStyle(color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 0, bottom: 0, right: 0, top: 20),
              child: Text(
                'Açıklama',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "bu benim ilk mobil uygulamam"
            ),
          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {null},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
