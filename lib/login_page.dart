import 'package:flutter/material.dart';
import 'package:get/get.dart';
import "package:login_task/registrationpage.dart";


class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  bool isChecked = false;

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body:Container(
          color: Colors.blueGrey,
          child: Column(
            
            children: [
              Container(
              color: Colors.blueGrey,
              
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   
                    SizedBox(height:10),
                   Text("Login"),
                     SizedBox(height:20),
                    Padding(
                      padding: EdgeInsets.all(30.0),
                      child: TextField(
                        controller: email,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle:  TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide:  BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(color: Colors.blue)),
                         
                          // Added this
                          contentPadding:
                              const EdgeInsets.all(30.0),
                        ),
                       
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  SizedBox(height:20),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
                      child: TextField(

                        controller: pass,
                    
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.white),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: new BorderRadius.circular(10.0),
                              borderSide: const BorderSide(color: Colors.blue)),
                          isDense: true,
                          // Added this
                          contentPadding:
                              EdgeInsets.all(30.0)
                        ),
                       
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Remember Me",style: TextStyle(color: Colors.white),),
                        Checkbox(
                          value: isChecked,
                          onChanged: (value){
                            isChecked = !isChecked;
                             setState(() {

                            });
                           
                          },
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: const Text(
                        "Forgot Password ? Reset Now",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                 
                    GestureDetector(
                        onTap: () {
                          print("Login done");
                        },
                        child: RaisedButton(child:Text("Login"),
                        onPressed: (){
                          Get.to(registrationpage());
                        },),
                            ),
                    SizedBox(height:20),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: GestureDetector(
          onTap: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => registrationpage()));
          },
          child: RichText(
              text: const TextSpan(
            text: 'New User?',
            style: TextStyle(fontSize: 15.0, color: Colors.black),
            children: <TextSpan>[
              TextSpan(
                text: ' Register Now',
                style: TextStyle(
                   fontSize: 18,
                    ),
              ),
            ],
          ))
        ));
  }
}