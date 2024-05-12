import 'package:credit_card/query_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'model_response.dart';

class LastPage extends StatefulWidget {
final String result;

  const LastPage({super.key, required this.result});

  @override
  State<LastPage> createState() => _LastPageState();
}

class _LastPageState extends State<LastPage> {
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 80.h,),
                 Text(widget.result,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w700,
                    fontSize: 22,
                  ),
                ),
                SizedBox(height: 80.h,),
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
                      "TRY AGAIN",
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
          ),
        ),
      ),
    );
  }
}
