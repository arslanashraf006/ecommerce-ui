import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_ui/screens/checkout.dart';
import 'package:ecommerce_ui/widgets/cart_list.dart';


class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {

  @override
  Widget build(BuildContext context) {
    final padding=MediaQuery.of(context).padding.add(EdgeInsets.only(left: 10.0,right: 10.0));
    return Scaffold(
      body: SafeArea(child: Column(
        children: [
          Padding(
            padding: padding,
            child: Row(
              children: [
                InkWell(
                    child: Icon(Icons.arrow_back_ios),onTap: (){
                      Navigator.pop(context);
                },),
                SizedBox(width: 5.0,),
                Expanded(child: Text('Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25.0),)),
                Text('4 items',style: TextStyle(color: Colors.red,fontSize: 20.0),),
              ],),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.5*0.8,
            child: CartListView(),
          ),
          Padding(
            padding: padding,
            child: Row(
              children: [
                Icon(Icons.money),
                SizedBox(width: 5.0,),
                Text('Apply discount code',style: TextStyle(color: Colors.red),),
              ],
            ),
          ),
        ],
      ),
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0)),
        child: BottomAppBar(
          elevation: 50,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: MediaQuery.of(context).size.height*0.25,
            child: Padding(
              padding: padding,
              child: Column(
                children: [
                Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Subtotal', style: TextStyle(fontSize: 15.0)),
                       Text('Rs:1290', style: TextStyle(fontSize: 15.0)),
                     ],
                  ),
              Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text('Shopping Fee',style: TextStyle(fontSize: 15.0)),
                       Text('Rs:50', style: TextStyle(fontSize: 15.0)),
                     ],
                   ),
              Divider(),
              Expanded(
                child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Total',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
                         Text('Rs:1340',style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold)),
                       ],
                    ),
              ),
              ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Colors.red,
                       minimumSize: Size(500, 50),
                       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                     ),
                     onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context){
                         return Checkout();
                       }));
                     },
                     child: Text('Proceed to checkout',),
                   ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
