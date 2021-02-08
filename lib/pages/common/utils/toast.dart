/*
 * @Descripttion: 轻提示
 * @Author: Hades
 * @Date: 2021-02-08 11:45:59
 * @LastEditTime: 2021-02-08 11:46:17
 */
import 'package:bot_toast/bot_toast.dart';

class Toast{
  static show(String msg){
    BotToast.showText(text: msg);
   }
}
