import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_tube/util/ext.dart';

import '../../theme/my_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
          statusBarColor: Colors.white,
        ),
        elevation: 8,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // open drawer
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/icons/ic_youtube.svg'),
            SizedBox(width: width * 0.02),
            const Text(
              'MyTube!',
              style: TextStyle(
                fontFamily: 'Roboto-Bold',
                fontSize: 20,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            color: MyColors.lightGrey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text(
                    textLengthStyle(
                        'Some text sometext sometext sometext somete', 30),
                    style: const TextStyle(
                      fontFamily: 'Roboto-Regular',
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: width * 0.06,
                  ),
                  MaterialButton(
                    color: Colors.white,
                    elevation: 0,
                    onPressed: () {},
                    child: const Text('Read more'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
