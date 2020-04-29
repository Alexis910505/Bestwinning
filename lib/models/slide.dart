import 'package:flutter/material.dart';

class Slide{
  final String imageUrl;
  final String title;
  final String subtitle;
  final String description;
  final String name;
  final String surname;
  final Function onTap;

  Slide({
    @required this.imageUrl,
    @required this.title,
    @required this.subtitle,
    @required this.description,
    @required this.name,
    @required this.surname,
    @required this.onTap
  });
  
}

final slideList = [
  Slide(
      imageUrl: 'assets/trader.png',
      title: '25%',
      subtitle: 'Pre Macht',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu '
          'viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla',
      name: 'Pedro',
      surname: 'Ramos Perez',
      onTap:(){}
  ),
  Slide(
      imageUrl: 'assets/trader.png',
      title: '25%',
      subtitle: 'Pre Macht',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu '
          'viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla',
      name: 'Pedro',
      surname: 'Ramos Perez',
      onTap:(){}
  ),
  Slide(
      imageUrl: 'assets/trader.png',
      title: '25%',
      subtitle: 'Pre Macht',
      description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec dapibus tincidunt bibendum. Maecenas eu '
          'viverra orci. Duis diam leo, porta at justo vitae, euismod aliquam nulla',
      name: 'Pedro',
      surname: 'Ramos Perez',
      onTap:(){}
  ),
];