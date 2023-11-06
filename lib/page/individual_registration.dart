import 'package:flutter/material.dart';
import 'package:logistic_app_driver/constant/screen_navigation.dart';
import 'package:logistic_app_driver/page/login.dart';
import 'package:logistic_app_driver/themes/constant_colors.dart';

class IndividualRegisteration extends StatefulWidget {
  @override
  _IndividualRegisterationState createState() =>
      _IndividualRegisterationState();
}

class _IndividualRegisterationState extends State<IndividualRegisteration> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController userNameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController phoneController = TextEditingController(text: '');
  TextEditingController lastNameController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController confirmPasswordController =
      TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
            child: Column(
              children: <Widget>[
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        height: 70,
                        child: Image.asset("assets/images/lstakerLogo.png"),
                      ),
                      /*SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Signup",
                        style: TextStyle(
                            color: Color(0xff2C2627),
                            fontWeight: FontWeight.w700,
                            fontSize: 31),
                      ),
                      SizedBox(
                        height: 10,
                      ),*/
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        //name
                        TextFormField(
                          cursorColor: ConstantColors.mycolor,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ConstantColors.mycolor)),
                              labelText: 'Name',
                              labelStyle: TextStyle(
                                color: Colors.teal,
                              )),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "*Required";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 15),
                        //Email
                        TextFormField(
                          cursorColor: ConstantColors.mycolor,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ConstantColors.mycolor)),
                              labelText: 'Email ',
                              labelStyle: TextStyle(
                                color: Colors.teal,
                              )),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "*Required";
                            }
                            if (!value.contains('@')) {
                              return 'invalid email';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 15),
                        //Phone Number
                        TextFormField(
                          cursorColor: ConstantColors.mycolor,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ConstantColors.mycolor)),
                              labelText: 'Phone Number',
                              labelStyle: TextStyle(
                                color: Colors.teal,
                              )),
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "*Required";
                            }

                            if (value.length < 5) {
                              return 'Password is too short!';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 15),
                        //Password
                        TextFormField(
                          cursorColor: ConstantColors.mycolor,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ConstantColors.mycolor)),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Colors.teal,
                              )),
                          obscureText: true,
                          validator: (value) {
                            bool passValid = RegExp(
                                    "^(?=.{8,32}\$)(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#\$%^&*(),.?:{}|<>]).*")
                                .hasMatch(value!);
                            if (value.isEmpty) {
                              return '*Required';
                            }
                            if (value.length < 5) {
                              return '*Password is too short';
                            }
                            if (!passValid) {
                              return 'Weak password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 15),
                        //Confirm password
                        TextFormField(
                          cursorColor: ConstantColors.mycolor,
                          decoration: InputDecoration(
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: ConstantColors.mycolor)),
                              labelText: 'Confirm Password',
                              labelStyle: TextStyle(
                                color: Colors.teal,
                              )),
                          obscureText: true,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "*Required";
                            }
                            if (value != confirmPasswordController.text) {
                              return 'invalid password';
                            }
                            return null;
                          },
                        ),
                      ],
                    )),
                SizedBox(height: 50),
                ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          EdgeInsets.all(15))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'SIGN UP',
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    //changeScreen(context, VendorNavigation(username: ""));
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?  ",
                      style: TextStyle(fontFamily: "Poppins"),
                    ),
                    InkWell(
                        onTap: () {
                          changeScreen(context, Sign_in_screen());
                        },
                        child: Text("Sign in",
                            style: TextStyle(
                                color: Colors.teal, fontFamily: "Poppins"))),
                  ],
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  signup() async {
    /*loading = true;
    setState(() {});
    try {
      final apiResult = await HttpService.post(
        Api.register,
        {
          "username": userNameController.text,
          "referer": refererIdController.text,
          "upline": uplineController.text,
          "firstName": firstNameController.text,
          "lastName": lastNameController.text,
          "email": emailController.text,
          "phone": phoneController.text,
          "password": passwordController.text,
          "cpassword": confirmPasswordController.text
        },
      );
      print(apiResult);
      final result = jsonDecode(apiResult.data);
      print(result);
      if (result["Status"] == "succcess") {
        LocalStorage().setString("username", userNameController.text);
        Navigator.pushAndRemoveUntil(
            context,
            PageTransition(
                type: PageTransitionType.rightToLeft,
                duration: Duration(milliseconds: 200),
                curve: Curves.easeIn,
                child: Home(username: userNameController.text)),
            (route) => false);
      } else {
        Get.defaultDialog(
          title: "${result["Report"]}",
          titleStyle:
              TextStyle(color: Color(0xFF072A6C), fontWeight: FontWeight.bold),
          middleText: "Please check your sign up credentials",
          middleTextStyle: TextStyle(color: Color(0xFF072A6C)),
        ).then((value) => print("done"));
      }
    } catch (e) {
      Get.defaultDialog(
        title: "Error",
        titleStyle:
            TextStyle(color: Color(0xFF072A6C), fontWeight: FontWeight.bold),
        middleText: "Please check your internet connection and try again",
        middleTextStyle: TextStyle(color: Color(0xFF072A6C)),
      ).then((value) => print("done"));
    }
    loading = false;
    setState(() {});*/
  }
}
