import 'package:flutter/material.dart';
import 'package:news_blog/home_page.dart';
import 'package:news_blog/newspage.dart';

class DrawerSide extends StatefulWidget {
  const DrawerSide({super.key});

  @override
  State<DrawerSide> createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  List<String>draweritem=['Home','Audio','Create New Article','Bookmark','Membership','Setting'];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, child:Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('News Blog'),
          bottom: const TabBar(tabs: [
            Tab(child: Text('All News'),),
            Tab(child: Text('Technology'),),
            Tab(child: Text('Fashion'),),
            Tab(child: Text('Sports'),),
            Tab(child: Text('Science'),),
          ]),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.white,
                child: Container(
                  child: const SafeArea(
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFsZSUyMHByb2ZpbGV8ZW58MHx8MHx8fDA%3D&w=1000&q=80'),
                            radius: 50,
                          ),
                        ),
                        Column(children: [
                          Text('Robert Fin',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          Text('robertfin@gmail.com',style: TextStyle(color: Colors.grey),)
                        ],)
                      ],
                    ),
                  ),

                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: draweritem.length,
                  itemBuilder: (context,index){
                    return Padding(padding: const EdgeInsets.all(3),
                    child: ListTile(
                      title: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>NewsPage()));
                            },
                            child: Text(draweritem[index])),
                        ],
                      ),
                    ),);
                }),
              )
            ],
          )
        ),
        body: const NewsPage(),
      ));
  }
}