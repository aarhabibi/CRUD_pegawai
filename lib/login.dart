import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:note_app_mysql/config.dart';
import 'package:note_app_mysql/daftar.dart';
import 'package:http/http.dart' as http;
import 'package:note_app_mysql/edit_profil.dart';
import 'package:note_app_mysql/home.dart';

class login extends StatelessWidget{
  bool _showPassword = false;
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  var id;

  Future _login() async {
   return await http.post(Uri.parse("http://$ip/pegawai/data_pegawai/login.php"), body: {
      "email":"${email.text}",
      "pass":"${pass.text}",
    },
    ).then((value) {
                //print message after insert to database
                //you can improve this message with alert dialog
                var data = jsonDecode(value.body);
                String jsonsDataString = value.body.toString();
                final jsonData = jsonDecode(jsonsDataString);
                id = jsonData['id'] != null ? jsonData['id'] : "";
                print(id);

                print(data["message"]);
                print(value.body);
              });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              Text('LOGIN'),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  labelText: 'Email',                  
                ),
              ),
              TextFormField(
                controller: pass,
                decoration: InputDecoration(
                  labelText: 'Password'
                ),
                obscureText: !_showPassword,
              ),
              SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              if(email.text=="admin@gmail.com"){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return Home();}));
              } else{
                _login();
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return Edit_profil(id: id);}));
                }
              
              }, child: Text('login')),
            ElevatedButton(onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context){return daftar();}));}, child: Text('daftar'))
            ],
          ),
        ),
      ),
    );
  }

}