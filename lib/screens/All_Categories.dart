import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ecommerce_ui/models/carditems.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back_ios,color: Colors.black,),
                  ),
                  SizedBox(width: 5.0,),
                  Expanded(child: Text('All Categories',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),)),
                  Icon(Icons.search,size: 40.0, ),
                ],
              ),
              SizedBox(height: 20.0,),
              Expanded(
                child: AlignedGridView.count(crossAxisCount: 3,
                    itemCount: carditem.length,
                    itemBuilder: (context, index) {
                  return CategoryDesign(cardItem: carditem[index]);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget CategoryDesign({required CardItem cardItem})=>Container(
    width: 80.0,
    child: Column(
      children: [
        SizedBox(height: 10.0,),
        CircleAvatar(
          radius: 30.0,
          child: Icon(
            cardItem.iconimage,size: 20,),
        ),
        SizedBox(height: 10.0,),
        Text(cardItem.title,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
      ],
    ),
  );
}
