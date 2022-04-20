import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/screens/cart.dart';
import 'package:ecommerce_ui/screens/sidebar_menu.dart';
import 'package:ecommerce_ui/widgets/bundle_offer_list.dart';
import 'package:ecommerce_ui/widgets/categories.dart';
import 'package:ecommerce_ui/widgets/popular_list.dart';
import 'package:ecommerce_ui/widgets/dropdownwidget_type.dart';

class Myhome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(icon: Icon(Icons.widgets_outlined),onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context){
                     return MenuBar();
                   }));
                  },),
                  DropDownWidgetType(),
                  Expanded(
                    child: Icon(Icons.search,),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text.rich(
                    TextSpan(
                      text: 'Get your',
                      style: TextStyle(fontSize: 20.0,), // default text style
                      children: <TextSpan>[
                        TextSpan(text: ' groceries\n', style: TextStyle(fontWeight: FontWeight.w900,)),
                        TextSpan(text: 'delivered quickly',),
                      ],
                    ),
                  ),
                ),
              ),
              CategoriesList(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Bundle Offer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
                    Align(
                        alignment: Alignment.topRight,
                        child: Text('View all',style: TextStyle(fontSize: 15,color: Colors.red),)),
                  ],
                ),
              ),
              BundleofferList(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text('Popular',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),)),
                    Align(
                        alignment: Alignment.topRight,
                        child: Text('View all',style: TextStyle(fontSize: 15,color: Colors.red),)),
                  ],
                ),
              ),
              PopularList(),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red.shade800,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Cart();
          }));
        },
        child: Icon(Icons.shopping_bag),),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        elevation: 50.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: MediaQuery.of(context).size.height*0.1*0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.home,size: 40.0,),
                Icon(Icons.search,size: 40.0,),
                SizedBox.shrink(),
                Icon(Icons.history,size: 40.0,),
                Icon(Icons.person,size: 40.0,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
