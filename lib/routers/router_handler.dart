/*
 * @Descripttion: 
 * @Author: Hades
 * @Date: 2021-02-07 16:29:30
 * @LastEditTime: 2021-02-08 15:11:47
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/common/widgets/web.dart';
import 'package:flutter_demo/pages/component/NavigationBar/convex_bottom_bar.dart';
import 'package:flutter_demo/pages/component/NavigationBar/fluid_nav_bar.dart';


Handler convexBottomBarHandler = Handler(
  handlerFunc: (BuildContext context, Map<String,List<String>> params){
    return ConvexBottomBarPage();
  }
);

Handler webHandler = Handler(
  handlerFunc: (BuildContext context, Map<String,List<String>> params){
    return WebPage(url:params['url'][0]);
  }
);
Handler fluidNavBarHandler = Handler(
  handlerFunc: (BuildContext context, Map<String,List<String>> params){
    return FluidNavBarPage();
  }
);
