import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/screens/home.dart';

class YoutubeMain extends StatefulWidget {
  @override
  _YoutubeMainState createState() => _YoutubeMainState();
}

class _YoutubeMainState extends State<YoutubeMain> {
  int _currentIndex = 0;

  _onTapped(int index) {
    setState(() {
      _currentIndex++;
      print('You tapped icon $index');
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _screens = [
      HomeScreen(),
      Center(child: Text('Trending')),
      Center(child: Text('Subscriptions')),
      Center(child: Text('Inbox')),
      Center(child: Text('Library')),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Image.asset('images/youtube_logo.png'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle),
          )
        ],
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTapped,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red[800],
        items: [
          BottomNavigationBarItem(title: Text('Home'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text('Trending'), icon: Icon(Icons.whatshot)),
          BottomNavigationBarItem(
              title: Text('Subscriptions'), icon: Icon(Icons.subscriptions)),
          BottomNavigationBarItem(title: Text('Inbox'), icon: Icon(Icons.mail)),
          BottomNavigationBarItem(
              title: Text('Library'), icon: Icon(Icons.folder)),
        ],
      ),
    );
  }
}
