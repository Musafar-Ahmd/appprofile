import 'package:appprofile/Profilepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



class LoginPage extends StatefulWidget{
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _form = GlobalKey<FormState>();
//for sorting for state.
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Form(
        key: _form,//assigning key to form
        child: ListView(
          children: [Container(
            padding: EdgeInsets.all(20),
            child: TextFormField(
              decoration: InputDecoration(
                  labelText: 'email',border: OutlineInputBorder()),
              validator: (text) {
                if(text == null || !(text.contains('@')) || text.isEmpty) {
                  return "enter a valid email address!";
                }
                return null;
              },
            ),
          ),
            Container(
                padding: EdgeInsets.all(20),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: 'password',border: OutlineInputBorder()),
                  validator: (text) {
                    if (text == null || !(text.length <= 6) || text.isEmpty) {
                      return "enter a valid password!";
                    }
                    return null;
                  },
                )
            ),
            Container(
              padding: EdgeInsets.only(left: 50,right: 50),
              child: ElevatedButton(
                  child: Text("Submit"),

                  onPressed: (){
                    final isValid = _form.currentState!.validate();
                    if (isValid) {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileHome()));
                    }else{
                      Fluttertoast.showToast(msg: 'username / password is Incorrect',
                          gravity: ToastGravity.BOTTOM,
                          fontSize: 16.0);
                    }
                  }),
            ),

            // TextButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileHome()));
    ],
        ),
      ),
    );
  }
}





































//