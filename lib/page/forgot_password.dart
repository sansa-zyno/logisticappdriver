import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:logistic_app_driver/page/login.dart';
import 'package:logistic_app_driver/themes/constant_colors.dart';
import 'package:page_transition/page_transition.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  ///Text Editing Controllers
  TextEditingController emailController = TextEditingController(text: '');
  bool loading = false;
  String? username;
  getUserName() async {
    //username = await LocalStorage().getString("username");
  }

  reset() async {
    /* loading = true;
    setState(() {});
    final res = await HttpService.post("Api.fogotPassword",
        {"username": username, "email": emailController.text});
    final result = jsonDecode(res.data);
    print(result);
    if (result["Status"] == "succcess") {
      Get.defaultDialog(
        title: "${result["Report"]}",
        titleStyle: TextStyle(color: ConstantColors.mycolor, fontWeight: FontWeight.bold),
        middleText: "",
        middleTextStyle: TextStyle(color: ConstantColors.mycolor),
      ).then((value) => print("done"));
    } else {
      Get.defaultDialog(
        title: "${result["Report"]}",
        titleStyle: TextStyle(color: ConstantColors.mycolor, fontWeight: FontWeight.bold),
        middleText: "",
        middleTextStyle: TextStyle(color: ConstantColors.mycolor),
      ).then((value) => print("done"));
    }
    loading = false;
    setState(() {});*/
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //getUserName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: ListView(children: [
          SizedBox(
            height: 50,
          ),
          Container(
            height: 70,
            child: Image.asset(
              "assets/images/lstakerLogo.png",
            ),
          ),
          SizedBox(height: 50),
          Center(
            child: Text(
              "Forgot Password ?",
              style: TextStyle(
                  fontSize: 22,
                  color: ConstantColors.mycolor,
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 50),
          //Email
          TextFormField(
            cursorColor: ConstantColors.mycolor,
            decoration: InputDecoration(
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: ConstantColors.mycolor)),
              labelText: 'Email ',
              labelStyle: TextStyle(
                color: Colors.teal,
              ),
            ),
            keyboardType: TextInputType.emailAddress,
            /* validator: (value)
                                {
                                  if(value.isEmpty || !value.contains('@'))
                                  {
                                    return 'invalid email';
                                  }
                                  return null;
                                },
                                onSaved: (value)
                                {
                                  _authData['email'] = value;
                                },*/
          ),
          SizedBox(
            height: 50,
          ),
          loading
              ? Center(child: CircularProgressIndicator())
              : Center(
                  child: InkWell(
                      onTap: () {
                        reset();
                      },
                      child: Text("Submit",
                          style: TextStyle(
                            color: ConstantColors.mycolor,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ))),
                ),
          SizedBox(
            height: 25,
          ),
          Center(
              child: Text("Already have an account ?",
                  style: TextStyle(
                    color: Colors.grey,
                  ))),
          SizedBox(
            height: 15,
          ),
          Center(
            child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                        child: Sign_in_screen()),
                  );
                },
                child: Text("Sign In",
                    style: TextStyle(
                      color: ConstantColors.mycolor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
          ),
        ]),
      ),
    );
  }
}
