import 'package:flutter/material.dart';
import 'package:ecommerce_ui/models/carditems.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({Key? key}) : super(key: key);

  @override
  State<CategoriesList> createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
final color= Colors.red;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        padding: EdgeInsets.all(10.0),
        scrollDirection: Axis.horizontal,
        itemCount: carditem.length,
        itemBuilder: (context,index)=> buildcard(carditem: carditem[index],
      ),
    ),
    );
  }

  Widget buildcard({required CardItem carditem}) {
   return Material(
     child: InkWell(
       onTap: (){},
       borderRadius: BorderRadius.circular(10.0),
        highlightColor: Colors.red.shade900,
        child: Container(
          width: 80.0,
          child: Column(
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundColor: Colors.white70,
                child: Icon(
                  carditem.iconimage, size: 50,),),
              Text(carditem.title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800),),
            ],
          ),
        ),
      ),
   );
  }
}
