import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prak3/halaman_utama.dart';

class LoginPage extends StatefulWidget {
  LoginPage ({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = true;


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Halaman Login'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Icon(
              Icons.business_center,
              color: Colors.blueAccent,
              size: 90,
            ),
            SizedBox(height: 20),
            Text(
              "Welcome, Dear Human",
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Silakan melakukan login untuk mengakes aplikasi",
              style: TextStyle(fontFamily: 'Poppins', color: Colors.grey),
            ),
            _usernameField(),
            _passwordField(),
            _submitButton(context)
          ],
        ),
      ),
    );
  }

  Widget _usernameField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:20),
      child: TextFormField(
        enabled: true,
        onChanged: (value){
          setState(() {
            username = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.email),
          labelText: 'Username',
          hintText: 'johndoe_03',
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)
            ),
            borderSide: BorderSide(color: Colors.yellow, width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)
            ),
            borderSide: BorderSide(color: (isLoginSuccess) ? Colors.yellow : Colors.red ,
            ),
          ),
        ),
      ),
    );
  }

  Widget _passwordField() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:20),
      child: TextFormField(
        enabled: true,
        obscureText: true,
        obscuringCharacter: '#',
        onChanged: (value){
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.password),
          labelText: 'Password',
          hintText: 'Make it Unique',
          contentPadding: EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)
            ),
            borderSide: BorderSide(color: Colors.red, width: 1.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8.0)
            ),
            borderSide: BorderSide(color: (isLoginSuccess) ? Colors.yellow : Colors.red ,
            ),
          ),
        ),
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical:20),
      width: MediaQuery.of(context) .size.width,
      child: ElevatedButton(
        onPressed: () {
          String text = "";
          if (username == "Asisten" && password == "guabelumnikah") {
            setState(() {
              text = "Login Berhasil";
              isLoginSuccess = true;
              Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
            });
          }
          else if (username != "Asisten" && password == "guabelumnikah") {
            setState(() {
              text = "Username Anda Salah";
              isLoginSuccess = false;
            });
          }
          else if (username == "Asisten" && password!= "guabelumnikah") {
            setState(() {
              text = "Password Anda Salah";
              isLoginSuccess = false;
            });
          }
          else {
            setState(() {
              text = "Password Anda Salah";
              isLoginSuccess = false;
            });
          }

          SnackBar snackBar = SnackBar(
            content: Text(text),
            duration: Duration(seconds: 2),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
        child: const Text('Login'),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: (isLoginSuccess) ? Colors.greenAccent : Colors.red,
        ),
      ),
    );
  }
}
