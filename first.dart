import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(onDestinationSelected: (int index){
        setState(() {
          currentPageIndex = index;
        });
      },
      indicatorColor: Colors.blue,
      selectedIndex: currentPageIndex,
       destinations:const <Widget>[
        NavigationDestination(selectedIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
         label: 'home'
         ),
         NavigationDestination(
          icon: Icon(Icons.business),
         label: 'business'
         ),
         NavigationDestination(
          icon: Icon(Icons.school),
         label: 'school'
         ),
         
       ] ),
       body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text('Page 1'),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Page 2'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Page 3'),
        ),
      ][currentPageIndex],
          
       
    );
  }
}