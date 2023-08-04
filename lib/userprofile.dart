import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final CollectionReference _table = FirebaseFirestore.instance.collection('table');
  TextEditingController _name = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  TextEditingController _address = TextEditingController();
  final User? user = FirebaseAuth.instance.currentUser;
  TextEditingController _emailController = TextEditingController();

  /* _del(String productId) async{
     await _table.doc(productId).delete();
   }*/

  _update([DocumentSnapshot?  documentSnapshot])  async {
    await showModalBottomSheet(context:context,builder:(BuildContext context){
      return Padding(padding: EdgeInsets.only(top: 20,left: 20,right: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          TextField(
            controller: _name,
            decoration: InputDecoration(labelText: "Name"),
          ),
          TextField(
            controller: _mobile,
            decoration: InputDecoration(labelText: "Mobile Number"),
          ),
          TextField(
            controller: _address,
            decoration: InputDecoration(labelText: "Address"),
          ),
          SizedBox(height: 20,),
          Center(
            child: ElevatedButton(onPressed: ()async{
              final String? name= _name.text;
              final double? mobile= double.tryParse(_mobile.text);
              final String? address= _address.text;
              try {
                print("Document added successfully!");
              } catch (e) {
                print("Error adding document: $e");
              }
              await _table.doc(documentSnapshot!.id).update({"name":name,"mobile":mobile,"address":address});
            }, child: Text("Save")),
          )
        ],
      ),
      );
    });
  }

  void initState() {
    super.initState();
    if (user != null) {
      _emailController.text = user!.email ?? "";
    }
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.purple[900],
        ),
        home: Scaffold(
                body: StreamBuilder(
                  stream: _table.snapshots(),
                  builder: (context, AsyncSnapshot<QuerySnapshot>streamSnapShot){
                    if(streamSnapShot.hasData){
                      return ListView.builder(
                          itemCount: streamSnapShot.data!.docs.length,
                          itemBuilder: (context, index){
                            final DocumentSnapshot documentSnapshot= streamSnapShot.data!.docs[index];
                            return Column(
                              children: [
                                Center(
                                  child: Image.asset(
                                    "images/logo.png",
                                    height: 150,
                                    width: 200,
                                  ),
                                ),
                                Container(
                                  height: 100,
                                  width: 340,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10,left: 10),
                                        child: Text("Logged in as:",style: Theme.of(context).textTheme.headline6?.copyWith(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        )),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 40,),
                                        child: TextField(
                                          enabled: false,
                                          controller: _emailController,
                                          decoration: InputDecoration(
                                            filled: true,
                                            fillColor: Colors.grey[200],
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(14.0),
                                              borderSide: BorderSide.none,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 5),
                                  child: Card(
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 270),
                                          child: IconButton(onPressed: (){_update(documentSnapshot);}, icon: Icon(Icons.edit)),
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(right: 270),
                                            child: Text("Name",style: Theme.of(context).textTheme.headline6?.copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            )
                                            )
                                        ),
                                        ListTile(
                                          title: Text(documentSnapshot['name'].toString()),
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                            padding: const EdgeInsets.only(right: 190),
                                            child: Text("Mobile Number",style: Theme.of(context).textTheme.headline6?.copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            )
                                            )
                                        ),
                                        ListTile(
                                          title: Text(documentSnapshot['mobile'].toString()),
                                        ),
                                        SizedBox(height: 20,),
                                        Padding(
                                            padding: const EdgeInsets.only(right: 250),
                                            child: Text("Address",style: Theme.of(context).textTheme.headline6?.copyWith(
                                              fontWeight: FontWeight.w600,
                                              color: Colors.black,
                                            )
                                            )
                                        ),
                                        ListTile(
                                          title: Text(documentSnapshot['address'].toString()),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            );
                          });
                    }
                    // await _table.add({"id": 103,"name":shadab})
                    // await _table.update({"id": 103,"name":shadab})
                    // await _table.delete({"id": 103,"name":shadab})
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                )
            )
        );
  }
}