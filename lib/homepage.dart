import 'package:flutter/material.dart';
import 'package:flutter_application_1/CartPage.dart';
import 'package:flutter_application_1/Favorite.dart';
import 'package:flutter_application_1/MyAccount.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'ProductCard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.1,
          backgroundColor: Colors.blue,
          title: Text('Home'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartPage()),
                );
              },
            ),
            IconButton(
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyAccountPage()),
                );
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('user'),
                accountEmail: Text('user@gmail.com'),
                currentAccountPicture: GestureDetector(
                  child: CircleAvatar(
                    backgroundColor: Colors.grey[200],
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: BoxDecoration(color: Colors.blue[700]),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                child: ListTile(
                  title: Text('Home page'),
                  leading: Icon(
                    Icons.home,
                    color: Colors.blue[700],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAccountPage()),
                  );
                },
                child: ListTile(
                  title: Text('My account'),
                  leading: Icon(Icons.person, color: Colors.blue[700]),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()),
                  );
                },
                child: ListTile(
                  title: Text('Cart'),
                  leading: Icon(Icons.shopping_cart, color: Colors.blue[700]),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FavoritePage()),
                  );
                },
                child: ListTile(
                  title: Text('Favourites'),
                  leading: Icon(Icons.favorite, color: Colors.blue[700]),
                ),
              ),
              Divider(),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('Settings'),
                  leading: Icon(Icons.settings),
                ),
              ),
              InkWell(
                onTap: () {},
                child: ListTile(
                  title: Text('About'),
                  leading: Icon(Icons.help),
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                child: SizedBox(
                  height: 300,
                  child: ImageSlideshow(
                    width: double.infinity,
                    initialPage: 0,
                    indicatorColor: Colors.blue,
                    indicatorBackgroundColor: Colors.grey,
                    children: [
                      Image.asset(
                        'assets/images/product_1.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/product_2.png',
                        fit: BoxFit.cover,
                      ),
                      Image.asset(
                        'assets/images/product_3.png',
                        fit: BoxFit.cover,
                      ),
                    ],
                    onPageChanged: (value) {},
                    autoPlayInterval: 3000,
                    isLoop: true,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.all(16),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search products...',
                    prefixIcon: Icon(Icons.search, color: Colors.black54),
                    hintStyle: TextStyle(
                      color: Colors.black54,
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Featured Products',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 200,
                      child:
                          ListView(scrollDirection: Axis.horizontal, children: [
                        ProductCard(
                            image: "assets/images/product_1.png",
                            name: "Product",
                            price: "\$123"),
                        ProductCard(
                            image: "assets/images/product_2.png",
                            name: "Product",
                            price: "\$123"),
                        ProductCard(
                            image: "assets/images/product_3.png",
                            name: "Product",
                            price: "\$123"),
                        ProductCard(
                            image: "assets/images/product_4.png",
                            name: "Product",
                            price: "\$123"),
                      ]),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Daily Discover',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: _height * 5,
                      child: GridView.count(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 12,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          children: [
                            ProductCard(
                                image: "assets/images/product_1.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_2.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_3.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_4.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_1.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_2.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_3.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_4.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_1.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_2.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_3.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_4.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_1.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_2.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_3.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_4.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_1.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_2.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_3.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_4.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_1.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_2.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_3.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_4.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_1.png",
                                name: "Product",
                                price: "\$123"),
                            ProductCard(
                                image: "assets/images/product_2.png",
                                name: "Product",
                                price: "\$123"),
                          ]),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade900,
                Colors.blue.shade800,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: BottomNavigationBar(
            currentIndex: 0,
            backgroundColor: Colors.transparent,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey[500],
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Categories',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
