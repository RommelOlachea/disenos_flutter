import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all_outlined,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.purpleAccent,
            icon: Icons.car_rental,
            text: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.shopping_bag,
            text: 'Shopping',
          ),
          _SingleCard(
            color: Colors.orangeAccent,
            icon: Icons.account_balance_wallet,
            text: 'Bills',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.deepPurple,
            icon: Icons.video_library_sharp,
            text: 'Entertainment',
          ),
          _SingleCard(
            color: Colors.greenAccent,
            icon: Icons.local_grocery_store,
            text: 'Grocery',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all_outlined,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.purpleAccent,
            icon: Icons.car_rental,
            text: 'Transport',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.shopping_bag,
            text: 'Shopping',
          ),
          _SingleCard(
            color: Colors.orangeAccent,
            icon: Icons.account_balance_wallet,
            text: 'Bills',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard(
      {super.key, required this.icon, required this.color, required this.text});

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          child: Icon(
            this.icon,
            size: 35,
          ),
          radius: 30,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          this.text,
          style: TextStyle(color: this.color, fontSize: 18),
        )
      ],
    );
    return _CardBackground(widget: column);
  }
}

class _CardBackground extends StatelessWidget {
  final Widget widget;

  const _CardBackground({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: widget,
          ),
        ),
      ),
    );
  }
}
