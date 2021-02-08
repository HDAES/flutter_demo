/*
 * @Descripttion: 网页
 * @Author: Hades
 * @Date: 2021-02-08 14:26:24
 * @LastEditTime: 2021-02-08 14:52:22
 */
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebPage extends StatelessWidget {
  final String url;
  WebPage({this.url});
  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: url,
    );
  }
}