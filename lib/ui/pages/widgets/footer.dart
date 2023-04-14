import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      color: const Color(0xff393A3A),
      // child: Padding(
        // padding: const EdgeInsets.only(left: 70, right: 70, top: 5, bottom: 0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              'Magic For a Skin',
              style: GoogleFonts.raleway(
                  fontSize: 32, color: const Color(0xffA9A9A9)),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 28,
            ),
            const SizedBox(
              height: 42,
            ),
            Column(
              children: [
                RichText(
                  textAlign: TextAlign.end,
                  text: TextSpan(
                    text: 'Copyright© 2021',
                    style: GoogleFonts.raleway(
                        fontSize: 14, color: Colors.white24),
                    children: <TextSpan>[
                      TextSpan(
                          text: " D'Mahiz Co. ",
                          style: GoogleFonts.raleway(
                              color: const Color(0xffC09C9D))),
                      const TextSpan(
                        text: "Products LLC",
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      // ),
    );
  }
}
