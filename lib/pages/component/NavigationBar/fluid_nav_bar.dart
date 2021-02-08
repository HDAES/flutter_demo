/*
 * @Descripttion: fluid_nav_bar
 * @Author: Hades
 * @Date: 2021-02-08 15:07:09
 * @LastEditTime: 2021-02-08 15:17:08
 * https://github.com/gskinnerTeam/flutter_vignettes/tree/master/vignettes/fluid_nav_bar
 */

import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/common/widgets/fluid_nav_bar/fluid_nav_bar.dart';

class FluidNavBarPage extends StatefulWidget {
  @override
  _FluidNavBarPageState createState() => _FluidNavBarPageState();
}

class _FluidNavBarPageState extends State<FluidNavBarPage> {
  Widget _child;
  @override
  void initState() {
    _child = body1();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('fluid_nav_bar'),
      ),
      body: _child,
      bottomNavigationBar:FluidNavBar(onChange: _handleNavigationChange),
    );
  }

  void _handleNavigationChange(int index) {
    setState(() {
      switch (index) {
        case 0:
          _child = body1();
          break;
        case 1:
          _child = body2();
          break;
        case 2:
          _child =body3();
          break;
        
      }
      _child = AnimatedSwitcher(
        switchInCurve: Curves.easeOut,
        switchOutCurve: Curves.easeIn,
        duration: Duration(milliseconds: 500),
        child: _child,);
    });
  }
  Widget body1(){
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Text('body1'),
    );
  }
  Widget body2(){
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Text('body2'),
    );
  }
  Widget body3(){
    return Scaffold(
      backgroundColor: Colors.green,
      body: Text('body3'),
    );
  }
}