import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ms_globle_task/screens/profile.dart';

import 'all_post_screen.dart';

class PostMainScreen extends StatelessWidget {
  const PostMainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('POST'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              padding: const EdgeInsets.symmetric(horizontal: 20),
            )
          ],
          bottom:const TabBar(
            indicatorColor: Colors.white,
          tabs: [
          Tab(child: Text('ALL POST',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
          Tab(child: Text('PROFILE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)),
        ]),
        ),
        body: TabBarView(children: [
          BuildScreen(),
          ProfileScreen()
        ]),
        drawer: const Drawer(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}


