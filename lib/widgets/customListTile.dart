import 'package:flutter/material.dart';

import 'package:foodnow/models/listtilemodel.dart';

class CustomListtilefordrawer extends StatelessWidget {
  Listtilemodel listtilemodel;
  CustomListtilefordrawer({
    Key? key,
    required this.listtilemodel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(listtilemodel.icon),
      title: Text(listtilemodel.title),
    );
  }
}