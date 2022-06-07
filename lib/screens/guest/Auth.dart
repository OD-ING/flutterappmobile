import 'package:appmobile/screens/guest/Term.dart';
import 'package:flutter/material.dart';


class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {

  final _formKey = GlobalKey<FormState>();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final RegExp emailRegex = RegExp(r"[a-z0-9\._-]+@[a-z0-9\._-]+\.[a-z]+");

  String _email = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                      text: 'Laisse toi portez\n'.toUpperCase(),
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                      ),
                      children: [
                        TextSpan(
                          text: 'Sois créatif\n'.toUpperCase(),
                          style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'à toi de jouer'.toUpperCase(),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Text('Allons-y',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(
                    height: 70.0,
                  ),

                  // Text("bla bla bal"),
                  // Text("bon bla"),
                  // SizedBox(
                  //     height: 50.0,
                  // ),
                  // Text("Bingo"),

                  Form(
                    key: _formKey,
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text('Tapez votre E-mail',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        onChanged:
                            (value) => setState(() => _email = value),
                        // validator:
                        //     (value) => value.isEmpty || !emailRegex.hasMatch(_email)
                        //         ? 'Tapez un email correct' : null,

                        validator: (value) {
                          if (value == null || value.isEmpty || !emailRegex.hasMatch(_email)) {
                            return 'Tapez un email correct';
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                            hintText: 'exemple@domain.tld',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(0.0),
                              borderSide: BorderSide(
                                color: Colors.grey,
                              ),
                            )
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      // RaisedButton(
                      //   color: Theme.of(context).primaryColor,
                      //   elevation: 0,
                      //   padding: EdgeInsets.symmetric(vertical: 15.0),
                      //   onPressed: () {
                      //     Navigator.push(
                      //         context,
                      //         MaterialPageRoute(
                      //             builder:
                      //                 (context) => TermScreen(),
                      //         )
                      //     );
                          // if(_formKey.currentState.validate()) {
                          //   print(_email);
                          // }
                      //   },
                      //   child: Text(
                      //     'Suivant',
                      //     style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 18,
                      //     ),
                      //   ),
                      // ),
                      SizedBox(
                        height: 20.0,
                      ),
                      ElevatedButton(
                          onPressed: !emailRegex.hasMatch(_email) ? null : () {

                            if (_formKey.currentState!.validate()) {
                              // If the form is valid, display a snackbar. In the real world,
                              // you'd often call a server or save the information in a database.
                              // ScaffoldMessenger.of(context).showSnackBar(
                              //   const SnackBar(content: Text('Processing Data')),
                              // );
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => TermScreen()
                                ),
                              );
                            }

                          },
                        child: Text(
                            'Button',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                        ),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 20.0),
                        ),
                      ),
                    ],
                  ),
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
