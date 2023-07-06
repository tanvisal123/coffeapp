import 'package:flutter/material.dart';
class Searchbar extends StatelessWidget {
  const Searchbar({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:15,right: 15,top:20,bottom:20),
      child: Container(
            
           child: TextField(
            decoration: InputDecoration(
              hintText: 'Find Your Coffee',
              prefixIcon: Icon(Icons.search,
              color: Colors.grey,
            
              
              ),
              border: InputBorder.none,
              focusedBorder: OutlineInputBorder(
               borderSide: BorderSide(color: Colors.amber.shade700), 
               borderRadius: BorderRadius.circular(25)
               
              ),
             enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(25) 
              ), 
              
              ),
           ),
      ),
    );
  }
}