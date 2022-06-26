import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medco/tools/constants.dart';
import 'package:medco/tools/textfield.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool obscures = true;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: SingleChildScrollView(
            child: Column(
          children: [
            SizedBox(height: _height / 10),
            Container(
              // height: 177,
              // width: 250,
              child: Image.asset('assets/images/doctor.png'),
            ),
            SizedBox(
              height: _height / 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Email Address',
                    style: GoogleFonts.lato(
                      color: black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            CustomTextField(
              onSaved: (value) {
                _emailController.text = value!;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return ("Please Enter Your Email");
                }
                // reg for email validation
                if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+[a-z]")
                    .hasMatch(value)) {
                  return ("Please Enter a valid email");
                }
                return null;
              },
              hintText: 'xxxxx@gmail.com',
              color: white,
              hintColor: label,
              controller: _emailController,
              cursorColor: black,
              inputAction: TextInputAction.next,
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  Text(
                    'Password',
                    style: GoogleFonts.lato(
                      color: black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                decoration: BoxDecoration(
                    color: white,
                    border: Border.all(
                      color: black,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: TextFormField(
                    onSaved: (value) {
                      _passwordController.text = value!;
                    },
                    validator: (value) {
                      RegExp regex = new RegExp(r'^.{6,}$');
                      if (value!.isEmpty) {
                        return ("Password required");
                      }
                      if (!regex.hasMatch(value)) {
                        return ("Enter Valid Password(Min. 6 Character");
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    controller: _passwordController,
                    cursorColor: black,
                    obscureText: obscures,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        child: Icon(
                          obscures
                              ? Icons.remove_red_eye_rounded
                              : Icons.visibility_off,
                          color: Colors.black,
                        ),
                        onTap: () {
                          setState(() {
                            obscures = !obscures;
                          });
                        },
                      ),
                      border: InputBorder.none,
                      hintText: 'Enter password',
                      hintStyle: TextStyle(
                        color: label,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 45,),
             Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  width: double.maxFinite,
                  height: _height * 0.07,
                  child: RaisedButton(
                    color: button,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    // elevation: 3.0,
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {}
                    },
                  ),
                ),
              ),
          ],
        )),
      ),
    );
  }
}
