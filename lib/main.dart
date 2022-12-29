import 'package:flutter/material.dart';
import 'package:flutter_web/util/platform.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
      // home: const MyHomePage(title:(kIsWeb)?"Flutter Web Page": 'Flutter Android Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(0, 10, 10, 10),
              // alignment: Alignment.topRight,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (!GetPlatform.isWeb)
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.1,
                    ),
                  const Text(
                    'Gmail',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Images',
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/dotIcon.png",
                      height: 20,
                      width: 20,
                    ),
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage("assets/pic.png"),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset(
                    "assets/google_doodle.png",
                    fit: BoxFit.cover,
                    filterQuality: FilterQuality.high,
                  ),
                )
              ],
            ),
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(25)),
              width: MediaQuery.of(context).size.width / 2.5,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 4),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                  Expanded(
                    child: TextFormField(
                      cursorColor: Colors.black,
                      cursorWidth: 1,
                      decoration: const InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,

                        // focusedBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(25.0),
                        //   borderSide: const BorderSide(
                        //     color: Colors.grey,
                        //   ),
                        // ),
                        // enabledBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(25.0),
                        //   borderSide: const BorderSide(
                        //     color: Colors.grey,
                        //   ),
                        // ),
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/microphone.png",
                    height: 20,
                    width: 20,
                    // fit: BoxFit.cover,
                    // filterQuality: FilterQuality.high,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Image.asset(
                    "assets/camera.png",
                    height: 24,
                    width: 24,
                    // fit: BoxFit.cover,
                    // filterQuality: FilterQuality.high,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    color: Colors.grey[350],
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("Google Search"),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Card(
                    color: Colors.grey[350],
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text("I'm Feel Lucky"),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Google offered in: ",
                    style: TextStyle(fontSize: 12)),
                InkWell(
                    onTap: () {},
                    child: const Text(
                      "اردو",
                      style: TextStyle(color: Colors.blue, fontSize: 12),
                    )),
                InkWell(
                    onTap: () {},
                    child: const Text("پښتو",
                        style: TextStyle(color: Colors.blue, fontSize: 12))),
                InkWell(
                    onTap: () {},
                    child: const Text("سنڌي",
                        style: TextStyle(color: Colors.blue, fontSize: 12)))
              ],
            ),
            const Spacer(),
            Container(
              color: Colors.grey[200],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Pakistan",
                      textAlign: TextAlign.start,
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("About"),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Advertising"),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Business"),
                        SizedBox(
                          width: 8,
                        ),
                        Text("How Search Word"),
                        Spacer(),
                        Text("Privicy"),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Term"),
                        SizedBox(
                          width: 8,
                        ),
                        Text("Settings"),
                        SizedBox(
                          width: 8,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
