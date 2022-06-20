import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:spelling_number/spelling_number.dart';
import 'dart:math' as Math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: const MyHomePage(title: 'Flutter Spelling Number'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  List<Map<String, dynamic>> spelledNumberList = [];

  @override
  void initState() {
    var numberFormats = [
      {
        'lang': 'en',
        'digitsLengthW2F': 2,
        'decimalSeperator': "and",
        'header': 'Example Convert Number into words'
      },
      {
        'lang': 'ar',
        'digitsLengthW2F': 2,
        'decimalSeperator': "و",
        'header': ' تفقيط أو تحويل الرقم الى كلمات باللغة العربية'
      },
    ];

    var numbers = [100, 132.21, 1000000, 1123000530.12];

    for (var numberFormat in numberFormats) {
      spelledNumberList
          .add({'title': numberFormat['header'].toString(), 'value': ""});
      for (int i = 0; i < numbers.length; i++) {
        spelledNumberList.add({
          'title':
              'The spelling of ${numbers[i]} in ${numberFormat['lang']} lang is',
          'value': SpellingNumber(
            lang: numberFormat['lang'].toString(),
            digitsLengthW2F: numberFormat['digitsLengthW2F'] as int,
            decimalSeperator: numberFormat['decimalSeperator'].toString(),
          ).convert(numbers[i])
        });
        // log('The spelling of ${numbers[i]} in language ${numberFormat['lang']} is : ${SpellingNumber(
        //   lang: numberFormat['lang'].toString(),
        //   digitsLengthW2F: numberFormat['digitsLengthW2F'] as int,
        //   decimalSeperator: numberFormat['decimalSeperator'].toString(),
        // ).convert(numbers[i])}');
      }
    }

    var moneyFormats = [
      {
        'lang': 'en',
        'wholesUnit': "dollar",
        'fractionUnit': "cent",
        'digitsLengthW2F': 2,
        'decimalSeperator': "and",
        'header': 'Example Convert Dollars and Cents into words'
      },
      {
        'lang': 'ar',
        'wholesUnit': "ليرة لبنانية",
        'fractionUnit': "قرش",
        'digitsLengthW2F':
            3, //The pound or lira is the currency of Lebanon. It was formerly divided into 100 piastres
        'decimalSeperator': "و",
        'header': 'تفقيط العملة'
      },
    ];

    for (var format in moneyFormats) {
      spelledNumberList
          .add({'title': format['header'].toString(), 'value': ""});
      for (int i = 0; i < numbers.length; i++) {
        spelledNumberList.add({
          'title':
              'The spelling of amount ${numbers[i]} in ${format['lang']} lang is',
          'value': SpellingNumber(
            lang: format['lang'].toString(),
            wholesUnit: format['wholesUnit'].toString(),
            fractionUnit: format['fractionUnit'].toString(),
            digitsLengthW2F: format['digitsLengthW2F'] as int,
            decimalSeperator: format['decimalSeperator'].toString(),
          ).convert(numbers[i])
        });
        // log('The spelling amount of ${numbers[i]} is : ${SpellingNumber(
        //   lang: format['lang'].toString(),
        //   wholesUnit: format['wholesUnit'].toString(),
        //   fractionUnit: format['fractionUnit'].toString(),
        //   digitsLengthW2F: format['digitsLengthW2F'] as int,
        //   decimalSeperator: format['decimalSeperator'].toString(),
        // ).convert(numbers[i])}');
      }
    }

    var weightFormats = [
      {
        'lang': 'en',
        'wholesUnit': "Ton",
        'fractionUnit': "Kg",
        'digitsLengthW2F': 3,
        'decimalSeperator': "and",
        'header': 'Example Convert Weight number into words'
      },
      {
        'lang': 'ar',
        'wholesUnit': "طن",
        'fractionUnit': "كيلو غرام",
        'digitsLengthW2F':
            3, //The pound or lira is the currency of Lebanon. It was formerly divided into 100 piastres
        'decimalSeperator': "و",
        'header': 'تفقيط الوزن'
      },
    ];

    for (var weightFormat in weightFormats) {
      spelledNumberList
          .add({'title': weightFormat['header'].toString(), 'value': ""});
      for (int i = 0; i < numbers.length; i++) {
        spelledNumberList.add({
          'title':
              'The spelling of weight ${numbers[i]} in ${weightFormat['lang']} lang is',
          'value': SpellingNumber(
            lang: weightFormat['lang'].toString(),
            wholesUnit: weightFormat['wholesUnit'].toString(),
            fractionUnit: weightFormat['fractionUnit'].toString(),
            digitsLengthW2F: weightFormat['digitsLengthW2F'] as int,
            decimalSeperator: weightFormat['decimalSeperator'].toString(),
          ).convert(numbers[i])
        });
      }
    }
    log('${spelledNumberList}');

    super.initState();
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Container(
        // decoration: const BoxDecoration(color: Color(0xff121b22)),
        child: ListView.builder(
            itemCount: spelledNumberList.length,
            itemBuilder: (context, index) {
              var item = spelledNumberList[index];
              if (item['value'].length == 0) {
                return Center(
                  child: Container(
                    width: double.infinity,
                    height: 30,
                    child: Text(
                      item['title'].toString(),
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    color: Colors.blue,
                    alignment: AlignmentDirectional.center,
                  ),
                );
              }
              return ListTile(
                title: Text(
                  item['title'].toString(),
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  item['value'].toString(),
                  style: const TextStyle(color: Color(0xff738088)),
                ),
              );
            }),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
