import 'package:flutter/material.dart';
import 'package:ecommerce_ui/models/card_screen.dart';

class BundleofferList extends StatelessWidget {
  const BundleofferList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      child: ListView.separated(
          padding: EdgeInsets.all(10.0),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildcardscreen(cardscreen: cardscreen[index]),
          separatorBuilder: (context, index)=> SizedBox(width: 10.0,),
          itemCount: 3),
    );
  }
  Widget buildcardscreen({required CardScreen cardscreen}) => Container(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8.0),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.shade100,
          blurRadius: 2.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        )
      ],
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 140.0,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4/3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(cardscreen.Url,
                  color: Colors.grey,
                  colorBlendMode: BlendMode.multiply,),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text.rich(TextSpan(
                children: [
                  TextSpan(text: cardscreen.Label,style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold),),
                  TextSpan(text: cardscreen.Smalllabel,style: TextStyle(fontSize: 12.0)),
                ],
              )),
            ),
            SizedBox(height: 5.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rs:256',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                Material(
                  child: InkWell(
                      onTap: (){},
                      child: Icon(Icons.add,color: Colors.red,)),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
