import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  final String title;

  //コンストラクタ
  //引数を変数に格納(final String title)←引数の設定
  NextPage(this.title);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //widget.変数で継承したstateクラスで定義された変数を使用できる
        title: Text(widget.title),
      ),
      body: Column(
        //CrossAxisAlignment.start←gridの中で左揃え　右揃えの場合はend
        //gridの幅は未設定の場合は一番サイズの大きい要素の幅になる。
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              //幅などをカスタムするために使用する
              Container(width: 50, child: Text("ID")),
              Text(":"),
              Text("要素1"),
            ],
          ),
          //余白をつける(全体) 上だけの場合　EdgeInsets.only(top:20)
          Padding(padding: EdgeInsets.all(20)),
          Text("要素2")
        ],
      ),
    );
  }
}
