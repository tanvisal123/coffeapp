import 'package:coffee_app/HomePage.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';


class Bar extends StatefulWidget {
  const Bar({ Key? key }) : super(key: key);

  @override
  State<Bar> createState() => _BarState();
}

class _BarState extends State<Bar> {
  int _page = 0;
   late PageController _pageController;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey(); 

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        
        bottomNavigationBar: CurvedNavigationBar(
          key: _bottomNavigationKey,
          index: _page,
          height: 55,
          items: <Widget>[
            Icon(Icons.home, size: 25),
            Icon(Icons.favorite,size: 25),
            Icon(Icons.notification_add,size: 25),
            Icon(Icons.settings, size: 25),
           
          ],
          color: Colors.black45,
          buttonBackgroundColor: Colors.amber.shade800,
          backgroundColor: Color(0xFFF2E2E2E),
          animationCurve: Curves.easeInOut,
          animationDuration: Duration(milliseconds: 600),
          onTap: (index) {
            setState(() {
              _page = index;
              _pageController.jumpToPage(index);
            });
          },
          letIndexChange: (index) => true,
        ),
        body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() => _page = index);
            
          
          },
          children: <Widget>[
            
            HomePage(),
            HomePage(),
            HomePage(),
            HomePage(),
      
           
            
           
          ],
        ),
      ),
        );
  }
}