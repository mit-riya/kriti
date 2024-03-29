import 'package:flutter/material.dart';
import 'package:kriti/screens/restaurants.dart';
import 'package:kriti/stationary_screens/shop_2.dart';
import 'package:kriti/stationary_screens/shop_3.dart';
import 'package:kriti/stationary_screens/shop_4.dart';
import '../stationary_screens/shop_1.dart';
import 'essentials.dart';

class Stationaries extends StatefulWidget {
  const Stationaries({Key? key}) : super(key: key);

  @override
  State<Stationaries> createState() => _stationariesState();
}

class _stationariesState extends State<Stationaries> {
  int _selectedIndex=1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if(index==0){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Restaurants()),
        );
      }
      if(index==1){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Stationaries()),
        );
      }
      if(index==2){
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Essentials()),
        );
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text('Stationaries')),
        backgroundColor: Colors.lightBlueAccent[100],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.adf_scanner),
              title: Text('Lecture Hall Stationary'),
              tileColor: Colors.purple[200],
              subtitle: Text( 'Status: open/closed' ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => lh_stationery()),
                )
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.adf_scanner),
              title: Text('Core 1 Stationary'),
              tileColor: Colors.purple[200],
              subtitle: Text( 'Status: open/closed' ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => core_stationery()),
                )
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.adf_scanner),
              title: Text('Disang Stationary'),
              tileColor: Colors.purple[200],
              subtitle: Text( 'Status: open/closed' ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dis_stationery()),
                )
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: const Icon(Icons.adf_scanner),
              title: Text('Lohit Stationary'),
              tileColor: Colors.purple[200],
              subtitle: Text( 'Status: open/closed' ),
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => lohit_stationery()),
                )
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: 'Restaurants',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.scanner),
            label: 'Statioaries',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_laundry_service),
            label: 'Essentials',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
