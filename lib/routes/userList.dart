import 'package:flutter/material.dart';
import 'package:flutter_zp/Components/searchBar.dart';

class UserListPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _UserListState();
  }
}

class _UserListState extends State<UserListPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  var tabs = <Tab>[
    Tab(
      text: "全部",
    ),
    Tab(
      text: "全职",
    ),
    Tab(
      text: "兼职",
    ),
    Tab(
      text: "实习",
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  void _onTap() {}

  void _onChanged(text) {}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: PreferredSize(
            child: Container(
              color: Colors.white,
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.indigoAccent, Colors.deepPurple])),
                    child: Text(
                      '简历',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: SearchBar(onTap: _onTap, onChanged: _onChanged),
                  ),
                  Container(
                    height: 50,
                    child: TabBar(
                      unselectedLabelColor: Colors.black45,
                      indicatorColor: Colors.purpleAccent,
                      labelColor: Colors.purpleAccent,
                      tabs: tabs,
                      controller: _tabController,
                    ),
                  )
                ],
              ),
            ),
            preferredSize: Size(MediaQuery.of(context).size.width, 180)),
        body: Column(
          children: <Widget>[
            Container(
                padding: EdgeInsets.symmetric(vertical: 15),
                color: Colors.white,
                child: null),
          ],
        ),
      ),
    );
  }
}
