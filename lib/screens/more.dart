import 'package:design/screens/Profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MorePage extends StatefulWidget {
  @override
  _MorePageState createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:   Color(0xff4F9BDA),
      elevation: 0,
      ),
      backgroundColor: Colors.white,





      body: Container(


        child: ListView(

          children: [
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color:  Color(0xff4F9BDA)),
              child: ListTile(
                trailing: Container(
                  width: 80,
                  child: Row(
                   children: [
                     IconButton(icon: Icon(Icons.settings,color:Colors.white70), onPressed:(){
                       Navigator.push(context,MaterialPageRoute(builder: (context)
                          {
                            return Profile();
                          }));
                     } ),
                     Text("عربى",style: TextStyle(color: Colors.white70,fontSize: 14,),)
                   ],
                  ),
                ),
                leading: Stack(
                  children: [
                    Container(

                      width: 60,
                      height: 60,
                      child: CircleAvatar(backgroundImage: AssetImage('assets/images/mostafa.jpg'),radius: 20,),

                    ),

                    Positioned(
                        right:44,
                        top: 3,
                        child: CircleAvatar(
                            backgroundColor: Colors.green,
                            radius: 5,

                        )),

                  ],
                ),
                title: Text("عبد المنعم عميل",style: TextStyle(color: Colors.white70,fontSize: 20,),),
                subtitle:Text("متصل",style: TextStyle(color: Colors.white70,fontSize: 14,),) ,

              ),
            ),



            Padding(
              padding: const EdgeInsets.only(top:40.0,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.description,
                    color: Colors.grey,
                    size: 24,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'طلبات التسعير',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top:30.0,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.feedback_outlined,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'المهندسين المفضلين',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.copyright_rounded,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'طلب الانجاز الرئسى',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:33.0,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star_border_purple500_sharp,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'التقيمات',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.auto_awesome_motion,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'المشاريع المفتوحة',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.help_center_outlined,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'الدعم الفنى',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:30.0,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    Icons.logout,
                    color: Colors.grey,
                    size: 20,
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    'تسجيل الخروج',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
