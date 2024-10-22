import 'package:app_cafe/pages/details.dart';
import 'package:app_cafe/widget/widget_support.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool bebida=false, postre=false, ensalada=false, comida=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(
          top: 50.0,
          left: 20.0,
          right: 10.0,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Hola, Usuario",
                  style: AppWidget.boldTextFeildStyle(),
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Text(
              "Deliciosa Comida",
              style: AppWidget.HeadLineextFeildStyle(),
            ),
            Text(
              "Descubre y disfruta de un gran almuerzo",
              style: AppWidget.LightTextFeildldStyle()),
              SizedBox(
                height: 20.0,
              ),
              showIteam(),
              SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Details()));
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                            padding: EdgeInsets.all(14),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                  Image.asset("images/desayuno.png", 
                                  height: 150, 
                                  width: 150, 
                                  fit: BoxFit.cover, ),
                                  Text("Desayuno de la casa", style: AppWidget.semiBoldTextFeildStyle()),
                                  SizedBox(height: 5.0,),
                                  Text("Huevos, tosino y jugo de naranja", style: AppWidget.LightTextFeildldStyle()),
                                  SizedBox(height: 5.0,),
                                  Text("\$25", style: AppWidget.semiBoldTextFeildStyle())
                              ],
                            )
                          ),
                        ),
                      ),
                    ), 
                    SizedBox(width: 15.0,), 
                    Container(
                    margin: EdgeInsets.all(5),
                      child: Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          padding: EdgeInsets.all(14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                                Image.asset("images/desayuno.png", 
                                height: 150, 
                                width: 150, 
                                fit: BoxFit.cover, ),
                                Text("Desayuno de la casa", style: AppWidget.semiBoldTextFeildStyle()),
                                SizedBox(height: 5.0,),
                                Text("Huevos, tosino y jugo de naranja", style: AppWidget.LightTextFeildldStyle()),
                                SizedBox(height: 5.0,),
                                Text("\$25", style: AppWidget.semiBoldTextFeildStyle())
                            ],
                          )
                        ),
                      ),
                    ), 
                ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20.0),
                child: Material(
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: EdgeInsets.all(5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 30.0,),
                    Image.asset("images/desayuno.png", 
                    height: 150, width: 150, 
                    fit: BoxFit.cover
                      ),
                      SizedBox(width: 19.0,),
                      Column(
                     children: [
                              Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text("Pechuga de Pollo Asada", style: AppWidget.semiBoldTextFeildStyle(),),),
                  SizedBox(height: 5.0,),
                              Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text("Pechuga de Pollo Asada", style: AppWidget.LightTextFeildldStyle(),
                  ),
                              ),
                              SizedBox(height: 5.0,),
                             Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Text("\$28", style: AppWidget.boldTextFeildStyle(),
                  ),
                              ),
                            ],
                          )
                  
                      ],
                    ),
                  
                  ),
                ),
              )
          ],
        ),
        
      ),
    );
  }

  Widget showIteam(){
    return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                GestureDetector(
                  onTap: (){
                    comida=true;
                    ensalada=false;
                    postre=false;
                    bebida=false;
                    setState((){

                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: comida?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10) ),
                    child: Image.asset("images/desayuno-ingles.png", 
                    height: 50, width: 
                    50, fit: BoxFit.cover,),

                    )
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    comida=false;
                    ensalada=true;
                    postre=false;
                    bebida=false;
                    setState((){

                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: ensalada?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10) ),
                    child: Image.asset("images/ensalada.png", height: 50, width: 50, fit: BoxFit.cover,),
                    )
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    comida=false;
                    ensalada=false;
                    postre=true;
                    bebida=false;
                    setState((){

                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: postre?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10) ),
                    child: Image.asset("images/copa-de-helado.png", height: 50, width: 50, fit: BoxFit.cover, ),
                    )
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    comida=false;
                    ensalada=false;
                    postre=false;
                    bebida=true;
                    setState((){

                    });
                  },
                  child: Material(
                    elevation: 5.0,
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      decoration: BoxDecoration(color: bebida?Colors.black: Colors.white, borderRadius: BorderRadius.circular(10) ),
                    child: Image.asset("images/jugo.png", height: 50, width: 50, fit: BoxFit.cover),
                    )
                  ),
                ),
              ],);

  }
}
