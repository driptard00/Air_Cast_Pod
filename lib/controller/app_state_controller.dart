import 'package:aircast_2/screens/collectionpage.dart';
import 'package:aircast_2/screens/homescreen.dart';
import 'package:aircast_2/screens/menuscreen.dart';
import 'package:aircast_2/screens/searchscreen.dart';
import 'package:flutter/material.dart';

class AppStateController extends ChangeNotifier {
  
  // ============ LOGIN AUTH STATE ===============
  final GlobalKey<FormState> _formKey1 = GlobalKey<FormState>();
  final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();
  String _username = "";
  dynamic _password = "";
  bool _hidePassword = true;

  // GETTERS
  GlobalKey<FormState> get formKey1 => _formKey1;
  GlobalKey<FormState> get formKey2 => _formKey2;
  String get username => _username;
  dynamic get password => _password;
  bool get hidePassword => _hidePassword;

  //SETTERS
  usernameValue(value) {
    _username = value;

    notifyListeners();
  }

  passwordValue(value) {
    _password = value;

    notifyListeners();
  }

  togglePassword() {
    _hidePassword = !_hidePassword;

    notifyListeners();
  }


  // ============ BOTTOM NAVIGATION BAR STATE =============
  final List<Widget> _screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CollectionPage(),
    const MenuScreen()
  ];
  int _selectedScreenIndex = 0;

  // GETTERS
  List<Widget> get screens => _screens;
  int get selectedScreenIndex => _selectedScreenIndex;

  //SETTERS
  selectedScreenItem(int index) {
    _selectedScreenIndex = index;

    notifyListeners();
  }

  // ============ HOME SCREEN STATE ===============
  final List<Map<String, dynamic>> _popular = [
    {
      "title": "Impaulsive",
      "caster": "Logan Paul"
    },
    {
      "title": "Comeback",
      "caster": "Jake Paul"
    },
    {
      "title": "Hustle",
      "caster": "Andrew Tate"
    },
    {
      "title": "The Dangers of technology",
      "caster": "Elizabeth Ellen"
    },
    {
      "title": "Lot of Bargains for the economy",
      "caster": "Dr. Samuel Ogbu"
    },
    {
      "title": "Micheal Fwogus lessons for thuggin",
      "caster": "Daniel Fwogos"
    },
  ];

  final List<Map<String, dynamic>> _newReleases = [
    {
      "title": "E222 What is Billionaire “Bill Gates” hiding from the world.",
      "subText": "Bill gates is the founder and former CEO of trillion dollar comapany Microsoft andhe his known for many other philantrophic work.....",
      "day": "Today",
      "duration": "40min",
    },
    {
      "title": "E222 What is Billionaire “Bill Gates” hiding from the world.",
      "subText": "Bill gates is the founder and former CEO of trillion dollar comapany Microsoft andhe his known for many other philantrophic work.....",
      "day": "Today",
      "duration": "40min",
    },
    {
      "title": "E222 What is Billionaire “Bill Gates” hiding from the world.",
      "subText": "Bill gates is the founder and former CEO of trillion dollar comapany Microsoft andhe his known for many other philantrophic work.....",
      "day": "Today",
      "duration": "40min",
    },
  ];

  //GETTERS
  List<Map<String, dynamic>> get popular => _popular;
  List<Map<String, dynamic>> get newReleases => _newReleases;



  // ============ SEARCH SCREEN STATE =============
   final List<Map<String, dynamic>> _categories = [
     {
       "name": "Technology"
     },
     {
       "name": "Education"
     },
     {
       "name": "Comedy"
     },
     {
       "name": "Celebrity"
     },
     {
       "name": "Children"
     },
     {
       "name": "Movie"
     },
  ];

  //GETTERS
  List<Map<String, dynamic>> get categories => _categories;
}