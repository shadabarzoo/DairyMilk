import 'package:demo/main.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


class Forgot extends StatefulWidget {
  const Forgot ({Key? key}) : super(key: key);

  @override
  State<Forgot> createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {

  void initState(){
    Firebase.initializeApp();
    super.initState();
  }

  TextEditingController _email = TextEditingController();

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
                  'Forget Password',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.purple[900],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  'Please enter the email you want to receive link to reset password',
                ),
              ),
              SizedBox(height: 32.0),
              Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    ElevatedButton(
                      onPressed: () {FirebaseAuth.instance.sendPasswordResetEmail(email: _email.text)
                          .then((value){Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));})
                          .onError((error, stackTrace){print(error);});
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('An email will be sent to you soon!')));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple[900], // Background color
                      ),
                      child: Center(child: Text('Forgot')),
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