import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter', debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First App",
            style: TextStyle(color: Colors.amber),
          ),
          // centerTitle: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.amber,
          actions: const [
            Icon(Icons.account_circle_sharp),
            SizedBox(
              width: 3,
            ), 
            Text("Profile"),
            SizedBox(
              width: 11,
            )
          ],
          leading: const Icon(Icons.ac_unit_rounded),
        ),
        body: Container(
          padding: const EdgeInsets.all(30),
          child: Column(    
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3vVHGg815PYZMbd0x0WenJntYVmDPeR_JKw&s",
                width: 100,
                height: 100,
              ),
              Padding(
              padding: const EdgeInsets.all(1.0),
                child: TextFormField(
                  decoration: const InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      suffix: MaterialButton(
                        onPressed: () {},
                        
                      )),
                ),
              ),
              MaterialButton(
                onPressed: () {},
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Login",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                color: Colors.amber,
                minWidth: 500,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 170),
                child: Row(
                  children: [
                    Text("data"),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Text(
                        "register",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Text(
                    "Forget Password",
                    style: TextStyle(color: Colors.blue),
                  )),
            ],
          ),
        ));
  }
}