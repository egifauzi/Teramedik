import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teramedik/ui/pages/hospital_detail.dart';
import 'package:teramedik/ui/pages/widgets/footer.dart';
import 'package:http/http.dart' as http;

import '../models/image_data.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
  final String url = 'https://api.weteamproject.com/api.json';

  Future getDataHospitals() async {
    var response = await http.get(Uri.parse(url));
    print(json.decode(response.body));
    return json.decode(response.body);
  }

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _crossAxisCount = 2;

  // double _aspectRatio = 1.5;

  ViewType viewType = ViewType.grid;

  List<ImageData> itemList = getImageDataList();
  

  @override
  Widget build(BuildContext context) {
    // getDataHospitals();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Teramedik"),
        actions: [
          IconButton(
            icon: Icon(
                viewType == ViewType.list ? Icons.grid_on : Icons.view_list),
            onPressed: () {
              if (viewType == ViewType.list) {
                _crossAxisCount = 2;
                // _aspectRatio = 1.5;
                viewType = ViewType.grid;
              } else {
                _crossAxisCount = 1;
                // _aspectRatio = 15;
                viewType = ViewType.list;
              }
              setState(() {});
            },
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: Theme.of(context).canvasColor,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 10.0,
                  ),
                ],
              ),
              child: Container(
                  height: MediaQuery.of(context).size.height,
                  margin: const EdgeInsets.all(10),
                  child: GridView.count(
                    crossAxisCount: _crossAxisCount,
                    padding: EdgeInsets.zero,
                    childAspectRatio: 3 / 2,
                    mainAxisSpacing: 80,
                    crossAxisSpacing: 20,
                    children: itemList.map((ImageData imageData) {
                      return getGridItem(imageData);
                    }).toList(),
                  ))),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width,
              height: 80,
              color: Colors.yellow,
              child: Text(
                'Ver. 1.0.0',
                style: GoogleFonts.roboto(
                  fontSize: 20,
                  color: Colors.black26,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget getGridItem(ImageData imageData) {
    // LISTttttttt
    return Column(
      children: [
        Container(
          // color: Colors.amber,
          child: (viewType == ViewType.list)
              ? InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Hospitaldetail()));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      // color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black45,
                            blurRadius: 7,
                            offset: Offset(
                              10,
                              12,
                            ), // Shadow position
                            spreadRadius: 0.5),
                      ],
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        imageData.path.toString(),
                        // height: 300,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                )

              // GRIDDDDDD

              : InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Hospitaldetail()));
                  },
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          // color: Colors.teal,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.black45,
                                blurRadius: 7,
                                offset: Offset(
                                  10,
                                  12,
                                ), // Shadow position
                                spreadRadius: 0.5),
                          ],
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              imageData.path,
                            )),
                      ),
                    ],
                  ),
                ),
        ),
      ],
    );
  }
}

enum ViewType { grid, list }
