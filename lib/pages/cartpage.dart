

import 'package:alhamdllelah/pages/cartprovider.dart';
import 'package:alhamdllelah/pages/home_page_mohamed.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
int sub_total=0;
int total=0;
class OrderDetailsPag extends StatefulWidget {
   OrderDetailsPag({super.key});

  @override
  State<OrderDetailsPag> createState() => _OrderDetailsPagState();
}

class _OrderDetailsPagState extends State<OrderDetailsPag> {
    
  @override
  
  Widget build(BuildContext context) {
     final cartProvider = Provider.of<CartProvider>(context);

    final cartItems = cartProvider.items;
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.redAccent,
        //   title: Text('Order Details', style: TextStyle(fontWeight: FontWeight.bold)),
        //   elevation: 0,
        // ),
        body: Column(

          children: [
           IconButton(
                      icon: Icon(Icons.arrow_back, color: Color.fromARGB(255,214, 19, 85),size: 30,),
                      onPressed: (){Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> HomePage()),(route)=> false);},
                    ),
            // Top Background Section
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Order details',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
      
            // Items List
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/app background2.jpg'),
                    //////////  backgroundddddd
                    fit: BoxFit.cover,
                    opacity: 0.1,
                  ),
                ),
                child: ListView(
                  padding: EdgeInsets.all(16),
                  children: [
                    orderItemModel(title: 'Chicken pizza', subtitle: 'Burger Factory LTD', price: '20 EGP', imagePath: 'assets/images/Menu pizaa2.png'),
                    orderItemModel(title: 'Burger', subtitle: 'Pizza Palace', price: '15 EGP', imagePath: 'assets/images/Menu burger.png'),
                    orderItemModel(title: 'Spicy pizza', subtitle: 'Hot Cool Spot', price: '25 EGP', imagePath: 'assets/images/Menu pizaa1.png'),
                   ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return ListTile(
                  leading: Image.asset(item.imagePath),
                  title: Text(item.title),
                 
                );
              },
            ),
                  ],
                ),
              ),
            ),
      
            // Bottom Summary Section
            Container(


              padding: EdgeInsets.all(16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/app background2.jpg'),
                  //////////  backgroundddddd
                  fit: BoxFit.cover,
                  opacity: 0.1,
                ),
                color: Colors.redAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sub-Total:${sub_total}', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 5),
                  Text('Delivery Charge: 5 EGP', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 5),
                  Text('Discount: 0 EGP', style: TextStyle(color: Colors.white)),
                  Divider(color: Colors.white),
                  Text('Total: 55 EGP', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
int cont=0;

class orderItemModel extends StatefulWidget {
  const orderItemModel({
    super.key,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.imagePath,
  });

  final String title;
  final String subtitle;
  final String price;
  final String imagePath;

  @override
  State<orderItemModel> createState() => _orderItemModelState();
}

class _orderItemModelState extends State<orderItemModel> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.imagePath,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10),
            Expanded(

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Text(widget.subtitle, style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            Column(
              children: [
                Text(widget.price, style: TextStyle(color: Color.fromARGB(255,214, 19, 85), fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove_circle, color: Color.fromARGB(255,214, 19, 85)),
                      onPressed: () {
                        setState(() {
                          cont--;
                          
                        });
                       
                      },
                    ),
                    Text('$cont'),
                    IconButton(
                      icon: Icon(Icons.add_circle, color: Color.fromARGB(255,214, 19, 85)),
                      onPressed: () {
                        setState(() {
                          cont++;
                          
                        });
                        setState(() {
                           sub_total+25;
                           total+25;
                        });
                       
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
