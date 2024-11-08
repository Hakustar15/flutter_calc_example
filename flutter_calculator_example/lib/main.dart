import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var equation = ["0"];

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

bool isNumeric(String s) {
 if (s == null) {
   return false;
 }
 return double.tryParse(s) != null;
}

  void _addTerm(String term) {
    setState(() {
      print(isNumeric(equation[equation.length - 1]));
      if (isNumeric(equation[equation.length - 1])) {
        equation[equation.length - 1] += term;
      } else {
        equation.add(term);
      }
    });
  }

  void _addOperator(String term) {
    setState(() {
      equation.add(term);
    });
  }

  String _getEquation(){
    String finalEquation = "";

    for (String e in equation){
      finalEquation += (e + " ");
    }

    return finalEquation;
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
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(
                width: 250,
                height: 100,
                child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(99, 30, 202, 24),
                        border: Border.all(
                            color: Color.fromARGB(49, 237, 4, 4), width: 5),
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(_getEquation())))
          ]),
          Center(
              child: SizedBox(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          _addTerm("1");
                        },
                        tooltip: 'Increment',
                        child: const Text("1"),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          _addTerm("2");
                        },
                        tooltip: 'Increment',
                        child: const Text("2"),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          _addTerm("3");
                        },
                        tooltip: 'Increment',
                        child: const Text("3"),
                      ),
                      Container(width: 20),
                      FloatingActionButton(
                        onPressed: () {
                          _addOperator("+");
                        },
                        tooltip: 'Increment',
                        child: const Text("+"),
                      )
                    ],
                  ))),
          Center(
              child: SizedBox(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          _addTerm("4");
                        },
                        tooltip: 'Increment',
                        child: const Text("4"),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          _addTerm("5");
                        },
                        tooltip: 'Increment',
                        child: const Text("5"),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          _addTerm("6");
                        },
                        tooltip: 'Increment',
                        child: const Text("6"),
                      ),
                      Container(width: 20),
                      FloatingActionButton(
                        onPressed: () {
                          _addOperator("-");
                        },
                        tooltip: 'Increment',
                        child: const Text("-"),
                      )
                    ],
                  ))),
          Center(
              child: SizedBox(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        onPressed: () {
                          _addTerm("7");
                        },
                        tooltip: 'Increment',
                        child: const Text("7"),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          _addTerm("8");
                        },
                        tooltip: 'Increment',
                        child: const Text("8"),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          _addTerm("9");
                        },
                        tooltip: 'Increment',
                        child: const Text("9"),
                      ),
                      Container(width: 20),
                      FloatingActionButton(
                        onPressed: () {
                          _addOperator("x");
                        },
                        tooltip: 'Increment',
                        child: const Text("x"),
                      )
                    ],
                  ))),
          Center(
              child: SizedBox(
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(width: 45),
                      FloatingActionButton(
                        onPressed: _incrementCounter,
                        tooltip: 'Increment',
                        child: const Text("0"),
                      ),
                      Container(width: 60),
                      FloatingActionButton(
                        onPressed: () {
                          _addOperator("/");
                        },
                        tooltip: 'Increment',
                        child: const Text("/"),
                      )
                    ],
                  ))),
        ]),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
