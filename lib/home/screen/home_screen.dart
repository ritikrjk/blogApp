import 'package:flutter/material.dart';
import 'package:frontend/home/widgets/blog_tile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  final List<String> blogCategories = [
    "Food",
    "Fashion",
    "Technology",
    "Travel",
    "LifeStyle",
    "Health",
    "Sports",
    "Entertainment",
    "Education",
    "Finance"
  ];

  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: blogCategories.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
          bottom: TabBar(
            controller: _tabController,
            isScrollable: true,
            tabs: blogCategories.map((String category) {
              return Tab(
                text: category,
              );
            }).toList(),
          ),
          actions: [
            PopupMenuButton(
              onSelected: (String value) {
                switch (value) {
                  case 'profile':
                    print('Profile');
                    break;
                  case 'settings':
                    print('Settings');
                    break;
                  case 'logout':
                    print('Log Out');
                    break;
                }
              },
              itemBuilder: (BuildContext context) => [
                PopupMenuItem<String>(
                  value: 'profile',
                  child: Row(
                    children: [
                      Icon(
                        Icons.person_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Profile'),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'settings',
                  child: Row(
                    children: [
                      Icon(
                        Icons.settings_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Settings'),
                    ],
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'logout',
                  child: Row(
                    children: [
                      Icon(
                        Icons.logout_rounded,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text('Log Out'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.create),
        ),
        body: Expanded(
          child: TabBarView(
              controller: _tabController,
              children: blogCategories.map((String category) {
                return BlogTile(category: category);
              }).toList()),
        ));
  }
}
