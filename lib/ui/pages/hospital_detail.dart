import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:teramedik/models/image_data.dart';

class Hospitaldetail extends StatelessWidget {
  const Hospitaldetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(),
        body: Hero(
            tag: 'shs',
            child: Image.network(
              "https://images.unsplash.com/photo-1638579837195-3fb3b3287506?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
            )),
      ),
    );
  }
}
