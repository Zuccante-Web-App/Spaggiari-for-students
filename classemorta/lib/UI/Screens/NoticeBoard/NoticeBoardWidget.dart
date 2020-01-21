import 'package:classemorta/UI/Screens/NoticeBoard/NoticeBoardListItemWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class MyNoticeBoard extends StatefulWidget {
  GlobalKey<AnimatedListState> _newsList = GlobalKey<AnimatedListState>();
  List<String> _news;
  List<Bacheca> _bachecaList = [new Bacheca('Circ N: 228', 'Test')];

  MyNoticeBoard({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyNoticeBoardState createState() => _MyNoticeBoardState();
}

class _MyNoticeBoardState extends State<MyNoticeBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bacheca'),),
      body: Center(
        child: AnimatedList(
            key: widget._newsList,
            initialItemCount: widget._bachecaList.length,
            itemBuilder: (context, index, animation) {
              return ScaleTransition(
                  scale: animation,
                  child: NoticeBoardListItemWidget(
                      widget._bachecaList[index].nome,
                      widget._bachecaList[index].descrizione));
            }),
      ),
    );
  }
}

class Bacheca {
  String nome;
  String descrizione;

  Bacheca(this.nome, this.descrizione);
}
