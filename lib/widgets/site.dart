import 'package:flutter/material.dart';

class SiteWidget extends StatelessWidget {
  const SiteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Image(image: NetworkImage("")),
        Container(
          width: 20,
          height: 20,
        ),
        Text('123'),
      ],
    );
  }
}

class SiteList extends StatelessWidget {
  const SiteList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5, //横轴三个子widget
        childAspectRatio: 1.3, //宽高比为1时，子widget
      ),
      children: <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.free_breakfast),
      ]
          .map(
            (e) => Column(
              children: [e, Text('123')],
            ),
          )
          .toList(),
    );
  }
}