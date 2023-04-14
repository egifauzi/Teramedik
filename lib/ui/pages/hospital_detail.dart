// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:teramedik/models/image_data.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Hospitaldetail extends StatelessWidget {
  const Hospitaldetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Hero(
                tag: 'shs',
                child: Image.network(
                  "https://images.unsplash.com/photo-1638579837195-3fb3b3287506?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=500&q=60",
                )),
            //     Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     FlatButton(
            //       hoverColor: Colors.pink[200],
            //       splashColor: Colors.black,
            //       height: 240,
            //       minWidth: 240,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(150)),
            //       onPressed: () {},
            //       onLongPress: () => _launchWAUrl(),
            //       child: Image.asset(
            //         'bigWA.png',
            //         width: 210,
            //         height: 210,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 37,
            //     ),
            //     FlatButton(
            //       hoverColor: Colors.pink[200],
            //       splashColor: Colors.black,
            //       height: 240,
            //       minWidth: 240,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(150)),
            //       onPressed: () {},
            //       onLongPress: _launchFBUrl,
            //       child: Image.asset(
            //         'bigFB.png',
            //         width: 210,
            //         height: 210,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 37,
            //     ),
            //     FlatButton(
            //       hoverColor: Colors.pink[200],
            //       splashColor: Colors.black,
            //       height: 240,
            //       minWidth: 240,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(150)),
            //       onPressed: () {},
            //       onLongPress: () => _launchCallUrl(),
            //       child: Image.asset(
            //         'bigCALL.png',
            //         width: 210,
            //         height: 210,
            //       ),
            //     ),
            //     const SizedBox(
            //       width: 37,
            //     ),
            //     FlatButton(
            //       hoverColor: Colors.pink[200],
            //       splashColor: Colors.black,
            //       height: 240,
            //       minWidth: 240,
            //       shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(150)),
            //       onPressed: () {},
            //       onLongPress: () {
            //         _launchInstaUrl();
            //       },
            //       child: Image.asset(
            //         'bigIG.png',
            //         width: 210,
            //         height: 210,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 37,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}

_launchInstaUrl() async {
  const _urlIg = 'https://www.instagram.com/irwanshope_hwi';
  await canLaunchUrlString(_urlIg)
      ? await launchUrlString(_urlIg)
      : throw 'could not launch $_urlIg';
}

_launchWAUrl() async {
  const _urlWa =
      'https://api.whatsapp.com/send?phone=6281911493731&text=Assalamualaikum%20Weng,%20Saya%20tertarik%20untuk%20membeli%20produk%20HWI%20ini';
  await canLaunchUrlString(_urlWa)
      ? await launchUrlString(_urlWa)
      : throw 'could not launch $_urlWa';
}

_launchFBUrl() async {
  const _urlFb = 'https://www.facebook.com/aweng.aweng.7545708';
  await canLaunchUrlString(_urlFb)
      ? await launchUrlString(_urlFb)
      : throw 'could not launch $_urlFb';
}

_launchCallUrl() async {
  const _urlCall = 'https://www.google.com/awengKecebadai';
  await canLaunchUrlString(_urlCall)
      ? await launchUrlString(_urlCall)
      : throw 'could not launch $_urlCall';
}
