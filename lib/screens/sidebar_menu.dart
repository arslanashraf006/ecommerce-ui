import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ecommerce_ui/screens/All_Categories.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Material(
        child: Container(
          color: Colors.red,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 50.0,left:10.0,bottom: 15.0 ),
                child: InkWell(child: Icon(Icons.close,color: Colors.white,),
                onTap: (){
                  setState(() {
                    Navigator.pop(context);
                  });
                },),
              ),
              ListTile(
                leading:  CircleAvatar(
                           radius: 25.0,
                           backgroundColor: Colors.white,
                        ),
                title:  Text('Login user name',style: TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                letterSpacing: 2),),
                subtitle: Text('03335678543',style: TextStyle(color: Colors.white),),
              ),

              BuildMenuItem(icon: Icons.list, text: 'All categories',
                  onClicked: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AllCategories();
                }));
                  }),
              BuildMenuItem(icon: Icons.wallet_giftcard, text: 'Top Deals',
                  onClicked: (){}),
              BuildMenuItem(icon: Icons.library_books_outlined, text: 'Make product request',
                  onClicked: (){}),
              BuildMenuItem(icon: Icons.location_on_outlined, text: 'Track your order',
                  onClicked: (){}),
              BuildMenuItem(icon: Icons.closed_caption_off, text: 'Coupans',
                  onClicked: (){}),
              BuildMenuItem(icon: Icons.mail_outline, text: 'Live chat',
                  onClicked: (){}),
              Expanded(child: BuildMenuItem(icon: Icons.logout, text: 'Logout')),
            ],
          ),
        ),
      ),
    );
  }
  Widget BuildMenuItem({
  required IconData icon,
    required String text,
    VoidCallback? onClicked,
})
  {
    final color = Colors.white;
    final hovercolor = Colors.black;
    return Container(
      width: 250.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.red,
          elevation: 0.0,
        ),
        child: ListTile(
          leading: Icon(icon,color: color,),
          title: Text(text,style: TextStyle(color: color),),
          hoverColor: hovercolor,
          onTap: onClicked,
        ),
        onPressed: (){},
      ),
    );
  }
}

