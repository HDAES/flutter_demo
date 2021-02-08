/*
 * @Descripttion: 
 * @Author: Hades
 * @Date: 2021-02-07 14:39:26
 * @LastEditTime: 2021-02-08 11:41:41
 */
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/index.dart';
import 'package:flutter_demo/routers/application.dart';
import 'package:flutter_demo/routers/routes.dart';
import 'package:bot_toast/bot_toast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    final botToastBuilder = BotToastInit(); 
    final router = FluroRouter();
    Routes.configRoutes(router);
    Application.router = router;

    return MaterialApp(
      title: 'Flutter Demo',
      onGenerateRoute: Application.router.generator,
      builder: (context, child) => Scaffold(
        resizeToAvoidBottomPadding: false,
        body:GestureDetector(
          onTap: (){
            FocusScopeNode currentFocus = FocusScope.of(context);
            if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
              FocusManager.instance.primaryFocus.unfocus();
            }
          },
          child: botToastBuilder(context,child),
        )
      ),
      home: IndexPage(),
    );
  }
}

