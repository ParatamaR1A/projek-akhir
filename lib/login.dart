import'package:flutter/material.dart';
import 'package:ln_list/styles.dart';
import 'package:http/http.dart' as http;

class LogIn_layar extends StatefulWidget{
  final VoidCallback show;
  LogIn_layar(this.show,{super.key});
  
  @override
  State<LogIn_layar> createState() => _LogIn_layarState();
}

class _LogIn_layarState extends State<LogIn_layar> {
  FocusNode _focusNode1 = FocusNode();
  FocusNode _focusNode2 = FocusNode();

  final email = TextEditingController();
  final password = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _focusNode1.addListener((){setState(() {
      
    });});
    super.initState();
    _focusNode2.addListener((){setState(() {
      
    });});
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:bgColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            gambar(),
            SizedBox(height: 50,),
            teksdaerah(email, _focusNode1,'Email',Icons.email),
            SizedBox(height: 10,),
            teksdaerah(password, _focusNode2,'Password',Icons.password),
            SizedBox(height: 8,),
            akun(),
            SizedBox(height: 20,),
            LogIn_Bawah()
        ]
        ),
        ),
      ),
    );
  }

  Widget akun() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Dont't have an account?",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  ),
                  ),
              SizedBox(width: 5,),
              GestureDetector(
                onTap: widget.show,
                child: Text('Singn Up',
                  style: TextStyle(
                    color: custom_biru,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
              )
              ],
            ),
          );
  }

  Widget LogIn_Bawah() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: custom_biru,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                'Log In',
                style: TextStyle(
                  color: Color.fromARGB(255, 25, 28, 22),
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
  }

  Widget teksdaerah(TextEditingController _controler , FocusNode _focusNode,String typeNama,IconData icons) {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                controller: _controler,
                focusNode: _focusNode,
                style: TextStyle(fontSize: 18,color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: Icon(icons, color: _focusNode.hasFocus
                  ? custom_biru
                  : Colors.black),
                  contentPadding: 
                  EdgeInsets.symmetric(horizontal: 15,vertical: 15),
                  hintText: typeNama,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                   borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: custom_biru,
                      width: 2.0, 
                  ),
                ),
              ),
            ),
          )
      );
  }

  Widget gambar() {
    return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/login.png'),
                  fit: BoxFit.cover,
                  )
              ),
            ),
          );
  }

}