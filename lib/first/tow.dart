import 'package:flutter/material.dart';
import 'package:application1/Drower/new_drower.dart';
import 'package:application1/tabBar/a1.dart';

main() {
  runApp(A3());
}

class A3 extends StatefulWidget {

  @override
  _A3State createState() => _A3State();
}

class _A3State extends State<A3>  with SingleTickerProviderStateMixin{
  TabController TabCon;
  @override
  Widget build(BuildContext context) {
    TabCon =TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplication"),
        centerTitle: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {})
        ],
        bottom: TabBar(
          indicatorColor: Colors.lime,
          tabs:
          [
            Tab(text: "A",),
            Tab(text: "M",),
            Tab(text: "F_Coding",)
          ],controller:TabCon ,),
      ),
      drawer: Drawer(child: ListView.builder(itemBuilder: (context,index)

      {
        return ListTile(title: Text("aad"),trailing: Icon(Icons.circle),onTap: ()
        {
          Navigator.push(context,MaterialPageRoute(builder: (context)
          {
            return Container(color: Colors.lime,);
          }
          ,) );
        }

        ,);
      },
      itemCount: 1,

      ),),
      body: Container(
        child: TabBarView(children:
        [
          SingleChildScrollView(
            child: Ac(),

          ),


          ListView.builder(itemBuilder: (context ,position)
          {
            return Card(child:i());

          }

          ,itemCount: 2,
          ),

         ListView.builder(itemBuilder: (context,index)
         {
           return Container(decoration: BoxDecoration(image: DecorationImage
             (image: ExactAssetImage('img3ins.jpg')),shape: BoxShape.circle),
           width: 20,
             height: 1,
           );
         }
         ,itemCount: 20,
         )
          
        ],  controller: TabCon

          ,),),
    );
  }

  }
  Widget i()
  {
    return Column(children: [Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"),
      Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
      ,
      Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
      ,Text("aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    ],);
  }


