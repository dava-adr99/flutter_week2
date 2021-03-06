import 'package:flutter/material.dart';
import 'package:flutter_week_2/content/almbumList.dart';
import 'package:flutter_week_2/content/songsList.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.blue,
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Belajar SliverAppBar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: NetworkImage('https://images.pexels.com/photos/3807657/pexels-photo-3807657.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                // padding: new EdgeInsets.all(10.0),
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    // indicatorColor: Colors.red,
                    labelColor: Color.fromARGB(255, 0, 81, 202),
                    unselectedLabelColor: Colors.white60,
                    tabs: [
                      new Tab(
                        icon: new Icon(Icons.audiotrack),
                        text: "Songs",
                      ),
                      new Tab(
                        icon: new Icon(Icons.collections),
                        text: "Gallery",
                      ),
                      new Tab(
                        icon: new Icon(Icons.playlist_play),
                        text: "Playlist",
                      ),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              SongsContent(),
              AlbumContent(),
              new Container(
                width: 100,
                child: Text('1. Songs of Sadness - crying people'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);
  final TabBar _tabBar;

  double get minExtent => _tabBar.preferredSize.height;
  double get maxExtent => _tabBar.preferredSize.height;

  Widget build(BuildContext context, double shrinkOffset, bool overlabsContents) {
    return new Container(
      color: Colors.blue,
      child: _tabBar,
    );
  }

  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
