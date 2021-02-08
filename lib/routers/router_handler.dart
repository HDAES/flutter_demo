/*
 * @Descripttion: 
 * @Author: Hades
 * @Date: 2021-02-07 16:29:30
 * @LastEditTime: 2021-02-08 14:42:30
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/common/widgets/web.dart';
import 'package:flutter_demo/pages/component/NavigationBar/convex_bottom_bar.dart';


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
