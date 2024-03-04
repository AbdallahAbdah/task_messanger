import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messanger',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Messanger'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class ActiveAcc extends StatelessWidget {
  String imgUrl = "";
  String name = "";
  ActiveAcc(String imgUrl, String name) {
    this.imgUrl = imgUrl;
    this.name = name;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imgUrl),
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 4,
            )
          ],
          alignment: Alignment.bottomRight,
        ),
        Text(name)
      ],
    );
  }
}

class Chat extends StatelessWidget {
  String imgUrl = "";
  String name = "";
  String text = "";
  String time = "";
  Chat(String imgUrl, String name, String text, String time) {
    this.imgUrl = imgUrl;
    this.name = name;
    this.text = text;
    this.time = time;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Stack(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(imgUrl),
            ),
            CircleAvatar(
              backgroundColor: Colors.green,
              radius: 4,
            )
          ],
          alignment: Alignment.bottomRight,
        ),
        SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: TextStyle(fontWeight: FontWeight.bold),
              textAlign: TextAlign.left,
            ),
            Text(
              text,
              textAlign: TextAlign.left,
            )
          ],
        ),
        Container(
            alignment: Alignment.topRight,
            width: 250,
            child: Text(
              time,
              textAlign: TextAlign.right,
              style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
            ))
      ],
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  Widget acc1 = new ActiveAcc(
      "https://i.pinimg.com/236x/ad/97/7c/ad977c45c021de1ccd172c2d843da553.jpg",
      "abdah");

  Widget chat1 = new Chat(
      "https://i.pinimg.com/236x/4b/fb/d6/4bfbd6b82e93eeef8ff9fec97bfd2a67.jpg",
      "سكر",
      "مياو  مياو يا بغلاو",
      "5:02");
  /*List <Widget> acc = [];

  void addAcc (String s1,String s2){
    for(int i =0 ;i<20;i++){
      acc[i]= new ActiveAcc(s1, s2);
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://i.pinimg.com/236x/8b/09/0d/8b090dc7bb1e41a4ff1652f16c5f8851.jpg"),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Chats",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )
          ],
        ),
        actions: [
          CircleAvatar(
            child: Icon(Icons.camera_alt),
          ),
          SizedBox(
            width: 10,
          ),
          CircleAvatar(child: Icon(Icons.edit)),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Container(
            height: 35,
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.search,
                  size: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Search",
                  style: TextStyle(fontSize: 15),
                )
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20), color: Colors.black26),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                acc1,
                SizedBox(
                  width: 10,
                ),
                acc1,
                SizedBox(
                  width: 10,
                ),
                acc1,
                SizedBox(
                  width: 10,
                ),
                acc1,
                SizedBox(
                  width: 10,
                ),
                acc1,
                SizedBox(
                  width: 10,
                ),
                acc1,
                SizedBox(
                  width: 10,
                ),
                acc1,
                SizedBox(
                  width: 10,
                ),
                acc1,
                SizedBox(
                  width: 10,
                ),
                acc1,
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  chat1,
                  SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1,SizedBox(height: 5,),
                  chat1
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
