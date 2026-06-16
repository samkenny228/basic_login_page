import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appbar(),
      body: Column(
        children: [
          pageDetails(),
          SizedBox(height: 50),
          allForm(),
        ],
      ),
    );
  }

  Column allForm() {
    return Column(
          children: [
            userNmae(),
            SizedBox(height: 30),
            password(),
            SizedBox(height: 30),
            remember_me_forget_password_col(),
            SizedBox(height: 30),
            login_container(),
          ],
        );
  }

  Container login_container() {
    return Container(
              width: 250,
              height: 60,
              child: Center(
                child: Text(
                  'Login With Email',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                color:  Colors.blueAccent,
                borderRadius: BorderRadius.circular(20)
              ),
            );
  }

  Row remember_me_forget_password_col() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: isChecked,
                      activeColor: Colors.blueAccent,
                      onChanged: (newBool) {
                        setState(() {
                          isChecked = newBool;
                        });
                      },
                    ),
                    Text(
                  'Remember me',
                  style: TextStyle(
                    color: const Color.fromARGB(158, 0, 0, 0),
                    fontWeight: FontWeight.w200,
                    fontSize: 15,
                  ),
                ),
                  ],
                ),
                    Text(
                      'Forget Password',
                      style: TextStyle(
                        color: const Color.fromARGB(233, 0, 0, 0),
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                      ),
                    ),
              ],
            );
  }

  Container password() {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      padding: EdgeInsets.all(5),
      // padding: EdgeInsets.only(
      //left: 15,
      //right: 5,
      //top: 5,
      //bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 5, spreadRadius: 0.0),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(10),
          hintText: 'Password',
          hintStyle: TextStyle(
            color: const Color.fromARGB(113, 0, 0, 0),
            fontSize: 18,
          ),

          prefixIcon: Container(
            width: 70,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      'assets/icons/password.svg',
                      color: const Color.fromARGB(113, 0, 0, 0),
                      height: 28,
                      width: 28,
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 0.5,
                    indent: 10,
                    endIndent: 10,
                  ),
                ],
              ),
            ),
          ),

          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Container userNmae() {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
      padding: EdgeInsets.all(5),
      // padding: EdgeInsets.only(
      //left: 15,
      //right: 5,
      //top: 5,
      //bottom: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 5, spreadRadius: 0.0),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(10),
          hintText: 'User name',
          hintStyle: TextStyle(
            color: const Color.fromARGB(113, 0, 0, 0),
            fontSize: 18,
          ),

          prefixIcon: Container(
            width: 70,
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: SvgPicture.asset(
                      'assets/icons/usercircle.svg',
                      color: const Color.fromARGB(113, 0, 0, 0),
                    ),
                  ),
                  VerticalDivider(
                    color: Colors.black,
                    thickness: 0.5,
                    indent: 10,
                    endIndent: 10,
                  ),
                ],
              ),
            ),
          ),

          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
      ),
    );
  }

  Center pageDetails() {
    return Center(
      child: Container(
        margin: EdgeInsets.only(top: 90),
        child: Column(
          children: [
            Text(
              'Login To Your Account',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't Have An Account?",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromARGB(175, 0, 0, 0),
                  ),
                ),
                Text(
                  " Sign up!",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    color: const Color.fromARGB(244, 0, 0, 0),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
      title: Text(
        'Greater Best',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: [
        Container(
          margin: EdgeInsets.only(right: 15),
          child: Text(
            'Sign in',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
      backgroundColor: Colors.white,
      elevation: 0.5,
    );
  }
}
