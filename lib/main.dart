import 'package:design/signup.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder> {
        'signup': (BuildContext context) => new SignUpPage(),
      },
      home: HomePage(),
          );

        }
      }
      
class HomePage extends StatefulWidget {
        HomePage({Key key}) : super(key: key);
        @override
        _HomePageState createState() => _HomePageState();
      }
      
      class _HomePageState extends State<HomePage> {
        @override
        Widget build(BuildContext context) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Stack(
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 110.0, 0.0, 0.0),
                        child: Text('Hello',style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(15.0, 175.0, 0.0, 0.0),
                        child: Text('There',style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(220.0, 175.0, 0.0, 0.0),
                        child: Text('.',style: TextStyle(
                          fontSize: 80.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.green,
                        ),),
                      ),
                    ],
                  )
                ),
                Container(
                  padding: EdgeInsets.only(top: 35.0, left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'EMAIL',
                          labelStyle: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Colors.green,
                              )
                            )
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                            labelText: 'PASSWORD',
                            labelStyle: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.green,
                                )
                            )
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 5.0,),
                      Container(
                        alignment: Alignment(1.0, 0.0),
                        padding: EdgeInsets.only(top: 15.0, left: 20.0),
                        child: InkWell(
                          child: Text('Forgot Password',style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Montserrat',
                            decoration: TextDecoration.underline,
                          ),),
                        ),
                      ),
                      SizedBox(height: 40.0,),
                      Container(
                        height: 40.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.greenAccent,
                          color: Colors.green,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text('LOGIN', style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                              ),),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Container(
                        height: 40.0,
                        color: Colors.transparent,
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              style: BorderStyle.solid,
                              width: 1.0,
                            ),
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(20.0),

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Center(
                                child: ImageIcon(AssetImage('assets/facebook.png'),
                              ),
                              ),
                              SizedBox(width: 10.0,),
                              Center(
                                child: Text('Login with Facebook', style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Montserrat'),),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('New to Spotify ?', style: TextStyle(fontFamily: 'Montserrat'),),
                    SizedBox(width: 5.0,),
                    InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpPage()));
                      },
                      child: Text('Register', style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),),
                    )
                  ],
                )
              ],
            ),
          );
        }
      }