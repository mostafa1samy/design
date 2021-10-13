import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/im.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 0,
                  top: 10,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios_sharp,
                      color: Colors.white70,
                    ),
                    onPressed: () {},
                  ),
                )
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              child: ListTile(
                leading: Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/mostafa.jpg'),
                        radius: 20,
                      ),
                    ),
                    Positioned(
                      right: 50,
                      top: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 5,
                      ),
                    )
                  ],
                ),
                title: Text(
                  'عبد المنعم ',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                subtitle: Row(
                  children: [
                    Text('6مراجعات'),
                    Text('4.1'),
                    Icon(
                      Icons.star,
                      color: Colors.yellowAccent,
                    )
                  ],
                ),
                trailing: Container(
                  width: 180,
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(5)),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'طلب عرض السعر',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.announcement_outlined,
                          color: Colors.grey,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  children: [
                    Container(
                        width: 120,
                        height: 30,
                        decoration:
                            BoxDecoration(color: Colors.lightBlueAccent),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'تصميم ثلاثى الابعاد',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                        )),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                        width: 80,
                        height: 30,
                        decoration:
                            BoxDecoration(color: Colors.lightBlueAccent),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'تصميم فلا',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                        )),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                        width: 90,
                        height: 30,
                        decoration:
                            BoxDecoration(color: Colors.lightBlueAccent),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'تصميم داخلى',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                        )),
                    SizedBox(
                      width: 3,
                    ),
                    Container(
                        width: 80,
                        height: 30,
                        decoration:
                            BoxDecoration(color: Colors.lightBlueAccent),
                        child: FlatButton(
                          onPressed: () {},
                          child: Text(
                            'معمارى',
                            style: TextStyle(color: Colors.white, fontSize: 9),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.location_disabled_outlined),
                  ),
                  Text('القاهرة مصر')
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.phone),
                  ),
                  Text('01153145226'),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.edit_location_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 10,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.email_outlined),
                  ),
                  Text('mst@gmail.com'),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.edit_location_outlined),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Divider(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('مهندس معمارى مهندس معمارى مهندس معمارى مهندس معمارى'
                  ' مهندس معمارى رمهندس معمار'),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('نبذة مختصرة عنى'),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'معرض الاعمال',
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),
            ),
            gettr(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'خدمات عبد المنعم',
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            gettrr(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'تعليقات عبد المنعم',
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            gettrcoment(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'الخبرات السابقة',
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),
            ),
            getexperence(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'الموهل التعليمى',
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.bold),
              ),
            ),
            getcer(),

          ],
        ),
      ),
    );
  }

  Widget gettr() {
    return Container(
      height: 310,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          gett('assets/images/im1.jpg'),
          gett('assets/images/im2.jpg'),
          gett('assets/images/im1.jpg'),
          gett('assets/images/im2.jpg'),
        ],
      ),
    );
  }
  Widget getexperence() {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          getexper(),
          getexper(),
          getexper(),
          getexper(),
        ],
      ),
    );
  }
  Widget getcer() {
    return Container(
      height: 200,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          getcertif(),
          getcertif(),
          getcertif(),
          getcertif(),
        ],
      ),
    );
  }

  Widget gettrr() {
    return Container(
      height: 155,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          gettt('assets/images/i1.jpg'),
          gettt('assets/images/i2.jpg'),
          gettt('assets/images/i1.jpg'),
          gettt('assets/images/i2.jpg'),
        ],
      ),
    );
  }
  Widget gettrcoment() {
    return Container(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          comment(),
          comment(),
          comment(),



        ],
      ),
    );
  }

  Widget gett(String image) {
    return new SizedBox(
        width: 200,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      width: 200,
                      height: 150,
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.blueAccent,
                              borderRadius: BorderRadius.circular(5)),
                          child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'تصميم ذاتى',
                              style: TextStyle(color: Colors.white70),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'تصميم ذاتى',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.date_range),
                  ),
                  Text('منذ 3 ايام'),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(5)),
                        child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'حول المشروع',
                              style: TextStyle(color: Colors.white70),
                            ))),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget gettt(String image) {
    return new SizedBox(

        width: 300,
        child: Card(
          child: Row(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Container(
                  width: 100,
                  height: 200,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('التصميم المعمارى',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('التصميم المعمارى لتصميمم',style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: Text('التصميم المعمارى لتصميمم',style: TextStyle(color: Colors.grey,fontSize: 12),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      width: 170,
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(5)
                      ),
                        child: FlatButton(onPressed: (){},child: Text('50ريال-متر مربع',style: TextStyle(color: Colors.white70,fontSize: 12)),)),
                  )

                ],

              )

            ],
          ),
        ));
  }
  Widget getexper(){
    return SizedBox(
      width: 300,
      child: Card(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('شركة الانتر ديذاين',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('مصمم داخلى',style: TextStyle(color: Colors.grey,fontSize: 12),),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.date_range),
                    ),
                    Text('3oct,2020-الخاضر'),
                  ],
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.location_disabled_outlined),
                    ),
                    Text('الرياض - المملكة العربية السعودية'),
                  ],
                ),
              ),
            )



          ],

        ),



      ),

    );
  }
  Widget comment(){
    return SizedBox(
      width: 500,
      child: Card(
        child: Column(
          children: [
            Container(
              child: ListTile(
                leading: Stack(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: CircleAvatar(
                        backgroundImage:
                        AssetImage('assets/images/mostafa.jpg'),
                        radius: 20,
                      ),
                    ),
                    Positioned(
                      right: 50,
                      top: 5,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 5,
                      ),
                    )
                  ],
                ),
                title: Text(
                  'عبد المنعم ',
                  style: TextStyle(color: Colors.blueAccent),
                ),
                subtitle: Row(
                  children: [
                    Text('6مراجعات'),
                    Text('4.1'),
                    Icon(
                      Icons.star,
                      color: Colors.yellowAccent,
                    )
                  ],
                ),
                trailing: Container(
                  width: 180,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.date_range),
                      ),
                      Text('منذ 3 ايام'),
                    ],
                  ),
                ),
              ),
            ),
            Text(' مهندس كبير مهندس كبير مهندس كبيرهو مهندس كبير',style: TextStyle(color: Colors.grey,fontSize: 12),)
          ],
        ),
      ),
    );
  }
  Widget getcertif(){
    return SizedBox(
      width: 300,
      child: Card(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Center(
                child: CircleAvatar(
                  child: Icon(FontAwesomeIcons.certificate),
                  radius: 25,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('جامعة القاهرة-مصر',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blueAccent),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('بكالوريس هندسة',style: TextStyle(color: Colors.grey,fontSize: 16),),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(

                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.date_range),
                    ),
                    Text('2016-2020'),
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
