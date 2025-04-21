import 'dart:io';

import 'package:flutter/material.dart';

import 'applocal/applocale.dart';


class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<StatefulWidget> createState() => _SecondPage();


}

class _SecondPage extends State<SecondPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var show = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(getLang(context, 'homepage'),),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.grey,
            child:   TextField(
              controller: usernameController,
              decoration: InputDecoration(
                border:UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: getLang(context, 'username'),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child:TextField(
              controller: passwordController,
              decoration: InputDecoration(
                border:UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: getLang(context, 'password'),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.grey,
            child:Row(
              children: [
                IconButton(
                    onPressed: (){
                      exit(0);
                    },
                    icon: Icon(Icons.clear)),
                ElevatedButton(
                    onPressed: (){
                      usernameController.text = " ";
                      passwordController.text= " ";
                      show.text = " ";
                    },
                    child:Text(getLang(context, 'clear'))
                ),
                OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white
                    ),
                    onPressed: (){
                      show.text = usernameController.text + " : " + passwordController.text;
                    },
                    child: Text(getLang(context, 'login')))
              ],
            ),
          ),
          Container(
            color: Colors.grey,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child:TextField(
              controller: show,
              decoration: InputDecoration(
                border:UnderlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                hintText: getLang(context, 'show'),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
