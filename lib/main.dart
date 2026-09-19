import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp(title: 'Flutter Demo'));
}

/// TYPES OF WIDGETS
/// 1. Stateless Widget- Widgets that do not maintain any internal state
/// 2. Stateful Widget- Widgets that maintain internal state
///
///
///
///
///
///
///
class StudentModel {
  final String name;
  final int age;

  StudentModel({required this.name, required this.age});
}

class MyApp extends StatelessWidget {
  final String title;
  // final StudentModel std;
  const MyApp({super.key, required this.title});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: HomeStateless(),
      home: Home(name: 'Flutter 1 class'),
      // home: const MyHomePage('Welcome to Flutter', 20),
    );
  }
}

// class HomeStateless extends StatelessWidget {
//   const HomeStateless({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

class Home extends StatefulWidget {
  final String name;
  const Home({super.key, required this.name});

  @override
  State<Home> createState() => _HomeState();
}

// Map<String, dynamic> data = {};
List<int> items = [23, 23];

class _HomeState extends State<Home> {
  int counter = 0;
  int screenIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              counter++;
            });
            print(counter);
          },
        ),
        body: screenIndex == 3
            ? Container(
                height: double.infinity,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Chats',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 30,
                        ),
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        height: 40,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Ask Meta AI or Search',
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: 15,
                            ),
                            prefixIcon: Icon(Icons.search, size: 30),
                            isDense: true,
                            isCollapsed: true,
                            contentPadding: EdgeInsets.only(
                              top: 9,
                              bottom: 5,

                              left: 3,
                              right: 3,
                            ),
                            fillColor: Colors.grey.withValues(alpha: 0.2),
                            // focusColor: Colors.grey,
                            // hoverColor: Colors.grey,
                            filled: true,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                width: 0,
                                style: BorderStyle.none,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Chip(
                              label: Text('All'),
                              backgroundColor: Colors.green.withValues(
                                alpha: 0.3,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(400),
                              ),
                            ),
                            SizedBox(width: 7),
                            Chip(
                              label: Text('Unread 46'),
                              // backgroundColor: Colors.transparent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(400),
                              ),
                            ),
                            SizedBox(width: 7),

                            Chip(
                              label: Text('Favourites'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(400),
                              ),
                            ),
                            SizedBox(width: 7),

                            Chip(
                              label: Text('Groups 37'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(400),
                              ),
                            ),
                            SizedBox(width: 7),

                            Chip(
                              label: Icon(Icons.add),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(400),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        height: 700,
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              )
            : Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.grey,
              ),

        //  SizedBox(
        //   width: double.infinity,
        //   height: double.infinity,
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: <Widget>[
        //       Container(width: 50, height: 30, color: Colors.amber),
        //       SizedBox(width: 20),
        //       Container(width: 50, height: 30, color: Colors.red),
        //     ],
        //   ),
        // ),

        // Center(
        //   child: Column(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     // crossAxisAlignment: CrossAxisAlignment.center,
        //     children: <Widget>[
        //       Text('You have tapped $counter many times'),
        //       Text('$counter'),
        //       //List<Widget>
        //     ],
        //   ),
        // ),
        appBar: AppBar(
          elevation: 1,
          centerTitle: true,
          actionsPadding: EdgeInsets.only(right: 10),
          leading: Icon(Icons.more_horiz),
          actions: [
            Icon(Icons.camera_alt_outlined),
            SizedBox(width: 20),
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.add, color: Colors.white),
            ),
            // SizedBox(width: 10),
          ],
          // title: Text(widget.name, style: TextStyle(color: Colors.deepOrange)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: screenIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (int index) {
            setState(() {
              screenIndex = index;
            });
            print(index);
          },
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.donut_large_sharp),
              label: 'Updates',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Communities',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chats'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'You'),
          ],
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage(this.title, this.age, {super.key});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;
//   final int age;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     // setState(() {
//     // This call to setState tells the Flutter framework that something has
//     // changed in this State, which causes it to rerun the build method below
//     // so that the display can reflect the updated values. If we changed
//     // _counter without calling setState(), then the build method would not be
//     // called again, and so nothing would appear to happen.
//     _counter++;
//     // });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Colors.lightBlue,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: .center,
//           children: [
//             const Text(
//               'You have pushed the button this many times:',
//               style: TextStyle(
//                 // height: 0.56,
//                 color: Colors.red,
//                 fontSize: 20,
//                 fontWeight: FontWeight.w700,
//               ),
//             ),
//             Text(
//               _counter.toString(),
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         backgroundColor: Colors.green,
//         child: Icon(Icons.add, color: Colors.white),
//       ),
//     );
//   }
// }
