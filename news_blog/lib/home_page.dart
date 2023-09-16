import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:news_blog/login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> image=[
    'https://plus.unsplash.com/premium_photo-1661776217775-ba332ee9566e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8bmV3cyUyMHJlcG9ydGVyfGVufDB8fDB8fHww&w=1000&q=80',
    'https://www.newsdirect.com/hubfs/blog/News-reporter-or-TV-journalist-at-press-conference,-holding-microphone-and-writing-notes.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 500,
              child: Swiper(
                itemCount: image.length,
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Card(  
                        elevation:5 ,
                        child: Image.network(
                          image[index], 
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
                pagination: SwiperPagination(),
                control: null,
            ), 
           ),
            Column(
            children: [
              Text('Welcome to News Blog',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: RichText(text: TextSpan(text: 'Lorum ipsum is the traditional Latin placeholder text, used when a designer needs a chunk of text for dummying up a layout.',
                style:TextStyle(color: Colors.grey) ),),
              ),
            ],
            
           ),
           Padding(
             padding: const EdgeInsets.all(18.0),
             child: InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
               child: Row(
                 children: [
                   Column(
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(color: Color.fromARGB(255, 243, 191, 191),borderRadius: BorderRadius.circular(15)),
                        child: Center(child: Text('Skip',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                      ),
                    ],
                   ),
                   SizedBox(width: 35,),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: 150,
                        decoration: BoxDecoration(color: Color.fromARGB(255, 221, 27, 27),borderRadius: BorderRadius.circular(15)),
                        child: Center(child: Text('Next',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.white),)),
                      ),
                    ],
                   ),
                  
                 ],
               ),
             ),
           ),
          ],
        ),
      ),
    );
  }
}
