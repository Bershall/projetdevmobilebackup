import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: const Color(0xff202a44),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                shape:BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQki8Z_CITR4d0LdWHjq69t5pVyLjGFC5QRhacLXtGg6lkkS1MnnL59VXVFAvS6SgvAiuQ&usqp=CAU"),
                    fit: BoxFit.fill
                )
            ),
          ),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Mail',
            ),
          ),
          SizedBox(height: 20),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 60),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
            ),
            onPressed: () {print("I don't know Rick");},
            child: const Text('Connect toi magueule'),
          ),
          SizedBox(height: 30),
          InkWell(
              child: Text("clqidqkable",style: TextStyle(color: Colors.blue),),
              onTap: () {
                print("FUCK YOU BITCH, SHUT THE FUCK UP BITCH");
                Navigator.push(context, MaterialPageRoute(
                    builder: (BuildContext context) {
                      return register();
                    }
                ));
              }
          ),
        ]
    );
  }
}

class register extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return registerState();
  }
}

class registerState extends State<register> {
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Inscription"),
          centerTitle: true
      ),
      body: bodyPage(),
    );
  }

  Widget bodyPage() {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Mail',
          ),
        ),
        SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'nom',
          ),
        ),
        SizedBox(height: 30),
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Prenom',
          ),
        ),
        SizedBox(height: 40),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))
          ),
          onPressed: () {print("UWU");},
          child: const Text('Inscription'),
        ),
      ],
    );
  }
}
