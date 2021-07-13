import 'package:flutter/material.dart';
import 'package:kanban/app/app.dart';
import 'package:kanban/core/theme.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    // TODO: implement initState

    tabController = TabController(length: 4, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          actions: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppTheme.accent,
              ),
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Icon(Icons.arrow_back),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              color: AppTheme.grey,
              child: TabBar(
                controller: tabController,
                tabs: [
                  Tab(
                    text: 'On hold',
                  ),
                  Tab(
                    text: 'In Progress',
                  ),
                  Tab(
                    text: 'Needs Review',
                  ),
                  Tab(
                    text: 'Approved',
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: tabController,
                children: [
                  Container(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            ),
          ],
        ),
      );
}
