import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'tow.dart';


class A2 extends StatelessWidget {
  TabController tabController;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("ahhhmedd"),centerTitle: true,

       actions: [
         IconButton(icon: Icon(Icons.circle), onPressed:(){})
       ],
        bottom: TabBar(
          tabs: [

          Text("aax"),Text("uu"),Text("mn")
        ],),



      ),
      drawer: Drawer(
        child: ListView.builder(itemBuilder: (context, index) {

          return ListTile(title: Text("assd"),trailing: Icon(Icons.accessibility),onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Container(color: Colors.black,);
            },));
          },);
        }
        ,
        itemCount: 1,),
      ),

      body: PageView.builder(
        itemBuilder: (context, index) {
          return Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  child: Image(
                    image: AssetImage('img3ins.jpg'),
                  ),
                ),
              ),

              Container(
                  child:
                  RaisedButton(child: Text("ahmed mohamed farhan"),


                    onPressed: ()
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context){return A3();}));
                    }

                    ,),
              ),


            ],
          );
        },
        itemCount: 3,
      ),
    );
  }
}
