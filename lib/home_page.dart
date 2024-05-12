import 'package:credit_card/query_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.purpleAccent.shade200,
                  Colors.blueAccent,
                  Colors.lightBlue.shade200,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
            )
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(
                          children: [
                            Image(
                              image: const AssetImage("lib/images/credit.png"),
                              width: 330.w,
                              height: 510.h,
                            ),
                            Container(
                              width: 250.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                        Colors.purpleAccent.shade200,
                                        Colors.blueAccent.shade200,
                                        Colors.lightBlue.shade200,
                                      ],
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight
                                  ),
                                  borderRadius: BorderRadius.circular(13)
                              ),
                              child: ElevatedButton(
                                onPressed:(){
                                  setState(() {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const QueryPage()));
                                  });},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                child: const Text(
                                  "LET'S START",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize:18
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
