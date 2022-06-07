import 'package:appmobile/screens/guest/Auth.dart';
import 'package:appmobile/screens/guest/Term.dart';
import 'package:flutter/material.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({Key? key}) : super(key: key);

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {

  bool _isSecret = true;

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
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => TermScreen(),
                      )
                  );
                },
                icon: Icon(
                    Icons.arrow_back_ios,
                ),
            ),
            // title: Text('Sing in'),
          ),
          body: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: 30.0
              ),
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        RichText(
                          text: TextSpan(
                            text: 'Hi!\n'.toUpperCase(),
                            style: TextStyle(
                              fontSize: 36.0,
                              color: Colors.black87,
                            ),
                            children: [
                              TextSpan(
                                text: 'I try to improve\n'.toUpperCase(),
                              ),
                              TextSpan(
                                text: 'my skills\n'.toUpperCase(),
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'dev...'.toUpperCase(),
                              ),
                            ],
                        ),
                      ),
                      // Text(
                      //   'Hi, i try to improve my skills dev',
                      //   style: TextStyle(
                      //     fontSize: 30,
                      //   ),
                      // ),
                      SizedBox(
                        height: 200.0,
                      ),
                      Form(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                                obscureText: _isSecret,
                                decoration: InputDecoration(
                                  suffixIcon: InkWell(
                                    onTap: () => setState(()
                                      => _isSecret = !_isSecret,
                                    ),
                                    child: Icon(
                                        !_isSecret
                                            ? Icons.visibility
                                            : Icons.visibility_off
                                    ),
                                  ),
                                  hintText: 'dGJ%./JHHd',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                    borderSide: BorderSide(
                                      color: Colors.yellow,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              RaisedButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder:
                                            (context) => AuthScreen(),
                                      )
                                  );
                                },
                                elevation: 0,
                                color: Theme.of(context).primaryColor,
                                padding: EdgeInsets.symmetric(
                                  vertical: 15.0,
                                ),
                                child: Text(
                                  'Finaliser',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
    );
  }
}
