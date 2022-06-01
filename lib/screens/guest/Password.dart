import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Theme.of(context).scaffoldBackgroundColor,
            titleSpacing: 0.0,
            leading: IconButton(
              color: Colors.black87,
                onPressed: () {},
                icon: Icon(
                    Icons.arrow_back_ios,
                ),
            ),
            // title: Text('Sing in'),
          ),
          body: Center(
            child: Column(
              children: [
                Text('Hi, i try to improve my skills dev'),
                SizedBox(
                  height: 70.0,
                ),
                Form(
                  child: Column(
                    children: [
                      Text('Tapez votre mot de passe',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'monmo******se',
                        ),
                      ),
                    ]
                  ),
                ),
              ],
            ),
          ),
        ),
    );
  }
}
