import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:medco/tools/constants.dart';
import 'package:medco/tools/textfield.dart';

class Signup extends StatefulWidget {
  Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _repeatPasswordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _IdController = TextEditingController();
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      'Full Name',
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
                hintText: 'Jane Doe',
                color: white,
                hintColor: label,
                controller: _nameController,
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
                      'GroupID',
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
                hintText: 'doctor',
                color: white,
                hintColor: label,
                controller: _IdController,
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
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    Text(
                      'Confirm Password',
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
                      textInputAction: TextInputAction.done,
                      controller: _repeatPasswordController,
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
                        hintText: 'Repeat password',
                        hintStyle: TextStyle(
                          color: label,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Container(
                  width: double.maxFinite,
                  height: _height * 0.07,
                  child: RaisedButton(
                    color: button,
                    child: Text(
                      'Sign up',
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
                      // if (_formKey.currentState!.validate()) {}
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
