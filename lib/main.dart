import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
    const style = TextStyle(
        fontFamily: '.SF Pro Text', fontFamilyFallback: ['Apple Color Emoji']);
    const styleWithoutFallback = TextStyle(
      fontFamily: '.SF Pro Text',
    );
    const styleWithout = TextStyle();
    const courierStyle = TextStyle(
      fontFamily: 'Courier',
      fontFamilyFallback: ['Apple Color Emoji'],
    );
    const courierWithoutFallback = TextStyle(
      fontFamily: 'Courier',
    );
    // title text style
    const titleStyle = TextStyle(
      fontFamily: '.SF Pro Text',
      fontSize: 14,
      fontWeight: FontWeight.bold,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'With fontFamily: .SF Pro Text, fontFamilyFallback: Apple Color Emoji',
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            Text('Testing 1️⃣ emojis', style: style),
            Text('Testing 😀 emojis', style: style),
            Text(
              'With fontFamily: .SF Pro Text, fontFamilyFallback: null',
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            Text('Testing 1️⃣ emojis', style: styleWithoutFallback),
            Text('Testing 😀 emojis', style: styleWithoutFallback),
            Text(
              'With fontFamily: null, fontFamilyFallback: null',
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            Text('Testing 1️⃣ emojis', style: styleWithout),
            Text('Testing 😀 emojis', style: styleWithout),
            Text(
              'With fontFamily: Courier, fontFamilyFallback: Apple Color Emoji',
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            Text('Testing 1️⃣ emojis', style: courierStyle),
            Text('Testing 😀 emojis', style: courierStyle),
            Text(
              'With fontFamily: Courier, fontFamilyFallback: null',
              style: titleStyle,
              textAlign: TextAlign.center,
            ),
            Text('Testing 1️⃣ emojis', style: courierWithoutFallback),
            Text('Testing 😀 emojis', style: courierWithoutFallback),
          ],
        ),
      ),
    );
  }
}
