import 'package:flutter/material.dart';

class PopularList extends StatelessWidget {
  const PopularList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.23,
        width: MediaQuery.of(context).size.width * 0.9,
        child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) => flowcardview(),
            separatorBuilder: (context,index) =>SizedBox(height: 8,),
            itemCount: 4),
      ),
    );
  }
  Widget flowcardview() => Container(
        color: Colors.grey.shade100,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textBaseline: TextBaseline.alphabetic,
          children: [
            SizedBox(
              height: 80,
              child: Row(
                children: [
                  Container(
                    height: 300.0,
                    width: 80.0,
                    child: Card(
                      margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                      child: Image.network('https://www.nestle-cereals.com/my/sites/g/files/fawtmp381/files/styles/scale_992/public/d7/koko-crunch_1.png?itok=oaUQvETS',),
                    ),
                  ),
                  Expanded(child: Text('Nestle Coco Krunch Duo\n(Kids Pack)')),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Rs:550'),
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
          ],
        ),
      );
}
