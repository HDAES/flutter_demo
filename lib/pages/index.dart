/*
 * @Descripttion:  入口文件
 * @Author: Hades
 * @Date: 2021-02-07 14:47:50
 * @LastEditTime: 2021-02-08 09:42:23
 */

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/component/index.dart';

class IndexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: <Widget>[
          ComponentPage()
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add')
        ],
        initialActiveIndex: 0,//optional, default as 0
        onTap: (int i) => print('click index=$i'),
      ),
    );
  }
}