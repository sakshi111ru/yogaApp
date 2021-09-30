import 'package:demo_practical/widgets/clipperhome.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            "AppName",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color.fromARGB(255, 82, 97, 201),
                fontWeight: FontWeight.bold,
                fontSize: 38),
          ),
        ),
        elevation: 0,
        toolbarHeight: 60,
        backgroundColor: Colors.white,
        leading: const CircleAvatar(
          child: Align(
            alignment: Alignment(400, 0),
          ),
          radius: 15,
          backgroundImage: AssetImage('assets/profileimage.jpg'),
        ),
    
      ),
      drawer: const Drawer(),
      backgroundColor: const Color(0xfff8f8f8),
      body: Stack(
        children: <Widget>[
          Column(
            children: const [
              /* Container(
                height: MediaQuery.of(context).size.height*0.36,
                width: MediaQuery.of(context).size.width,
                color:const Color.fromARGB(255, 82, 97, 201),
                
              )*/
              Clipperhome(),
            ],
          ),
          Column(
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "Hello,\tusername!\nLet's start work",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  children: <Widget>[
                    categoryWidget('img3', "Yoga"),
                    categoryWidget('img11', "Medicine alarm"),
                    categoryWidget('img10', "Diet"),
                    categoryWidget('img12', "Mudra")
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Container categoryWidget(String img, String title) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10, bottom: 20),
      width: MediaQuery.of(context).size.width * 0.3,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 20,
              spreadRadius: 1,
              offset: const Offset(0, 10),
            )
          ]),
      child: InkWell(
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/$img.png'),
                        fit: BoxFit.contain)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Text(
                ' $title',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 82, 97, 201)),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
