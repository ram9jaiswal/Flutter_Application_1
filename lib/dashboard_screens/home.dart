import 'package:flutter/material.dart';

import 'my_home.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  final List<Tab> topTabs = <Tab>[
    Tab(icon: Icon(Icons.home_outlined)),
    Tab(icon: Icon(Icons.search)),
    Tab(icon: Icon(Icons.message_outlined)),
    Tab(icon: Icon(Icons.notifications_outlined)),
  ];
  @override
  void initState() {
    _tabController =
        TabController(length: topTabs.length, initialIndex: 0, vsync: this);
    super.initState();
  }

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
            bottom: TabBar(
                controller: _tabController,
                indicatorColor: Colors.black,
                tabs: topTabs)),
        body: TabBarView(
          controller: _tabController,
          children: [
            Home(),
          ],
        ));
  }
}
