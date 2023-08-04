import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'home.dart';
import 'register.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'forgot.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SampleApp());
}

class SampleApp extends StatefulWidget {
  const SampleApp({Key? key}) : super(key: key);

  @override
  State<SampleApp> createState() => _SampleAppState();
}

class _SampleAppState extends State<SampleApp> {
  bool _isLoggedIn = false;
  @override
  void initState() {
    super.initState();
    checkLoggedInStatus();
  }

  void checkLoggedInStatus() async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user = auth.currentUser;

    setState(() {
      _isLoggedIn = user != null;
    });
  }
  @override
  Widget build(BuildContext context) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: AnimatedSplashScreen(
            duration:2000,nextScreen: _isLoggedIn ? Home() : Login(),
            splash:Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Center(child: Image.asset("images/splash.jpeg"),),
            ),
            splashIconSize: double.infinity,
          ),
        );
  }
}

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  void initState(){
    Firebase.initializeApp();
    super.initState();
  }
  //String eid ="";
  bool _obsecureText = true;
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  /*void getData(){
    setState(() {
      eid = _email.text;
    });
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 60.0),
              Padding(
                padding: const EdgeInsets.only(left: 10),
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
                  'Welcome Back!',
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                    fontWeight: FontWeight.w600,
                    color: Colors.purple[900],
                  ),
                ),
              ),
              SizedBox(height: 16.0),
              Center(
                child: Text(
                  'Please login to access and start shopping',
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
                    Text(
                      'Password',
                    ),
                    SizedBox(height: 10.0),
                    TextField(
                      controller: _pass,
                      decoration: InputDecoration(
                        hintText: "Enter your Password",
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
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Forgot()));},
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: Colors.purple[900],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 50.0),
                    ElevatedButton(
                      onPressed: () {FirebaseAuth.instance.signInWithEmailAndPassword(email: _email.text, password: _pass.text).then((value){Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));}).onError((error, stackTrace){print(error);});},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple[900], // Background color
                      ),
                      child: Center(child: Text('Log In')),
                    ),
                  ],
                ),
              ),
              /*SizedBox(height: 16.0),
              Center(child: Text("or")),*/
              SizedBox(height: 40,),
              /*Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Row(
                  children: [
                    Text("SignIn with :"),
                    GestureDetector(
                      onTap: () {
                        _googleSignIn.signIn().then((value) {
                          String userName = value!.displayName!;
                          String profilePicture = value.photoUrl!;
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                        });
                         },
                      child: Image.asset(
                        'images/googleLogo.png',
                        width: 40.0,
                        height: 40.0,
                      ),
                    ),
                  ],
                ),
              ),*/
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  SizedBox(width: 4.0),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUp()));
                    },
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                        color: Colors.purple[900],
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
