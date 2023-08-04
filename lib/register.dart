import 'package:demo/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


class SignUp extends StatefulWidget {
  const SignUp ({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  void initState(){
    Firebase.initializeApp();
    super.initState();
  }
  bool _obsecureText = true;
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 100.0),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Center(
                  child: Image.asset(
                    'images/splash.jpeg',
                    width: 120.0,
                    height: 120.0,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05),
              Center(
                child: Text(
                  'Register Yourself',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.purple[900],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  'Please register to access and start chatting',
                ),
              ),
              SizedBox(height: 32.0),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name',
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Enter your Name",
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      'Email',
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: _email,
                      decoration: InputDecoration(
                        hintText: "Enter your Email",
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 24.0),
                    Text(
                      'Password',
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: _pass,
                      decoration: InputDecoration(
                        hintText: "Enter your new Password",
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14.0),
                          borderSide: BorderSide.none,
                        ),
                        suffixIcon: IconButton(
                          icon: Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _obsecureText=!_obsecureText;
                            });
                          },
                        ),
                      ),
                      obscureText: _obsecureText,
                    ),
                    SizedBox(height: 24.0),
                    ElevatedButton(
                      onPressed: () {
                        FirebaseAuth.instance.createUserWithEmailAndPassword(email: _email.text, password: _pass.text).then((value){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));}).onError((error, stackTrace){print(error);});
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text('Registered Successfully!')));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple[900], // Background color
                      ),
                      child: Center(child: Text('Register')),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

