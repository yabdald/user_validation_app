import 'package:blue_app/utality/validator.dart';
import 'package:flushbar/flushbar.dart' show Flushbar;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../utality/widgets.dart';

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late String _userName, _password, _confirmPassword;
  late final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_function_declarations_over_variables
    var doRegister = () {
      Navigator.pushReplacementNamed(context, '/login');
      print("Successfully Registred");
      // print("On Register");
      // final form = _formKey.currentState;
      // if (form!.validate()) {
      //   form.save();

      //   print(_userName);
      //   print(_password);
      //   print(_confirmPassword);

      //   if (_password.endsWith(_confirmPassword)) {
      //     Fluttertoast.showToast(
      //         msg: 'success!',
      //         toastLength: Toast.LENGTH_SHORT,
      //         gravity: ToastGravity.TOP,
      //         timeInSecForIosWeb: 1,
      //         fontSize: 16.0);
      //   } else {
      //     Fluttertoast.showToast(
      //         msg: 'Mismatch!',
      //         toastLength: Toast.LENGTH_SHORT,
      //         gravity: ToastGravity.TOP,
      //         timeInSecForIosWeb: 1,
      //         fontSize: 16.0);

      //     // Flushbar(
      //     //   title: "invalid form",
      //     //   message: 'Please complete the form properly',
      //     //   duration: const Duration(seconds: 10),
      //     // ).show(context);
      //   }
      // }
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration"),
      ),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(40.0),
        key: _formKey,
        child: Form(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 20),
            Text("Email"),
            TextFormField(
              autofocus: false,
              validator: (value) => value!.isEmpty || !value.contains("@")
                  ? "enter a valid eamil"
                  : null,
              onSaved: (value) => _userName = value!,
              decoration: buildInputDecoration('Enter Email', Icons.email),
            ),
            SizedBox(height: 20),
            Text("Password"),
            TextFormField(
              autofocus: false,
              validator: (value) => value!.isEmpty ? "Enter Password" : null,
              onSaved: (value) => _password = value!,
              decoration: buildInputDecoration('Enter Password', Icons.lock),
            ),
            SizedBox(height: 20),
            Text("Confirm Password"),
            TextFormField(
              autofocus: false,
              validator: (value) => value!.isEmpty ? " Confirm Password" : null,
              onSaved: (value) => _confirmPassword = value!,
              decoration: buildInputDecoration(' Confirm Password', Icons.lock),
            ),
            SizedBox(height: 20),
            Center(child: longButtons("Register", doRegister))
          ]),
        ),
      )),
    );
  }
}
