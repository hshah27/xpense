import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:xpense/utils/colors.dart';
import 'package:xpense/utils/constants.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileContainer1(),
      desktop: DesktopContainer1(),
    );
  }

// ===========Desktop===============
  Widget DesktopContainer1() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Track your \nexpenses to \nsave money',
                  style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                      height: 1.2),
                ),
                SizedBox(height: 5),
                Text(
                  'Helps you to organise your income and expenses',
                  style: TextStyle(fontSize: 19.7, color: Colors.grey.shade400),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      height: 45,
                      child: ElevatedButton.icon(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(AppColors.primary)),
                        onPressed: () {},
                        label: Text('Try free Demo'),
                        icon: Icon(Icons.arrow_drop_down_outlined),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      '-Web, iOS and Android',
                      style: TextStyle(
                          fontSize: 19.7, color: Colors.grey.shade400),
                    )
                  ],
                )
              ],
            ),
          )),
          Expanded(
              child: Container(
            height: 530,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          )),
        ],
      ),
    );
  }

// =============MOBILE==================
  Widget MobileContainer1() {
    return Container(
      // margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ),
          SizedBox(height: 20),
          Text(
            'Track your \nexpenses to \nsave money',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1.2),
          ),
          SizedBox(height: 5),
          Text(
            'Helps you to organise \nyour income and expenses',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 45,
            child: ElevatedButton.icon(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.primary)),
              onPressed: () {},
              label: Text('Try free Demo'),
              icon: Icon(Icons.arrow_drop_down_outlined),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            '-Web, iOS and Android',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
          ),
        ],
      ),
    );
  }
}
