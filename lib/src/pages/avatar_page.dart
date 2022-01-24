// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar Page'),
        actions: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://sm.ign.com/t/ign_latam/screenshot/default/dnl_qxar.1280.jpg'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('LB'),
              backgroundColor: Colors.green,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/img/spinning-loading.gif'),
          image: NetworkImage(
              'https://static.wikia.nocookie.net/deathnote/images/d/dd/L_-_Anime.png/revision/latest?cb=20190315084358&path-prefix=es'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
