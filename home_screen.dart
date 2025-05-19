import 'package:flutter/material.dart';
import 'package:new_sample001/screen1.dart';
import 'package:new_sample001/screen2.dart';
import 'package:new_sample001/screen3.dart';
import 'package:new_sample001/screen4.dart';
import 'package:new_sample001/screen5.dart';
import 'package:new_sample001/screen6.dart';

class HomeScreen extends StatelessWidget {
  final String title;

  const HomeScreen({super.key, required this.title});
  //ホーム画面のボタンの設定
  Widget home_button_custom(BuildContext context, String title, Widget nextScreen) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextScreen), // 指定されたscreenに遷移
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white, // ボタンを青で塗りつぶして文字は白
      ),
      child: Text(
        title,  //ボタンに表示する文字
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('ホーム画面'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),  //画面の端に余白を作成
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly, // 行間のスペースを均等にする
            children: [
              // 1列に2つのボタンを配置したrowを3表示
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // ボタン同士の間隔を均等に
                children: [
                  home_button_custom(context, 'GPAの計算', Function1_Screen(title: 'GPAの計算')), // 左側のボタン
                  home_button_custom(context, '現在の空き教室',Fuction2_Screen(title: '現在の空き教室')), // 右側のボタン
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // ボタン同士の間隔を均等に
                children: [
                  home_button_custom(context, 'ToDoリスト', Fuction3_Screen(title: 'ToDoリスト')), // 左側のボタン
                  home_button_custom(context, '食堂',Function4_Screen(title: '食堂')), // 右側のボタン
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // ボタン同士の間隔を均等に
                children: [
                  home_button_custom(context, 'ブックマーク', Fuction5_Screen(title: 'ブックマーク')), // 左側のボタン
                  home_button_custom(context, '天気予報',Fuction6_Screen(title: '天気予報')), // 右側のボタン
                ],
              ),
            ],
          ),
        )
    ),
    );
  }
}