import 'package:flutter/material.dart';

class Terms extends StatelessWidget {
  const Terms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.purple[900],
        ),
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 6,
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                    children: [
                      Center(
                        child: Image.asset(
                          "images/logo.png",
                          height: 200,
                          width: 400,
                        ),
                      ),
                      Container(
                          width: 350,
                          height: 4050,
                          decoration: BoxDecoration(
                            color: Colors.purple[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        child: Column(
                          children:[
                            Center(
                              child: Text("Terms and Conditions",style: Theme.of(context).textTheme.headline6?.copyWith(
                                fontWeight: FontWeight.w600,
                                color: Colors.yellow,
                                fontSize: 30,
                              ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("These Terms and Conditions govern your access and use of the Dairy Milk App provided by Dairy Milk Inc. By downloading, installing, or using the App, you agree to be bound by these Terms. If you do not agree with any part of these Terms, you should not access or use the App.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("Account Registration",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text(" a. To use certain features of the App, you may be required to create an account.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text(" b. You must provide accurate, current, and complete information during the registration process.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text(" c. You are solely responsible for maintaining the confidentiality of your account credentials and for all activities that occur under your account.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text(" d. You agree to notify us immediately of any unauthorized use of your account.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text(" License",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text(" a. Subject to these Terms, we grant you a limited, non-exclusive, non-transferable, revocable license to use the App for your personal, non-commercial purposes.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("b. You may not use the App for any unlawful purpose or in any manner that could harm, disable, overburden, or impair the App.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text(" User Content",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text(" a. By using the App, you may submit content such as text, photos, videos, or other materials.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("b. You retain ownership of your User Content, but by submitting it to the App, you grant us a worldwide, royalty-free, non-exclusive, perpetual, irrevocable, and fully sublicensable license to use, reproduce, modify, adapt, publish, translate, create derivative works from, distribute, perform, and display your User Content.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text(" Prohibited Conduct",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("You agree not to:",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("a. Use the App for any unlawful purpose or in violation of these Terms.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("b. Impersonate any person or entity or falsely represent your affiliation with any person or entity.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("c. Interfere with or disrupt the operation of the App or the servers or networks connected to the App.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),SizedBox(height: 20,),

                            Center(
                              child: Text("d. Engage in any form of automated data collection, including scraping, crawling, or data mining.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("e. Upload or transmit any viruses, worms, or other malicious code.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("Intellectual Property",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("a. All intellectual property rights in the App, including but not limited to trademarks, copyrights, patents, trade secrets, and proprietary information, are owned by or licensed to us.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("b. You may not modify, reproduce, distribute, create derivative works, or exploit any part of the App without our prior written consent.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("Privacy",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("a. We collect and process personal information in accordance with our Privacy Policy, which is incorporated by reference into these Terms.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("b. By using the App, you consent to the collection, use, and disclosure of your personal information as described in our Privacy Policy.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("Disclaimer of Warranties",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("a. The App is provided on an 'as-is' and 'as available' basis, without any warranties or representations, express or implied.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("b. We do not warrant that the App will be error-free, uninterrupted, secure, or free from viruses or other harmful components.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("Limitation of Liability",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("a. To the fullest extent permitted by applicable law, we shall not be liable for any indirect, incidental, consequential, special, or punitive damages arising out of or in connection with your use of the App.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("Modifications to the App and Terms",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("a. We reserve the right to modify, suspend, or discontinue the App at any time without prior notice.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("b. We may also modify these Terms from time to time, and the updated Terms will be effective upon posting on the App.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("c. Your continued use of the App after any modifications to the Terms indicates your acceptance of the modified Terms.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("Governing Law and Jurisdiction",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("These Terms shall be governed by and construed in accordance with the laws of [Jurisdiction], without regard to its conflict of laws principles. Any dispute arising out of or relating to these Terms or the App shall be subject to the exclusive jurisdiction of the courts located in [Jurisdiction].",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("Severability",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("If any provision of these Terms is held to be invalid, illegal, or unenforceable, the validity, legality, and enforceability of the remaining provisions shall not in any way be affected or impaired.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("Entire Agreement",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.yellowAccent,
                                ),),
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Text("These Terms constitute the entire agreement between you and Dairy Milk Inc. regarding the App and supersede all prior agreements and understandings, whether written or oral.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                            SizedBox(height: 40,),
                            Center(
                              child: Text("Please read these Terms carefully before using the Dairy Milk App. By accessing or using the App, you acknowledge that you have read, understood, and agreed to be bound by these Terms.",
                                style: Theme.of(context).textTheme.headline6?.copyWith(
                                  color: Colors.white,
                                ),),
                            ),
                          ]
                        )
                      )



                    ]
                ),
              ),
            )
        )
    );
  }
}