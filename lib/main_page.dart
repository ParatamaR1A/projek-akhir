import 'package:flutter/material.dart';
import 'package:ln_list/login.dart';
import 'package:ln_list/singUp.dart';


class Auth_Hal extends StatefulWidget {
  const Auth_Hal({super.key});

  @override
  State<Auth_Hal> createState() => _Auth_HalState();
}

class _Auth_HalState extends State<Auth_Hal> {
  bool a=true;
  void to(){
    setState(() {
      a=!a;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(a){
      return LogIn_layar(to);
    }else{
      return SignUp_layar(to);
    }
  }
}