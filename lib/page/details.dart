// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

import '../model/item.dart';

class Details extends StatefulWidget {

  Item prodect;
  
  Details({required this.prodect});


  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool isShowmore = true;

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Stack(
                children: [
                  Container(
                    child: Text(
                      "8",
                      style: TextStyle(
                          color: Color.fromARGB(255, 23, 23, 23), fontSize: 14),
                    ),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(180, 245, 242, 242),
                        shape: BoxShape.circle),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.add_shopping_cart),
                    color: Colors.white,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Text(
                  "\$ 13",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ],
          ),
        ],
        backgroundColor: Colors.grey,
        title: Text(
          "Details",
          style: TextStyle(color: Colors.white, fontSize: 21),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(widget.prodect.imagePath,),
            SizedBox(
              height: 12,
            ),
            Text(
              widget.prodect.price,
              style: TextStyle(fontSize: 22),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  padding: EdgeInsets.all(3),
                  // color: Color.fromARGB(187, 244, 67, 54),
                  child: Text(
                    "new",
                    style: TextStyle(fontSize: 16),
                  ),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(191, 244, 67, 54)),
                ),
                SizedBox(
                  width: 10,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                  ],
                ),
                SizedBox(
                  width: 90,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.edit_location,
                      size: 23,
                      color: Color.fromARGB(168, 3, 65, 27),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      widget.prodect.Loaction,
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              child: Text(
                "Details : ",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
            ),
            Text(
                "A flower, also known as a bloom or blossom, is the reproductive structure found in flowering plants (plants of the division Angiospermae). Flowers consist of a combination of vegetative organs – sepals that enclose and protect the developing flower, petals that attract pollinators, and reproductive organs that produce gametophytes, which in flowering plants produce gametes. The male gametophytes, which produce sperm, are enclosed within pollen grains produced in the anthers. The female gametophytes are contained within the ovules produced in the carpels.",
                style: TextStyle(fontSize: 18),
                maxLines: isShowmore ? 3 : null,
                overflow: TextOverflow.fade),
            TextButton(
                onPressed: () {
                  setState(() {
                    isShowmore = !isShowmore;
                  });
                },
                child: Text(
                  isShowmore ? "Show more" : "Show less",
                  style: TextStyle(fontSize: 17),
                )),
          ],
        ),
      ),
    );
  }
}
