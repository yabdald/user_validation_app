import 'package:blue_app/utality/validator.dart';
import 'package:blue_app/utality/widgets.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_pw_validator/flutter_pw_validator.dart';
import 'package:blue_app/screens/profile.dart';

// import 'package:intro_slider/dot_animation_enum.dart';
// import 'package:intro_slider/intro_slider.dart';
// import 'package:intro_slider/slide_object.dart';

class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  // late String _userName, _password;
  // final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isEmailValid = false;
  bool _isPassValid = false;

  @override
  Widget build(BuildContext context) {
    final forgotLabel = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        MaterialButton(
          padding: EdgeInsets.all(0.0),
          child: Text("Forgot password?",
              style: TextStyle(fontWeight: FontWeight.w300)),
          onPressed: () {
//            Navigator.pushReplacementNamed(context, '/reset-password');
          },
        ),
        MaterialButton(
          padding: EdgeInsets.only(left: 0.0),
          child: Text("Sign up", style: TextStyle(fontWeight: FontWeight.w300)),
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/register');
            print("Register Page");
          },
        ),
      ],
    );
    var dLogin = () {};
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40.0),
          child: Form(
              // key: _formKey,
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15.0,
              ),
              Text("Email"),
              SizedBox(
                height: 5.0,
              ),
              TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: buildInputDecoration("Email", Icons.email)),
              SizedBox(height: 20),
              Text("Password"),
              SizedBox(
                height: 5.0,
              ),
              TextFormField(
                autofocus: false,
                obscureText: true,
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                decoration: buildInputDecoration('', Icons.lock),
              ),
              SizedBox(height: 20),
              MaterialButton(
                child: Text(
                  'Login',
                  style: const TextStyle(color: Colors.white),
                ),
                color: Colors.blue,
                onPressed: () {
                  _isEmailValid =
                      EmailValidator.validate(_emailController.text);
                  if (_isEmailValid) {
                    //Navigate to profile page

                    Navigator.pushReplacementNamed(context, '/profile');
                    print("Successfully Logged IN");
                    // Fluttertoast.showToast(
                    //     msg: "",
                    //     toastLength: Toast.LENGTH_SHORT,
                    //     gravity: ToastGravity.TOP,
                    //     timeInSecForIosWeb: 1,
                    //     fontSize: 16.0);
                  } else if (_emailController.text.isEmpty) {
                    Fluttertoast.showToast(
                        msg: 'Enter Email',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1,
                        fontSize: 16.0);
                  } else {
                    Fluttertoast.showToast(
                        msg: 'Enter a Valid Email',
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.TOP,
                        timeInSecForIosWeb: 1,
                        fontSize: 16.0);
                  }

                  // if (_isPassValid.toString().isEmpty) {
                  //   Fluttertoast.showToast(
                  //       msg: "Enter Password",
                  //       toastLength: Toast.LENGTH_SHORT,
                  //       gravity: ToastGravity.TOP,
                  //       timeInSecForIosWeb: 1,
                  //       fontSize: 16.0);
                  // } else if (_isPassValid.toString().length < 3) {
                  //   Fluttertoast.showToast(
                  //       msg: "Enter Valid Password",
                  //       toastLength: Toast.LENGTH_SHORT,
                  //       gravity: ToastGravity.TOP,
                  //       timeInSecForIosWeb: 1,
                  //       fontSize: 16.0);
                  // } else {
                  //   Fluttertoast.showToast(
                  //       msg: "",
                  //       toastLength: Toast.LENGTH_SHORT,
                  //       gravity: ToastGravity.TOP,
                  //       timeInSecForIosWeb: 1,
                  //       fontSize: 16.0);
                  // }
                },
              ),
              SizedBox(height: 20),
              forgotLabel
            ],
          )),
        ),
      ),
    );
  }
}
