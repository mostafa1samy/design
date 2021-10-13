import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:design/models/product.dart';



class ProductCard extends StatelessWidget {
  const ProductCard({
    Key key,
    this.itemIndex,
    this.product,
    this.press,
  }) : super(key: key);

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
//      margin: EdgeInsets.symmetric(
//        horizontal: kDefaultPadding,
//        vertical: kDefaultPadding / 2,
//      ),
      height: 240.0,
      child: InkWell(
        onTap: press,
        child: Container(
          height: 166.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 15), blurRadius: 25, color: Colors.black12),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(

                      backgroundImage: AssetImage(product.image,),),
                  ),
                  title: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text(product.title,style: Theme.of(context).textTheme.bodyText1,),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(product.subTitle,style: Theme.of(context).textTheme.bodyText1,),
                        Text(product.add.toString(),style: Theme.of(context).textTheme.bodyText1,),
                        Icon(Icons.star,color: Colors.yellow,size: 18,)
                      ],
                    ),
                  ),
                  trailing: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(

                          color: Colors.white,
                          border:Border()

                        ),
                        width: 50,
                        height: 50,

                        child: Container(


                            child: IconButton(onPressed: (){},icon: Icon(Icons.edit,color: Colors.lightBlueAccent,size: 12,),)),
                      ),
                      Positioned(
                          left:38,
                          child: CircleAvatar(
                            backgroundColor: Colors.red,
                            radius: 5,
                        child: Text(product.id.toString(),style: TextStyle(color: Colors.white,fontSize: 12)),
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(product.description,style: Theme.of(context).textTheme.bodyText1),
              ),
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Icon(Icons.date_range,size: 12,color: Colors.grey,),
                    ),
                    Text(product.date,style: Theme.of(context).textTheme.caption),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          border:Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(4)
                        ),
                        child: FlatButton(

                          onPressed: (){},
                          child: Text("بدا محادثة",style: TextStyle(color: Colors.white,fontSize: 14)),
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        width: 110,

                        decoration: BoxDecoration(
                          color: Colors.white,
                            border:Border.all(color: Colors.white10),
                            borderRadius: BorderRadius.circular(4)
                        ),
                        child: FlatButton(

                          onPressed: (){},
                          child: Text("توظيف الان",style: TextStyle(color: Colors.blue,fontSize: 14)),
                        ),
                      ),
                      //SizedBox(width: 5,),
                      Spacer(),
                      Container(

                        child: FlatButton(

                          onPressed: (){},
                          child: Text("${product.price.toString()} ريال سعودى",style: TextStyle(color: Colors.white,fontSize: 12)),
                        ),
                      ),


                    ],
                  ),
                ),
              )
            ],
          ),
        ),

      ),
    );
  }
}
//Stack(
//alignment: Alignment.bottomCenter,
//children: [
//Container(
//height: 166.0,
//decoration: BoxDecoration(
//borderRadius: BorderRadius.circular(2),
//color: Colors.white,
//boxShadow: [
//BoxShadow(
//offset: Offset(0, 15),
//blurRadius: 25,
//color: Colors.black12),
//],
//),
//),
//Positioned(
//top: 0.0,
//left: 0.0,
//child: Container(
//padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
//height: 160.0,
//width: 200.0,
//child: Image.asset(
//product.image,
//fit: BoxFit.cover,
//),
//),
//),
//Positioned(
//bottom: 0.0,
//right: 0.0,
//child: SizedBox(
//height: 136.0,
//// Because oure image is 200 width, then: width - 200
//width: size.width - 200,
//child: Column(
//crossAxisAlignment: CrossAxisAlignment.start,
//children: [
//Spacer(),
//Padding(
//padding: const EdgeInsets.symmetric(
//horizontal: kDefaultPadding),
//child: Text(
//product.title,
//style: Theme.of(context).textTheme.bodyText1,
//),
//),
//Spacer(),
//Padding(
//padding: const EdgeInsets.symmetric(
//horizontal: kDefaultPadding),
//child: Text(
//product.subTitle,
//style: Theme.of(context).textTheme.caption,
//),
//),
//Spacer(),
//Padding(
//padding: const EdgeInsets.all(kDefaultPadding),
//child: Container(
//padding: EdgeInsets.symmetric(
//horizontal: kDefaultPadding * 1.5, // 30 px padding
//vertical: kDefaultPadding / 5, // 5 px padding
//),
//decoration: BoxDecoration(
//color: kSecondaryColor,
//borderRadius: BorderRadius.circular(22),
//),
//child: Text('السعر: \$${product.price}'),
//),
//),
//],
//),
//),
//),
//],
//),
