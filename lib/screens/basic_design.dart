import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        const Image(image: AssetImage('assets/landscape.jpg')),
        //Titulo
        const Tittle(),
        //Bottom Section
        const ButtonSection(),
        //Description
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 15),
          child: const Text(
              'Non laboris do labore anim voluptate irure cupidatat commodo. Voluptate magna labore ex pariatur cupidatat esse labore nostrud et excepteur. Eiusmod fugiat duis nisi occaecat cupidatat do aliqua sint consectetur aliqua cillum aliqua. Do laborum cupidatat mollit dolor ea esse esse veniam pariatur consectetur velit est non occaecat. Aliquip esse officia proident pariatur adipisicing Lorem proident quis culpa. Ut occaecat adipisicing ut mollit reprehenderit in tempor ullamco ad ipsum laboris dolor nulla dolore. Laborum ut elit officia ullamco nulla ad quis eiusmod non.',
              textAlign: TextAlign.justify),
        )
      ],
    ));
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(icon: Icons.call, texto: 'Call'),
          CustomButton(icon: Icons.map, texto: 'Route'),
          CustomButton(icon: Icons.share, texto: 'Share'),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String texto;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.texto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue.shade300,
          size: 30,
        ),
        Text(
          texto,
          style: TextStyle(color: Colors.blue.shade300),
        ),
      ],
    );
  }
}

class Tittle extends StatelessWidget {
  const Tittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text('Oeschinen Lake Campground',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Kandersteg Swizerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41'),
        ],
      ),
    );
  }
}
