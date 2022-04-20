import 'package:flutter/material.dart';
import 'package:ecommerce_ui/widgets/Dismissible_widget.dart';
import 'package:ecommerce_ui/models/cart_data_class.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CartListView extends StatelessWidget {
  const CartListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Dismissiblewidget(
              item: scrollcard(item: items[index]),
              child: scrollcard(item: items[index]));
        },
        separatorBuilder: (context,index) => SizedBox(width: 5,),
        itemCount: 4);
  }
  Widget scrollcard({required Data item}) =>   Builder(
    builder: (context) {
      return Container(
        height: MediaQuery.of(context).size.height*0.1 ,

        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height*0.1,
              child: Row(
                children: [
                  Card(
                    margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                    child: Image.network(item.ImageUrl,width: MediaQuery.of(context).devicePixelRatio*25,
                    height: MediaQuery.of(context).devicePixelRatio*50,),
                  ),
                  Expanded(child: Text(item.Text)),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.ideographic,
                    children: [
                      Text('Rs:550'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.minus,color: Colors.red,),
                          //Icon(Icons.minimize,color: Colors.red,),
                          Text(' 5'),
                          Icon(Icons.add,color: Colors.red,),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  );
}
