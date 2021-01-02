import 'package:flutter/material.dart';
import 'package:forsat/presentation/Opportunities/opportunites_page.dart';
import 'package:forsat/presentation/auth/account_page.dart';
import 'package:forsat/presentation/favorites/favorites_page.dart';
import 'package:forsat/presentation/forum/questions_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController();
  final List<Widget> _screens = [
    OpportunitiesPage(),
    QuestionsPage(),
    FavoritesPage(),
    AccountPage()
  ];

  int _selectedIndex = 0;
  void _onPageChanged(int pageIndex) {
    setState(() {
      _selectedIndex = pageIndex;
    });
    print(_selectedIndex);
  }

  void _onItemTapped(int itemIndex) {
    _pageController.jumpToPage(itemIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: _screens,
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
              title: Text(
                "Opportunities",
                style: TextStyle(
                    color: _selectedIndex == 0 ? Colors.blue : Colors.grey),
              ),
              icon: Icon(Icons.home,
                color: _selectedIndex == 0 ? Colors.blue : Colors.grey,
              )),
          BottomNavigationBarItem(
              title: Text(
                "Forum",
                style: TextStyle(
                    color: _selectedIndex == 1 ? Colors.blue : Colors.grey),
              ),
              icon: Icon(Icons.chat,
                color: _selectedIndex == 1 ? Colors.blue : Colors.grey,
              )),
          BottomNavigationBarItem(
              title: Text(
                "Favorites",
                style: TextStyle(
                  color: _selectedIndex == 2 ? Colors.blue : Colors.grey),
              ),
              icon: Icon(Icons.favorite,
                color: _selectedIndex == 2 ? Colors.blue : Colors.grey
              )),
          BottomNavigationBarItem(
              title: Text(
                "Account",
                style: TextStyle(
                    color: _selectedIndex == 3 ? Colors.blue : Colors.grey),
              ),
              icon: Icon(Icons.person,
                color: _selectedIndex == 3 ? Colors.blue : Colors.grey,
              ))
        ],
      ),
    );
  }
}
