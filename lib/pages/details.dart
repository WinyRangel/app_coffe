import 'package:app_cafe/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int a=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 50.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios_new_outlined, color: Colors.black,)),
          Image.asset(
            "images/ensalada.png", 
            width: MediaQuery.of(context).size.width, 
            height: MediaQuery.of(context).size.height/2.5, 
            fit: BoxFit.fill,
            ),
            SizedBox(height: 15.0,),

            Row(
              
              children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mediterranea", style: AppWidget.semiBoldTextFeildStyle(),),
                  Text("Chickpea Salad", style: AppWidget.boldTextFeildStyle(),),
                ],
              ),
              Spacer(),
              GestureDetector(
                onTap: (){
                  if (a > 1) {
                      --a;
                  }
                  --a;
                  setState(() {
                    
                  });
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.remove, color: Colors.white,),
                ),
              ),
              SizedBox(width: 20.0,),
              Text(a.toString(), style: AppWidget.semiBoldTextFeildStyle(),),
              SizedBox(width: 20.0,),
              GestureDetector(
                onTap: (){
                  ++a;
                  setState(() {
                    
                  });
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(8)),
                  child: Icon(Icons.add, color: Colors.white,),
                ),
              ),
            ],),
            SizedBox(height: 20.0,),
            Text(
              "Lorem impus", maxLines: 3,
              style: AppWidget.LightTextFeildldStyle(),
            ),
            SizedBox(height: 30.0,),
            Row(children: [
              Text("Delivery Time", style: AppWidget.semiBoldTextFeildStyle(),),
              SizedBox(width: 25.0,),
              Icon(Icons.alarm, color: Colors.black54,),
              SizedBox(width: 5.0,),
              Text("30 min", style: AppWidget.semiBoldTextFeildStyle(),)
            ],),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text("Precio Total", style: AppWidget.semiBoldTextFeildStyle(),),
                  Text("\$28", style: AppWidget.HeadLineextFeildStyle(),),
                ],),
                Container(
                  width: MediaQuery.of(context).size.width/2,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    Text("Añadir a carrito", style: TextStyle(color: Colors.white, fontSize: 16.0, fontFamily: 'Poppins'),),
                    SizedBox(width: 30.0,),
                    Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.grey, borderRadius: BorderRadius.circular(8)),
                      child: Icon(Icons.shopping_cart_outlined, color: Colors.white,),)
                  ],),
                ),
                SizedBox(width: 10.0,),
              ],),
            )
          ],
        ),
      ),
    );
  }
}