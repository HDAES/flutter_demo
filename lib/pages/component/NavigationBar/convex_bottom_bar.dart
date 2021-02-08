/*
 * @Descripttion: 底部导航
 * @Author: Hades
 * @Date: 2021-02-07 16:22:24
 * @LastEditTime: 2021-02-08 14:52:52
 */

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/routers/routes.dart';


class ConvexBottomBarPage extends StatefulWidget {
  @override
  _ConvexBottomBarPageState createState() => _ConvexBottomBarPageState();
}

class _ConvexBottomBarPageState extends State<ConvexBottomBarPage> {
  String url = 'https://github.com/hacktons/convex_bottom_bar/blob/master/README-zh.md';
  Color backgroundColor = Colors.blue;
  double height = 50;
  double curveSize = 100;
  double top = 30;
  TabStyle style = TabStyle.custom;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('convex_bottom_bar 2.6.0'),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 50),
        children: [
          Row(
            children: [
              Text('颜色:'),
              Expanded(
                child: RadioListTile(
                  value: Colors.blue,
                  groupValue: backgroundColor,
                  title: Text('蓝色'),
                  onChanged: (v){ setState(() {
                    backgroundColor = v;
                  });},
                ),
              ),
              Expanded(
                child: RadioListTile(
                  value: Colors.red,
                  groupValue: backgroundColor,
                  title: Text('红色'),
                  onChanged: (v){ setState(() {
                    backgroundColor = v;
                  });},
                ),
              )
            ],
          ),
          Row(
            children: [
              Text('高度:'),
              Expanded(
                child: Slider(
                  onChanged: (e){
                    setState(() {
                      height = e;
                    });
                  },
                  value: height,
                  max: 100,
                  min: 30,
                  divisions:70,
                  label: '$height',
                  
                )
              ),
            ],
          ),
          Row(
            children: [
              Text('凸形大小:'),
              Expanded(
                child: Slider(
                  onChanged: (e){
                    setState(() {
                      curveSize = e;
                    });
                  },
                  value: curveSize,
                  max: 200,
                  min: 100,
                  divisions:10,
                  label: '$height', 
                )
              ),
            ],
          ),
          Row(
            children: [
              Text('上边缘的距离:'),
              Expanded(
                child: Slider(
                  onChanged: (e){
                    setState(() {
                      top = e;
                    });
                  },
                  value: top,
                  max: 50,
                  min: 0,
                  divisions:50,
                  label: '$top', 
                )
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('支持的样式:'),
              Expanded(
                child: Column(
                  children: [
                    RadioListTile(
                      value: TabStyle.custom,
                      groupValue: style,
                      title: Text('custom'),
                      onChanged: (v){
                        setState(() {
                          style = v;
                        });
                      },
                    ),
                    RadioListTile(
                      value: TabStyle.fixed,
                      groupValue: style,
                      title: Text('fixed'),
                      onChanged: (v){
                        setState(() {
                          style = v;
                        });
                      },
                    ),
                    RadioListTile(
                      value: TabStyle.fixedCircle,
                      groupValue: style,
                      title: Text('fixedCircle'),
                      onChanged: (v){
                        setState(() {
                          style = v;
                        });
                      },
                    ),
                    RadioListTile(
                      value: TabStyle.flip,
                      groupValue: style,
                      title: Text('flip'),
                      onChanged: (v){
                        setState(() {
                          style = v;
                        });
                      },
                    ),
                    RadioListTile(
                      value: TabStyle.react,
                      groupValue: style,
                      title: Text('react'),
                      onChanged: (v){
                        setState(() {
                          style = v;
                        });
                      },
                    ),
                    RadioListTile(
                      value: TabStyle.reactCircle,
                      groupValue: style,
                      title: Text('reactCircle'),
                      onChanged: (v){
                        setState(() {
                          style = v;
                        });
                      },
                    ),
                    RadioListTile(
                      value: TabStyle.textIn,
                      groupValue: style,
                      title: Text('textIn'),
                      onChanged: (v){
                        setState(() {
                          style = v;
                        });
                      },
                    ),
                    RadioListTile(
                      value: TabStyle.titled,
                      groupValue: style,
                      title: Text('titled'),
                      onChanged: (v){
                        setState(() {
                          style = v;
                        });
                      },
                    ),
                    
                  ],
                ),
              )
            ],
          ),
          Row(
            children: [
              Text("网址："),
              Expanded(
                child: GestureDetector(
                  onTap: ()=>Routes.navigateTo(context, Routes.web,params: {'url':url}),
                  child: Text(
                    url,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis
                  )
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: ConvexAppBar(
        backgroundColor: backgroundColor,
        height: height,
        curveSize:curveSize,
        top:-top,
        style: style,
        items: [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.map, title: 'Discovery'),
          TabItem(icon: Icons.add, title: 'Add'),
          TabItem(icon: Icons.message, title: 'Message'),
          TabItem(icon: Icons.people, title: 'Profile'),
        ],
        initialActiveIndex: 2,//optional, default as 0
        onTap: (int i) => print('click index=$i'),
      )
    );
  }

}