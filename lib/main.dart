import 'dart:js';

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_navigation/views/profile.dart';
import 'firebase_options.dart';
import 'package:flutter_navigation/views/homepage.dart';
import 'package:flutter_navigation/views/Main_Category.dart';




import 'package:flutter_navigation/features/splashview.dart';

import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_navigation/views/cubit/bottom_nav_cubit';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(App());
}

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: splashview(),
    );
  }
}
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
  
}

class _MainPageState extends State<MainPage> {
  /// Create a list of pages to make the code shorter and better readability
  ///
  final _pageNavigation = [
    HomeMakeup(),
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: _buildBody(state),
          bottomNavigationBar: _buildBottomNav(),
        );
      },
    );
  }
  

  Widget _buildBody(int index) {
    /// Check if index is in range
    /// else return Not Found widget
    ///

    return _pageNavigation.elementAt(index);
  }

  Widget _buildBottomNav() {
    return BottomNavigationBar(
      backgroundColor: Colors.black,
    //  currentIndex: context.read<BottomNavCubit>().state,
      type: BottomNavigationBarType.fixed,
      onTap: _getChangeBottomNav,
      fixedColor: const Color.fromARGB(2000, 227, 214, 110),
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: 'Category'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
      ],
    );
  }

  void _getChangeBottomNav(int index) {
    //context.read<BottomNavCubit>().updateIndex(index);
  }
}


