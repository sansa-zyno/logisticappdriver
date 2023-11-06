import 'package:flutter/material.dart';
import 'package:logistic_app_driver/constant/screen_navigation.dart';
import 'package:logistic_app_driver/page/dash_board.dart';
import 'package:logistic_app_driver/page/forgot_password.dart';
import 'package:logistic_app_driver/page/individual_registration.dart';
import 'package:logistic_app_driver/themes/constant_colors.dart';
import 'package:logistic_app_driver/widget/custom_text.dart';

class Sign_in_screen extends StatefulWidget {
  static const routname = "sign_in _screen";
  @override
  _Sign_in_screenState createState() => _Sign_in_screenState();
}

class _Sign_in_screenState extends State<Sign_in_screen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  TextEditingController _passwordController = new TextEditingController();

  Map<String, String> _authData = {'email': '', 'password': ''};
  bool isloading = false;

  /* void _showErrorDialog(String msg)
  {
    showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('An Error Occured'),
          content: Text(msg),
          actions: <Widget>[
            FlatButton(
              child: Text('Okay'),
              onPressed: (){
                Navigator.of(ctx).pop();
              },
            )
          ],
        )
    );
  }

  Future<void> _submit() async
  {
    if(!_formKey.currentState.validate())
    {
      return;
    }
    _formKey.currentState.save();
    setState(() {
      isloading=true;
    });

    try{
      await Provider.of<Authentication>(context, listen: false).logIn(
          _authData['email'],
          _authData['password']
      ).then((value)async {

   if(value==true){
    bool saved_rest=await get_restaurant_name();
    if(saved_rest){
      Navigator.of(context).pushReplacementNamed(DashBoard_Screen.routename);
    }
    else{
      Navigator.of(context).pushReplacementNamed(Restuarent_profile.routname);
    }

   }
   else{
     Navigator.of(context).pushReplacementNamed(food_side_Home_screen.routename);
   }

      });

    } catch (error)
    {
      setState(() {
        isloading=false;
      });
      var errorMessage = 'Authentication Failed. Please try again later.';
      _showErrorDialog(error);
    }
  }
  List<Restuarent_Data> arranged_distance=[];

void arrange_distance(){
   for(int i=0;i<restuarent_data_list.length;i++){
   }
   restuarent_data_list.sort((a,b)=>a.distance.compareTo(b.distance));
}*/
  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 50),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //image
                      Container(
                        height: 70,
                        child: Image.asset(
                          "assets/images/lstakerLogo.png",
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      /*Text(
                        "Welcome Back",
                        style: TextStyle(
                            color: Color(0xff2C2627),
                            fontFamily: 'ProximaNova-Regular',
                            fontWeight: FontWeight.w700,
                            fontSize: 31),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Sign in to continue",
                        style: TextStyle(
                            color: Color(0xff2C2627),
                            fontFamily: 'ProximaNova-Regular',
                            fontWeight: FontWeight.w400,
                            fontSize: 16),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),*/

                      Form(
                          key: _formKey,
                          child: Column(
                            children: [
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
                                height: 30,
                              ),
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
                                controller: _passwordController,
                                /* validator: (value)
                                {
                                  if(value.isEmpty || value.length<=5)
                                  {
                                    return 'invalid password';
                                  }
                                  return null;
                                },
                                onSaved: (value)
                                {
                                  _authData['password'] = value;
                                },*/
                              ),
                            ],
                          )),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Checkbox(
                              visualDensity: VisualDensity(horizontal: -4),
                              fillColor: MaterialStateProperty.all(Colors.teal),
                              value: true,
                              onChanged: (x) {}),
                          SizedBox(
                            width: 10,
                          ),
                          CustomText(text: "Remember me")
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          changeScreen(context, ForgotPassword());
                        },
                        child: Text("Forgot Password?",
                            style: TextStyle(
                                color: Colors.teal,
                                decoration: TextDecoration.underline)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  isloading
                      ? Center(child: CircularProgressIndicator())
                      : ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.black),
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8))),
                              padding: MaterialStateProperty.all<EdgeInsets>(
                                  EdgeInsets.all(15))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'SIGN IN',
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            changeScreen(context, DashBoard());
                          },
                        ),
                  SizedBox(height: 15),
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          children: [
                            TextSpan(
                                text:
                                    "By clicking \"Sign in\" you certify that you agree to our "),
                            TextSpan(
                                text: "Privacy Policy ",
                                style: TextStyle(color: Colors.teal)),
                            TextSpan(text: "and"),
                            TextSpan(
                                text: " Terms and Conditions",
                                style: TextStyle(color: Colors.teal))
                          ])),
                  SizedBox(
                    height: 100,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have account?  ",
                        style: TextStyle(),
                      ),
                      InkWell(
                          onTap: () {
                            changeScreen(context, IndividualRegisteration());
                          },
                          child: Text("Sign up",
                              style: TextStyle(
                                color: Colors.teal,
                              ))),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
