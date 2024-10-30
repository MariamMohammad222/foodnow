
import 'package:alhamdllelah/models/itemburgermodel.dart';
import 'package:alhamdllelah/pages/cartpage.dart';
import 'package:alhamdllelah/pages/cartprovider.dart';
import 'package:alhamdllelah/pages/thankyou.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
int sub_total=25;
int total=25;
class OrderDetailsPage extends StatefulWidget {
  @override
  State<OrderDetailsPage> createState() => _OrderDetailsPageState();
}
late Itemburgermodel itemm; 
class _OrderDetailsPageState extends State<OrderDetailsPage> {
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Top Background Section
            Container(
              padding: EdgeInsets.all(16),
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/app background2.jpg'),
                  //////////  backgroundddddd
                  fit: BoxFit.cover,
                  opacity: 0.1,
                ),
               // color: Color.fromARGB(255,214, 19, 85),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Order details',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
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
                child: ListView.builder(
                  
                  itemCount: cartItems.length,
                   itemBuilder: (BuildContext context, int index) { 
                    final item = cartItems[index];
                   return orderItemModel(
                      title: item.title,
                     subtitle: item.description,
                      price: item.salary,
                     imagePath: item.image,
                     
                     );
        
            
        
                   },
                 
                  
                )
                   
                
                ),
              ),
            
                
              
            // Bottom Summary Section
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                      
                height: 220,
                width: 350,
                
                padding: EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  
                  color: Color.fromARGB(255,214, 19, 85),
                  
                  borderRadius: BorderRadius.all(Radius.circular(13)),
                  
                ),
                child:  Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sub-Total:${sub_total}', style: TextStyle(color: Colors.white)),
                    SizedBox(height: 5),
                    
                    Text('Discount: 0 EGP', style: TextStyle(color: Colors.white)),
                    Divider(color: Colors.white),
                    Text('Total: ${total}', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height:10 ,),
                    Center(
                      child: Container(
                        decoration: const BoxDecoration(
                  
                  color: Colors.white,
                  
                  
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  
                ),
                        width: 300,
                        //color: Colors.white,
                        child: TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context) => ThankYouScreen(),));
                        }, child: Text('place my order',style: TextStyle(
                          color: Color.fromARGB(255, 134, 133, 133),
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),),),
                      ),
                      
                    ),
                 
                    
                   
                    
                  ],
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class addtocartmodel extends StatefulWidget {
  const addtocartmodel({
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
  State<addtocartmodel> createState() => _addtocartmodelState();
}

class _addtocartmodelState extends State<addtocartmodel> {
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
                      onPressed: () {},
                    ),
                    Text('2'),
                    IconButton(
                      icon: Icon(Icons.add_circle, color: Color.fromARGB(255,214, 19, 85)),
                      onPressed: () {},
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