import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Alampayan_Jose_Victor_MidtermExam',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> items = [
    'Letter A',
    'Letter B',
    'Letter C',
    
    'Letter D',
    
    'Letter E',

    'Letter F',
    'Letter G',
    'Letter H',
    'Letter I',
    'Letter J',
    
    
    
  ];

  final List<bool> added = List.filled(10, false);

  void _showDetails(String item) {
    print('Details of $item');
  }

  void _toggleAdd(int index) {
    setState(() {
      added[index] = !added[index];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jose_Victor_Alampaayan_MidtermExam'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 1.0,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              color: added[index] ? const Color.fromARGB(255, 255, 0, 0) : const Color.fromARGB(255, 0, 123, 255),
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(items[index], style: TextStyle(fontSize: 20)),
                  SizedBox(height: 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () => _showDetails(items[index]),
                        child: Text('Details'),
                      ),
                      ElevatedButton(
                        onPressed: () => _toggleAdd(index),
                        child: Text(added[index] ? 'Added' : 'Add'),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}