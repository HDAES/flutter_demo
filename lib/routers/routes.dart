/*
 * @Descripttion: 
 * @Author: Hades
 * @Date: 2021-02-07 16:29:09
 * @LastEditTime: 2021-02-08 15:08:32
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/routers/application.dart';
import 'package:flutter_demo/routers/router_handler.dart';

class Routes {

  static String convexBottomBar = '/convexBottomBar';
  static String web = '/web';
  static String fluidNavBar = '/fluidNavBar';

  static void configRoutes(FluroRouter router){
    router.notFoundHandler = new Handler(
      handlerFunc: (BuildContext context, Map<String, dynamic> params){
        print('ERROR====>ROUTE WAS NOT FONUND!!!');
        return ;
      }
    );

    router.define(convexBottomBar, handler: convexBottomBarHandler);
    router.define(web, handler: webHandler);
    router.define(fluidNavBar, handler: fluidNavBarHandler);


  }
   
  // 对参数进行encode，解决参数中有特殊字符，影响fluro路由匹配
  static Future navigateTo(BuildContext context, String path, {Map<String, dynamic> params, TransitionType transition = TransitionType.fadeIn,bool clear = false,bool replace= false}) {
    String query =  "";
    if (params != null) {
      int index = 0;
      for (var key in params.keys) {
        var value = Uri.encodeComponent(params[key].toString());
        if (index == 0) {
          query = "?";
        } else {
          query = query + "\&";
        }
        query += "$key=$value";
        index++;
      }
    }
    if(query!='') //print('我是navigateTo传递的参数：$query');
    path = path + query;
    return Application.router.navigateTo(context, path, transition:transition,clearStack: clear,replace: replace);
  }



}