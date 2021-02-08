import 'package:flutter/material.dart';

class BizCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Biz Card"),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            _getCard(context),
            _getAvatar(),
          ],
        ),
      ),
    );
  }

  _getCard(BuildContext context) {
    return Container(
      width: 350,
      height: 200,
      margin: EdgeInsets.all(50.0),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(14.5),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Muhammad Hamza",
            style: TextStyle(
              fontSize: 20.9,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
            "joinadmin@gamil.com",
            style: TextStyle(
              fontSize: 20.9,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person_outline),
              Text("T: @joinadmin@gmail.com"),
            ],
          )
        ],
      ),
    );
  }

  _getAvatar() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(50.0),
        ),
        border: Border.all(
          color: Colors.redAccent,
          width: 1.2,
        ),
        image: DecorationImage(
          image: NetworkImage("https://picsum.photos/300/300"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
