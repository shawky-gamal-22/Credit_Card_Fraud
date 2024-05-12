import 'package:credit_card/last_page.dart';
import 'package:credit_card/radio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'cubit/my_cubit.dart';
import 'model.dart';



class QueryPage extends StatefulWidget {
  const QueryPage({Key? key}) : super(key: key);

  @override
  State<QueryPage> createState() => _QueryPageState();
}

class _QueryPageState extends State<QueryPage> {


  bool f1 = false;

  bool f2 = false;

  bool f3 = false;

  bool f4 = false;

  var form1K = GlobalKey<FormState>();
  var form2K = GlobalKey<FormState>();
  var form3K = GlobalKey<FormState>();




  var firstController = TextEditingController();
  var secondController = TextEditingController();
  var thirdController = TextEditingController();

  @override
  Widget build(BuildContext context) {




    return BlocProvider(
      create: ( context)=> MyCubit(),
      child: Builder (builder: (context){
        return BlocConsumer<MyCubit,MyState>(
          builder: (context,state){
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
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Column(
                        children: [
                          const Text(
                            "WELCOME",
                            style: TextStyle(
                                color: Colors.white70,
                                fontSize: 25,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const Text("What is the distance from home where the transaction happened by meters?",
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Form(
                            key: form1K,
                            child: TextFormField(
                              validator: (value1){
                                if (value1!.isEmpty){
                                  return "Please answer the question!";
                                }
                                else {
                                  return null;
                                }
                              },
                              style: const TextStyle(
                                  color: Colors.white
                              ),
                              maxLines: 1,
                              controller: firstController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.deny("("),
                                FilteringTextInputFormatter.deny(")"),
                                FilteringTextInputFormatter.deny(";"),
                                FilteringTextInputFormatter.deny("N"),
                                FilteringTextInputFormatter.deny(" "),
                                FilteringTextInputFormatter.deny(","),
                                FilteringTextInputFormatter.deny("#"),

                              ],
                              decoration:  InputDecoration(
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(
                                      color: Colors.white60,
                                    )
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: (BorderRadius.circular(15)),
                                    borderSide: const BorderSide(
                                        color: Colors.white30
                                    )
                                ),
                                errorStyle: const TextStyle(
                                  color: Colors.white60,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Colors.white30
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(
                                        color: Colors.white30
                                    )
                                ),
                                hintText: "Answer here...",
                                hintStyle: const TextStyle(
                                  color: Colors.white30,
                                ),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text(
                            "What is the distance from last transaction happened by meters?",
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Form(
                            key: form2K,
                            child: TextFormField(
                              validator: (value){
                                if (value!.isEmpty){
                                  return "Please answer the question!";
                                }
                                else {
                                  return null;
                                }
                              },
                              style: const TextStyle(
                                  color: Colors.white
                              ),
                              maxLines: 1,
                              controller: secondController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.deny("("),
                                FilteringTextInputFormatter.deny(")"),
                                FilteringTextInputFormatter.deny(";"),
                                FilteringTextInputFormatter.deny("N"),
                                FilteringTextInputFormatter.deny(" "),
                                FilteringTextInputFormatter.deny(","),
                                FilteringTextInputFormatter.deny("#"),



                              ],
                              decoration:  InputDecoration(
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(
                                      color: Colors.white60,
                                    )
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: (BorderRadius.circular(15)),
                                    borderSide: const BorderSide(
                                        color: Colors.white30
                                    )
                                ),
                                errorStyle: const TextStyle(
                                  color: Colors.white60,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Colors.white30
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(
                                        color: Colors.white30
                                    )
                                ),
                                hintText: "Answer here...",
                                hintStyle: const TextStyle(
                                  color: Colors.white30,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          const Text(
                            "What is the ratio of purchased price transaction to median purchase price?",
                            style: TextStyle(
                                color: Colors.white60,
                                fontSize: 14
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Form(
                            key: form3K,
                            child: TextFormField(
                              validator: (value){
                                if (value!.isEmpty){
                                  return "Please answer the question!";
                                }
                                else {
                                  return null;
                                }
                              },
                              style: const TextStyle(
                                  color: Colors.white
                              ),
                              maxLines: 1,
                              controller: thirdController,
                              keyboardType: TextInputType.number,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.deny("("),
                                FilteringTextInputFormatter.deny(")"),
                                FilteringTextInputFormatter.deny(";"),
                                FilteringTextInputFormatter.deny("N"),
                                FilteringTextInputFormatter.deny(" "),
                                FilteringTextInputFormatter.deny(","),
                                FilteringTextInputFormatter.deny("#"),


                              ],
                              onFieldSubmitted: (value){
                                print(value);},
                              decoration:  InputDecoration(
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(
                                      color: Colors.white60,
                                    )
                                ),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: (BorderRadius.circular(15)),
                                    borderSide: const BorderSide(
                                        color: Colors.white30
                                    )
                                ),
                                errorStyle: const TextStyle(
                                  color: Colors.white60,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(
                                      color: Colors.white30
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: const BorderSide(
                                        color: Colors.white30
                                    )
                                ),
                                hintText: "Answer here...",
                                hintStyle: const TextStyle(
                                  color: Colors.white30,
                                ),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Text("Is the transaction happened \nfrom same retailer?",
                                  softWrap: false,
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ),
                              RadioClass(onChanged: (choice ) {
                                setState(() {
                                  f1 = choice;
                                });
                              }, isSelected: f1 ,)
                            ],
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Text("Is the transaction through \ncredit card?",
                                  softWrap: false,
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ),
                              SizedBox(
                                child: RadioClass(onChanged: (choice ) {
                                  setState(() {
                                    f2 = choice;
                                  });
                                }, isSelected: f2 ,)
                              )
                            ],
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            children: [
                              const Expanded(
                                child: Text("Is the transaction happened \nby using PIN number?",
                                  softWrap: false,
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ),
                              RadioClass(onChanged: (choice ) {
                                setState(() {
                                  f3 = choice;
                                });
                              }, isSelected: f3 ,)
                            ],
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                child: Text("Is the transaction an \nonline order?",
                                  softWrap: false,
                                  style: TextStyle(
                                      color: Colors.white70,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16
                                  ),
                                ),
                              ),
                              RadioClass(onChanged: (choice ) {
                                setState(() {
                                  f4 = choice;
                                });
                              }, isSelected: f4 ,)
                            ],
                          ),
                          SizedBox(
                            height: 25.h,
                          ),
                          if (!(state is MyLoading))
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
                               {
                                  context.read<MyCubit>().predict(
                                    User(
                                      distanceFroLastTransaction:double.parse(firstController.text),
                                      distanceFromHome:double.parse(secondController.text) ,
                                      ratio: double.parse(thirdController.text),
                                      online: f1 == true? "Yes" : "No",
                                      retailer:f2 == true? "Yes" : "No" ,
                                      usedChip:f3 == true? "Yes" : "No" ,
                                      usedPin: f4 == true? "Yes" : "No",
                                    ),
                                  );
                                }},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                              ),
                              child: const Text(
                                "CHECK THE PROCESS",
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
              ),
            );
          },
          listener: (BuildContext context, MyState state) {
          if (state is MyLoaded)
          {
            final result =context.read<MyCubit>().response!.response!;
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => LastPage(result: result)));

          }
        },
        );
    }
    ));
  }
}

