import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Tab> myTabs = <Tab>[
    Tab(
      text: 'Food',
    ),
    Tab(text: 'Fashion'),
    Tab(text: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsetsDirectional.only(
                  start: 30.0,
                  bottom: 80.0,
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          size: 15,
                        )),
                  ],
                ),
              ),
              bottom: TabBar(
                tabs: myTabs,
              ),
            ),
            SliverFillRemaining(
              child: TabBarView(
                children: myTabs.map((Tab tab) {
                  return Center(
                    child: Text(
                      'Content for ${tab.text}',
                      style: TextStyle(fontSize: 24),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
