
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:form_field_validator/form_field_validator.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isHiddenPassword=true;
  hex(String colorHex){
    String newc='0xff'+colorHex;
    newc=newc.replaceAll('#', '');
    
    int colorint=int.parse(newc);
    return colorint;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(hex('#4F9BDA')),
        title: Text("اعدادت الحساب",style: TextStyle(color: Colors.white,fontSize: 22),),
        centerTitle: true,
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,),),
      ),
      body: ListView(

        children: [
          Container(
            height: 150,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color:  Color(hex('#4F9BDA'))),
            child: ListTile(
              leading: Stack(
                children: [
                  Container(

                    width: 70,
                    height: 70,
                    child: CircleAvatar(backgroundImage: AssetImage('assets/images/mostafa.jpg'),radius: 20,),

                      ),

                  Positioned(
                      right:44,
                      top: 3,
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 10,

                      )),

                ],
              ),
              title: Text("عبد المنعم عميل",style: TextStyle(color: Colors.white70,fontSize: 20,),),
              subtitle:Text("متصل",style: TextStyle(color: Colors.white70,fontSize: 14,),) ,

            ),
          ),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Text("اسم المستخدم",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            subtitle: Text('عبد المنعم عميل',style: TextStyle(color: Colors.grey,fontSize: 14),),
            trailing: IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: ()async{
              await showUsernameDailogue(context);
            },color: Colors.grey,iconSize: 18,),
          ),
          Divider(color: Colors.grey,),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Text("الوصف",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            subtitle: Text('عبد المنعم عميلعبد المنعم عميل عبد المنعم عميلعبد المنعم عميل',style: TextStyle(color: Colors.grey,fontSize: 14),),
            trailing: IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: ()async{
              await showDescDailogue(context);
            },color: Colors.grey,iconSize: 18,),
          ),
          Divider(color: Colors.grey,),
//          ListTile(
//            title: Row(
//              children: [
//                Text("البريد الالدترونى",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
//
//              ],
//            ),
//            subtitle: Text('mstfymhmdsamy1@gmail.com',style: TextStyle(color: Colors.grey,fontSize: 14),),
//            trailing: Container(
//              height: 90,
//              child: Column(
//                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//
//                children: [
//                  IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: (){},color: Colors.grey,iconSize: 12,),
//                  IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: (){},color: Colors.green,iconSize: 12,),
//
//
//
//                ],
//              ),
//            ),
//          ),
     Container(
        margin:  EdgeInsets.only(right: 18,left: 18),
        child: Row(
               children: [
                 Text("البريد الالكترونى",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                 Spacer(),
                 IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: (){},color: Colors.grey,iconSize: 18,),

               ],
             ),
      ),
         Container(
            margin:  EdgeInsets.only(right: 18,left: 18),
            child: Row(
              children: [
                Text('mstfymhmdsamy1@gmail.com',style: TextStyle(color: Colors.grey,fontSize: 14),),
                Spacer(),
                IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: ()async{
                  await showEmailDailogue(context);

                },color: Colors.lightGreen,iconSize: 18,),

              ],
            ),
          ),
          Divider(color: Colors.grey,),
          Container(
            margin:  EdgeInsets.only(right: 18,left: 18),
            child: Row(
              children: [
                Text("رقم الهاتف",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
                Spacer(),
                IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: (){},color: Colors.grey,iconSize: 18,),

              ],
            ),
          ),
          Container(
            margin:  EdgeInsets.only(right: 18,left: 18),
            child: Row(
              children: [
                Text('+2001552610445',style: TextStyle(color: Colors.grey,fontSize: 14),),
                Spacer(),
                IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: ()async{
                  await showPhoneDailogue(context);
                },color: Colors.lightGreen,iconSize: 18,),

              ],
            ),
          ),
          Divider(color: Colors.grey,),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Text("كلمة السر",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            subtitle: Text('********',style: TextStyle(color: Colors.grey,fontSize: 14),),
            trailing: IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: ()async{
              await showPasswordDailogue(context);
            },color: Colors.grey,iconSize: 18,),
          ),
          Divider(color: Colors.grey,),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Text("االجنسية",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            subtitle: Text('مصرى',style: TextStyle(color: Colors.grey,fontSize: 14),),
            trailing: IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: ()async{
              await showNationalityDailogue(context);
            },color: Colors.grey,iconSize: 18,),
          ),
          Divider(color: Colors.grey,),
         // Divider(color: Colors.grey,),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Text("االمعلومات الخاصة بالموقع",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            subtitle: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Text('الدولة:  ',style: TextStyle(color: Colors.grey,fontSize: 14),),
                          Text('مصرى',style: TextStyle(color: Colors.grey,fontSize: 14),),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Row(
                        children: [
                          Text('المدينة: ',style: TextStyle(color: Colors.grey,fontSize: 14),),
                          Text('القاهرة',style: TextStyle(color: Colors.grey,fontSize: 14),),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Row(
                    children: [
                      Text('االرمز البريدى: ',style: TextStyle(color: Colors.grey,fontSize: 14),),
                      Text('12963',style: TextStyle(color: Colors.grey,fontSize: 14),),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Row(
                    children: [
                      Text('العنوان: ',style: TextStyle(color: Colors.grey,fontSize: 14),),
                      Text('شارع عرابى',style: TextStyle(color: Colors.grey,fontSize: 14),),
                    ],
                  ),
                ),
              ],
            ),
            trailing: IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: ()async{
              await showInformationDailogue(context);

            },color: Colors.grey,iconSize: 18,),
          ),
          Divider(color: Colors.grey,),
          ListTile(
            title: Padding(
              padding: const EdgeInsets.only(bottom:8.0),
              child: Text("الجنس",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            ),
            subtitle: Text('ذكر',style: TextStyle(color: Colors.grey,fontSize: 14),),
            trailing: IconButton(icon: Icon(Icons.edit_location_outlined), onPressed: ()async{
              await showTypeDailogue(context);

            },color: Colors.grey,iconSize: 18,),
          ),
        ],
      ),
    );
  }
  Future<void> showEmailDailogue(BuildContext context)async{
    GlobalKey<FormState> form=new GlobalKey<FormState>();
    return await showDialog(context: context,
      builder: (context){
      return AlertDialog(
        title: Text('البريد الالكترونى',style: TextStyle(color: Colors.blueAccent),),
        content: Form(
          autovalidate: true,

          key: form,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
            Container(
              decoration: BoxDecoration(


                borderRadius: BorderRadius.circular(4)

              ),
              child: TextFormField(
                validator: EmailValidator(errorText: 'الرجاء ادحال الايميل بطريقة صحيحة'),
              keyboardType: TextInputType.emailAddress,



//              validator: (value) {
//               return  value.isNotEmpty?null:'الجاء ادحال البريد الالكترونى';
//
//
//              },
              decoration: InputDecoration(

                border: OutlineInputBorder(),



                hintText: "ادخل البريد الالكترونى",
                hintStyle: TextStyle(fontSize: 10,color: Colors.grey),
                // If  you are using latest version of flutter then lable text and hint text shown like this
                // if you r using flutter less then 1.20.* then maybe this is not working properly


              ),
          ),
            )


            ],
          ),
        ),
        actions: <Widget>[
          Container(
            width: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),

              color: Color(hex('#4F9BDA'))
            ),
            child: TextButton(onPressed: (){
              if(form.currentState.validate()){
                Navigator.pop(context);

              }
            }, child: Text('حفظ',style: TextStyle(color: Colors.white,fontSize: 14),)),
          ),
          Container(
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Color(hex('#4F9BDA')))


            ),
            child: TextButton(onPressed: (){

                Navigator.pop(context);


            }, child: Text('الغاء',style: TextStyle(color: Colors.blue,fontSize: 14),)),
          )
        ],
      );
      }

    );
  }
  Future<void> showPhoneDailogue(BuildContext context)async{
    GlobalKey<FormState> form=new GlobalKey<FormState>();
    return await showDialog(context: context,
        builder: (context){
          return AlertDialog(
            title: Text('رقم الهاتف',style: TextStyle(color: Colors.blueAccent),),
            content: Form(
              key: form,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(


                        borderRadius: BorderRadius.circular(4)

                    ),
                    child: TextFormField(

                      keyboardType: TextInputType.phone,

                      validator: (value) {
                        return  value.isNotEmpty?null:'الجاء ادحال رقم الهاتف';


                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),



                        hintText: "ادخل رقم الهاتف",
                        hintStyle: TextStyle(fontSize: 10,color: Colors.grey),
                        // If  you are using latest version of flutter then lable text and hint text shown like this
                        // if you r using flutter less then 1.20.* then maybe this is not working properly


                      ),
                    ),
                  )


                ],
              ),
            ),
            actions: <Widget>[
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),

                    color: Color(hex('#4F9BDA'))
                ),
                child: TextButton(onPressed: (){
                  if(form.currentState.validate()){
                    Navigator.pop(context);

                  }
                }, child: Text('حفظ',style: TextStyle(color: Colors.white,fontSize: 14),)),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(hex('#4F9BDA')))


                ),
                child: TextButton(onPressed: (){

                    Navigator.pop(context);


                }, child: Text('الغاء',style: TextStyle(color: Colors.blue,fontSize: 14),)),
              )
            ],
          );
        }

    );
  }
  Future<void> showUsernameDailogue(BuildContext context)async{
    GlobalKey<FormState> form=new GlobalKey<FormState>();
    return await showDialog(context: context,
        builder: (context){
          return AlertDialog(
            title: Text('اسم المستحدم',style: TextStyle(color: Colors.blueAccent),),
            content: Form(

              key: form,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(4),


                    ),
                    child: TextFormField(

                      keyboardType: TextInputType.text,

                      validator: (value) {
                        return  value.isNotEmpty?null:'الجاء ادحال اسم المستخدم';


                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),



                        hintText: "ادخل اسم المستحدم",
                        hintStyle: TextStyle(fontSize: 10,color: Colors.grey),
                        // If  you are using latest version of flutter then lable text and hint text shown like this
                        // if you r using flutter less then 1.20.* then maybe this is not working properly


                      ),
                    ),
                  )


                ],
              ),
            ),
            actions: <Widget>[
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),

                    color: Color(hex('#4F9BDA'))
                ),
                child: TextButton(onPressed: (){
                  if(form.currentState.validate()){
                    Navigator.pop(context);

                  }
                }, child: Text('حفظ',style: TextStyle(color: Colors.white,fontSize: 14),)),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(hex('#4F9BDA')))


                ),
                child: TextButton(onPressed: (){

                  Navigator.pop(context);


                }, child: Text('الغاء',style: TextStyle(color: Colors.blue,fontSize: 14),)),
              )
            ],
          );
        }

    );
  }
  Future<void> showDescDailogue(BuildContext context)async{
    GlobalKey<FormState> form=new GlobalKey<FormState>();
    return await showDialog(context: context,
        builder: (context){
          return AlertDialog(
            title: Text('الوصف',style: TextStyle(color: Colors.blueAccent),),
            content: Form(
              key: form,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(4),


                    ),
                    child: TextFormField(

                      keyboardType: TextInputType.text,

                      validator: (value) {
                        return  value.isNotEmpty?null:'الجاء ادحال الوصف';


                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),



                        hintText: "ادخل الوصف",
                        hintStyle: TextStyle(fontSize: 10,color: Colors.grey),
                        // If  you are using latest version of flutter then lable text and hint text shown like this
                        // if you r using flutter less then 1.20.* then maybe this is not working properly


                      ),
                    ),
                  )


                ],
              ),
            ),
            actions: <Widget>[
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),

                    color: Color(hex('#4F9BDA'))
                ),
                child: TextButton(onPressed: (){
                  if(form.currentState.validate()){
                    Navigator.pop(context);

                  }
                }, child: Text('حفظ',style: TextStyle(color: Colors.white,fontSize: 14),)),
              ),
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Color(hex('#4F9BDA')))


                ),
                child: TextButton(onPressed: (){

                  Navigator.pop(context);


                }, child: Text('الغاء',style: TextStyle(color: Colors.blue,fontSize: 14),)),
              )
            ],
          );
        }

    );
  }
  Future<void> showPasswordDailogue(BuildContext context)async{

    TextEditingController pnew=new TextEditingController();
    TextEditingController pnewe=new TextEditingController();
    GlobalKey<FormState> form=new GlobalKey<FormState>();
    return await showDialog(context: context,
        builder: (context){
          return AlertDialog(
            title: Text('كلمة السر',style: TextStyle(color: Colors.blueAccent),),
            content: Padding(
              padding: const EdgeInsets.all(1.0),
              child: Form(
                key: form,
                
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('الرقم السرى القديم',style: TextStyle(color: Colors.blueAccent),),
                      SizedBox(height: 5,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(


                            borderRadius: BorderRadius.circular(4)

                        ),
                        child: TextFormField(
                          obscureText: isHiddenPassword,

                          keyboardType: TextInputType.text,

                          validator: (value) {
                            return  value.isNotEmpty?null:'الجاء ادحال كلمة كلمة السر القديمة';


                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),



                            hintText: "ادخل كلمة السر",
                            suffixIcon: IconButton(onPressed: (){_tooglePassword();},icon: Icon(Icons.visibility,color: Colors.grey,),),
                            hintStyle: TextStyle(fontSize: 10,color: Colors.grey),
                            // If  you are using latest version of flutter then lable text and hint text shown like this
                            // if you r using flutter less then 1.20.* then maybe this is not working properly


                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Text('الرقم السرى الجديدة',style: TextStyle(color: Colors.blueAccent),),
                      SizedBox(height: 5,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(4),


                        ),
                        child: TextFormField(
                          obscureText: isHiddenPassword,
                          controller: pnew,


                          keyboardType: TextInputType.text,
                          validator: (value) {
                            return  value.isEmpty?'الجاء ادحال كلمة كلمة السر القديمة':null;


                          },

//                          validator: MultiValidator([
//                            RequiredValidator(errorText: 'مطلوبة'),
//                            MinLengthValidator(8, errorText: 'كلمة السر على الاقل 6 حروف'),
//                            PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'كلمة السر على الاقك تحتوى على حرف خهص'),
//
//                          ]),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),



                            hintText: "ادخل كلمة السر",
                            suffixIcon: IconButton(onPressed: (){
                              _tooglePassword();
                            },icon: Icon(Icons.visibility,color: Colors.grey,),),
                            hintStyle: TextStyle(fontSize: 10,color: Colors.grey),
                            // If  you are using latest version of flutter then lable text and hint text shown like this
                            // if you r using flutter less then 1.20.* then maybe this is not working properly


                          ),
                        ),
                      ),

                      SizedBox(height: 5,),
                      Text('اعادة كلمة السر الجديدة',style: TextStyle(color: Colors.blueAccent),),
                      SizedBox(height: 5,),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(

                            borderRadius: BorderRadius.circular(4),


                        ),
                        child: TextFormField(
                          controller: pnewe,

                          keyboardType: TextInputType.text,
                          obscureText: isHiddenPassword,

                          validator: (value) {
                            return  value!=pnew.text?'كلمة السر غير متطابقة':null;


                          },
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),



                            hintText: "ادخل كلمة السر",
                            suffixIcon: IconButton(onPressed: (){_tooglePassword();},icon: Icon(Icons.visibility,color: Colors.grey,),),
                            hintStyle: TextStyle(fontSize: 10,color: Colors.grey),
                            // If  you are using latest version of flutter then lable text and hint text shown like this
                            // if you r using flutter less then 1.20.* then maybe this is not working properly


                          ),
                        ),
                      )




                    ],
                  ),
                ),
              ),
            ),
            actions: <Widget>[
              Container(
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),

                    color: Color(hex('#4F9BDA'))
                ),
                child: TextButton(onPressed: (){
                  if(form.currentState.validate()){
                    Navigator.pop(context);

                  }
                }, child: Text('حفظ',style: TextStyle(color: Colors.white,fontSize: 14),)),
              ),
//              Container(
//                width: 100,
//                decoration: BoxDecoration(
//                    borderRadius: BorderRadius.circular(4),
//                    border: Border.all(color: Color(hex('#4F9BDA')))
//
//
//                ),
//                child: TextButton(onPressed: (){
//
//                  Navigator.pop(context);
//
//
//                }, child: Text('الغاء',style: TextStyle(color: Colors.blue,fontSize: 14),)),
//              )
            ],
          );
        }

    );
  }

  void _tooglePassword() {
//    if(isHiddenPassword==true){
//      isHiddenPassword=false;
//    }else{
//      isHiddenPassword=true;
//    }
    setState(() {
     isHiddenPassword=!isHiddenPassword;
    });
  }
  Future<void> showTypeDailogue(BuildContext context)async{
   int val=1;
    return await showDialog(context: context,
        builder: (context){
          return StatefulBuilder(builder: (context,setState){
            return AlertDialog(
              title: Text('االجنس',style: TextStyle(color: Colors.blueAccent),),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('ذكر'),
                      Radio(value: 1, groupValue: val, onChanged:(value){
                        setState(() {
                          val=value;
                        });
                      }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('انثى'),
                      Radio(value: 2, groupValue: val, onChanged:(value){
                        setState(() {
                          val=value;
                        });
                      }),
                    ],
                  )
                ],
              ),
              actions: <Widget>[
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),

                      color: Color(hex('#4F9BDA'))
                  ),
                  child: TextButton(onPressed: (){

                  }, child: Text('حفظ',style: TextStyle(color: Colors.white,fontSize: 14),)),
                ),

              ],
            );
          });
        }

    );
  }
  Future<void> showNationalityDailogue(BuildContext context)async{
    List<Map>list=[{'name':'مصر','id':'1','image':'assets/images/e.png'},
      {'name':'الامارات','id':'2','image':'assets/images/em.png'},
      {'name':'فرنسا','id':'3','image':'assets/images/f.png'},
      {'name':'المانيا','id':'4','image':'assets/images/g.png'},
      {'name':'سودان','id':'5','image':'assets/images/s.png'},
      {'name':'سعودية','id':'6','image':'assets/images/sa.png'},
      {'name':'تركيا','id':'7','image':'assets/images/t2.png'},
      {'name':'ايطاليا','id':'10','image':'assets/images/i.png'},
      {'name':'صين','id':'8','image':'assets/images/t.png'},{'name':'امريكا','id':'9','image':'assets/images/u.png'}

    ];
    String selected;

    return await showDialog(context: context,
        builder: (context){
          return StatefulBuilder(builder: (context,setState){
            return AlertDialog(

              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('الجنسية',style: TextStyle(color: Colors.blueAccent),),
                  DropdownButtonHideUnderline(
                    child: ButtonTheme(
                      alignedDropdown: true,
                      child: DropdownButton<String>(

                        hint: Text('احتر جنسيك'),
                        value: selected,
                        isDense: true,
                           onChanged: (val){
                    setState((){
                    selected=val;
                    });
                    print(selected);
                    },
                          items: list.map((Map map) {
                    return DropdownMenuItem<String>(child: Row(
                      children: [
                        Image.asset(map['image'],width: 25,),Container(
                          padding: EdgeInsets.only(right: 10),
                          child: Text(map['name']),
                        )
                      ],
                    ),

                    value: map['id'].toString(),
                    );

                    }).toList()
                    ),

                      ),
                    ),





                ],
              ),
              actions: <Widget>[
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),

                      color: Color(hex('#4F9BDA'))
                  ),
                  child: TextButton(onPressed: (){

                    Navigator.pop(context);


                  }, child: Text('حفظ',style: TextStyle(color: Colors.white,fontSize: 14),)),
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Color(hex('#4F9BDA')))


                  ),
                  child: TextButton(onPressed: (){

                    Navigator.pop(context);


                  }, child: Text('الغاء',style: TextStyle(color: Colors.blue,fontSize: 14),)),
                )
              ],
            );
          });
        }

    );
  }
  Future<void> showInformationDailogue(BuildContext context)async{
    List<Map>list=[{'name':'مصر','id':'1','image':'assets/images/e.png'},
      {'name':'الامارات','id':'2','image':'assets/images/em.png'},
      {'name':'فرنسا','id':'3','image':'assets/images/f.png'},
      {'name':'المانيا','id':'4','image':'assets/images/g.png'},
      {'name':'سودان','id':'5','image':'assets/images/s.png'},
      {'name':'سعودية','id':'6','image':'assets/images/sa.png'},
      {'name':'تركيا','id':'7','image':'assets/images/t2.png'},
      {'name':'ايطاليا','id':'10','image':'assets/images/i.png'},
      {'name':'صين','id':'8','image':'assets/images/t.png'},{'name':'امريكا','id':'9','image':'assets/images/u.png'}

    ];
    List<String>list1=['القاهرة','الاسكندرية','المنيا','اسوان','بورسعيد'];
    List<String>list2=['االرياض','القوسيم','امكة','اجدة','بالمدينةالمنورة'];
    String selected;
    String selectedcity;
    GlobalKey<FormState> form=new GlobalKey<FormState>();

    return await showDialog(context: context,
        builder: (context){
          return StatefulBuilder(builder: (context,setState){
            return AlertDialog(

              content: Form(
                key: form,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('الدولة',style: TextStyle(color: Colors.blueAccent),),
                        DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(

                                hint: Text('اححتر دولتك '),
                                value: selected,
                                isDense: true,
                                onChanged: (val){
                                  setState((){
                                    selected=val;
                                  });
                                  print(selected);
                                },
                                items: list.map((Map map) {
                                  return DropdownMenuItem<String>(child: Row(
                                    children: [
                                      Image.asset(map['image'],width: 25,),Container(
                                        padding: EdgeInsets.only(right: 10),
                                        child: Text(map['name']),
                                      )
                                    ],
                                  ),

                                    value: map['id'].toString(),
                                  );

                                }).toList()
                            ),

                          ),
                        ),





                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,

                      children: [
                        Text('المركز',style: TextStyle(color: Colors.blueAccent),),
                        DropdownButtonHideUnderline(
                          child: ButtonTheme(
                            alignedDropdown: true,
                            child: DropdownButton<String>(

                                hint: Text('احتر مركزك'),
                                value: selectedcity,
                                isDense: true,
                                onChanged: (val){
                                  setState((){
                                    selectedcity=val;
                                  });
                                  print(selectedcity);
                                },

                                items:selected=='مصر'? list1.map(( e) {
                                  return DropdownMenuItem<String>(child:Text(e),

                                    value:e,
                                  );

                                }).toList():list2.map(( e) {
                                  return DropdownMenuItem<String>(child:Text(e),

                                    value:e,
                                  );

                                }).toList(),
                            ),

                          ),
                        ),





                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('الرمز البريدى',style: TextStyle(color: Colors.blueAccent),),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(


                              borderRadius: BorderRadius.circular(4)

                          ),
                          child: TextFormField(

                            keyboardType: TextInputType.text,

                            validator: (value) {
                              return  value.isNotEmpty?null:'الجاء ادحال الرمز البريدى';


                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),



                              hintText: "ادخل الرمز البريدى",
                              hintStyle: TextStyle(fontSize: 10,color: Colors.grey),
                              // If  you are using latest version of flutter then lable text and hint text shown like this
                              // if you r using flutter less then 1.20.* then maybe this is not working properly


                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('العنوان',style: TextStyle(color: Colors.blueAccent),),
                        SizedBox(height: 10,),
                        Container(
                          decoration: BoxDecoration(


                              borderRadius: BorderRadius.circular(4)

                          ),
                          child: TextFormField(

                            keyboardType: TextInputType.text,

                            validator: (value) {
                              return  value.isNotEmpty?null:'الجاء ادحال العنوان';


                            },
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),



                              hintText: "ادخل العنوان",
                              hintStyle: TextStyle(fontSize: 10,color: Colors.grey),
                              // If  you are using latest version of flutter then lable text and hint text shown like this
                              // if you r using flutter less then 1.20.* then maybe this is not working properly


                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              actions: <Widget>[
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),

                      color: Color(hex('#4F9BDA'))
                  ),
                  child: TextButton(onPressed: (){
                    if(form.currentState.validate()) {
                      Navigator.pop(context);
                    }


                  }, child: Text('حفظ',style: TextStyle(color: Colors.white,fontSize: 14),)),
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Color(hex('#4F9BDA')))


                  ),
                  child: TextButton(onPressed: (){


                    Navigator.pop(context);


                  }, child: Text('الغاء',style: TextStyle(color: Colors.blue,fontSize: 14),)),
                )
              ],
            );
          });
        }

    );
  }
}
