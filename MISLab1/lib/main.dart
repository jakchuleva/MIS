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
      title: 'Clothing Application',
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
          ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> clothingItems = [
    {'name': 'Dress', 'price': '1200 MKD', 'description': 'A maxi black dress'},
    {
      'name': 'Shirt',
      'price': '600 MKD',
      'description': 'This is a cool shirt'
    },
    {'name': 'Jeans', 'price': '1200 MKD', 'description': 'Mom jeans'},
    {
      'name': 'Blue dress',
      'price': '1500 MKD',
      'description': 'A maxi blue dress'
    },
    {'name': 'Sweater', 'price': '900 MKD', 'description': 'This is a sweater'},
    {'name': 'Shorts', 'price': '1000 MKD', 'description': 'Blue Shorts'},
    {'name': 'Hat', 'price': '400 MKD', 'description': 'Hat for your head'},
    {
      'name': 'Red Scarf',
      'price': '300 MKD',
      'description': 'This is a red scarf'
    },
    {'name': 'Shoes', 'price': '1300 MKD', 'description': 'Kids shoes'},
    {'name': 'Socks', 'price': '80 MKD', 'description': 'Soft socks'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('211107'),
      ),
      body: ListView.builder(
        itemCount: clothingItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(clothingItems[index]['name']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      DetailScreen(item: clothingItems[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  final Map<String, String> item;

  DetailScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item['name']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item['name']!,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Price: ${item['price']}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(item['description']!),
          ],
        ),
      ),
    );
  }
}
