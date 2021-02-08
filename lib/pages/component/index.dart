/*
 * @Descripttion: 
 * @Author: Hades
 * @Date: 2021-02-07 16:03:59
 * @LastEditTime: 2021-02-08 10:29:33
 */
import 'package:flutter/material.dart';
import 'package:flutter_demo/routers/routes.dart';

class ComponentPage extends StatefulWidget {
  @override
  _ComponentPageState createState() => _ComponentPageState();
}

class _ComponentPageState extends State<ComponentPage> {
  List<Map> list = [
    {
      "index": 0,
      "name": "底部导航",
      "isExpanded": false,
      "children": [
        {"name": "convex_bottom_bar", "url": Routes.convexBottomBar}
      ]
    },
    {
      "index": 1,
      "name": "底部导航",
      "isExpanded": false,
      "children": [
        {"name": "convex_bottom_bar", "url": Routes.convexBottomBar}
      ]
    }
  ];
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('组件'),
      ),
      body: SingleChildScrollView(
        child: ExpansionPanelList(
          elevation: 0,
          //开关动画时长
          animationDuration: Duration(milliseconds: 500),
          //开关回调
          expansionCallback: (panelIndex, isExpanded) {
            setState(() {
              list[panelIndex]['isExpanded'] = !isExpanded;
            });
          },
          children: list.map<ExpansionPanel>((data) {
            return ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder: (context, isExpanded) {
                return ListTile(
                  title: Text(data['name']),
                );
              },
              body: Container(
                height: (data['children'].length * 50).toDouble(),
                child: ListView.builder(
                  itemCount:data['children'].length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      onTap: ()=>Routes.navigateTo(context, data['children'][index]['url']),
                      title: Text(data['children'][index]['name']),
                    );
                  },
                ),
              ),
              isExpanded: data['isExpanded'],
            );
          }).toList(),
        ),
      ),
    );
  }
}
