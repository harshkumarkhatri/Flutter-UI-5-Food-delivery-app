import 'package:flutter/material.dart';

class InteractionScreen extends StatefulWidget {
  @override
  _InteractionScreenState createState() => _InteractionScreenState();
}

class _InteractionScreenState extends State<InteractionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white24,
          actions: [
            IconButton(
                icon: Icon(Icons.shopping_basket),
                color: Colors.black,
                onPressed: () {})
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Text(
                "Food Delivery",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 40),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 50,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.all(5),
                  children: [
                    makeCategory(isActive: true, title: 'Pizza'),
                    makeCategory(isActive: false, title: 'Drinks'),
                    makeCategory(isActive: false, title: 'Muffin'),
                    makeCategory(isActive: false, title: 'Burger')
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 0, 10),
              child: Text(
                "Free delivery",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 20),
              ),
            ),
            Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      makeItems(price: 13,dish:"Vegetarian Pizza",image:"https://previews.123rf.com/images/ferli/ferli1606/ferli160600175/58466719-top-view-portrait-of-italian-homemade-pizza-with-ingredients.jpg"),
                      makeItems(price: 19,dish:"Cheese Pizza",image:"https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&w=1000&q=80"),
                      makeItems(price: 29,dish:"Chicken Pizza",image:"https://foodimagegroup.com/wp-content/uploads/fig-19366.jpg")
                    ],
                  )),
            ),
          ],
        ));
  }

  Widget makeCategory({isActive, title, image}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(
            title,
            style: TextStyle(
                color: isActive ? Colors.white : Colors.grey[500],
                fontSize: 18,
                fontWeight: isActive ? FontWeight.bold : FontWeight.w100),
          ),
        ),
      ),
    );
  }

  Widget makeItems({price, dish,image}) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: GestureDetector(
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                image
                  ),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(begin: Alignment.bottomCenter, stops: [
                  .2,
                  .9
                ], colors: [
                  Colors.black.withOpacity(.5),
                  Colors.black.withOpacity(.3),
                ])),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "\$ ${price}.00",
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        dish,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      )
                    ],
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
