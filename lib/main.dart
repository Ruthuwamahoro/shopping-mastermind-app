import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyHomePage(),
));

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,  // 30% of the design color
      appBar: AppBar(
        title: Text(
          'Shopping Mastermind',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue[900],  // 60% of the design color
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            Text(
              'Shopping List',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),  // 10% of the design color
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(
                  label: Text('Groceries', style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.green[300],
                ),
                Chip(
                  label: Text('Electronics', style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.blue[300],
                ),
                Chip(
                  label: Text('Clothes', style: TextStyle(color: Colors.white)),
                  backgroundColor: Colors.purple[300],
                ),
              ],
            ),
            SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                shoppingItem('Apples', Icons.local_grocery_store, Colors.blue),
                shoppingItem('Laptop', Icons.computer, Colors.blue),
                shoppingItem('T-Shirt', Icons.checkroom, Colors.blue),
                shoppingItem('Bananas', Icons.local_grocery_store, Colors.blue),
                shoppingItem('Headphones', Icons.headphones, Colors.blue),
                shoppingItem('Shoes', Icons.shopping_bag, Colors.blue),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hello Shopping Mastermind');
        },
        child: Icon(Icons.add, color: Colors.white),
        backgroundColor: Colors.black,  // 10% of the design color
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
        ],
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.black,  // 10% of the design color
        backgroundColor: Colors.blue[900],  // 60% of the design color
      ),
    );
  }

  Widget shoppingItem(String title, IconData icon, Color color) {
    return Card(
      color: color.withOpacity(0.1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 50, color: Colors.blue),  // Blue icon
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),  // 10% of the design color
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Remove'),
                style: TextButton.styleFrom(foregroundColor: Colors.blue),  // Blue text button
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Buy'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,  // Blue background
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
