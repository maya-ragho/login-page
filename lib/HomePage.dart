import 'package:flutter/material.dart';
import 'package:loginppage/Login.dart';
import 'package:marquee/marquee.dart';

class MyHomePage extends StatefulWidget {
//  const MyHomePage({super.key});
//xyz
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const
      <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
        label: "Home",
        backgroundColor: Colors.lightGreen),


        BottomNavigationBarItem(icon: Icon(Icons.add),
        label: "Add",
        backgroundColor: Colors.lightGreen),


        BottomNavigationBarItem(icon: Icon(Icons.navigation),
            label: "Navigation",
            backgroundColor: Colors.lightGreen),



        BottomNavigationBarItem(icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.lightGreen),

        BottomNavigationBarItem(
            icon: Icon(Icons.logout),
            label: "Logout",
            backgroundColor: Colors.lightGreen),

      ]),
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text("HomePage"),
        actions: [
          PopupMenuButton(itemBuilder: (context)=>[
            const PopupMenuItem<int>(
              value: 0,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.wifi, color: Colors.black,),
                      Text("Wi-Fi"),
                    ],
                  ),
                  SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.bluetooth_audio, color: Colors.black,),
                      Text("Bluetooth"),
                    ],
                  ),
                  SizedBox(height: 10,),


                  Row(

                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.battery_0_bar, color: Colors.black,),
                      Text("Battery"),
                    ],
                  ),
                  SizedBox(height: 10,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.storage, color: Colors.black,),
                      Text("Storage"),
                    ],
                  ),
                  SizedBox(height: 10,),

                ],
              ),
            )
          ]),
        ],
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            Column(
              children:<Widget>[
                UserAccountsDrawerHeader(
                    accountName: Text("Maya Ragho"),
                    accountEmail: Text("mayaragho8080@gmail.com"),
                  currentAccountPictureSize:Size.square(70),
                  currentAccountPicture:
                  CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 165, 255, 137),
                    child:Text("MR"),
                    
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                ),

                ListTile(
                  leading: Icon(Icons.person_outline_outlined),
                  title: Text("Profile"),
                ),


                ListTile(
                  leading: Icon(Icons.view_agenda),
                  title: Text("View"),
                ),

                ListTile(
                  leading: Icon(Icons.account_box_outlined),
                  title: Text("Account"),
                ),



                ListTile(
                  leading: Icon(Icons.contact_phone),
                  title: Text("Contact"),
                ),


                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text("Log out"),
                ),

              ],
            )
          ],
        ),
      ),
      body: Material( color: Colors.black45,
          child: Marquee(text: "Wel-Come  Wel-ComeWel-Come Wel-Come Wel-Come Wel-Come Wel-Come Wel-Come Wel-Come Wel-Come",style: TextStyle(fontSize: 20, color: Colors.white),)),
      
      );
  }
}

