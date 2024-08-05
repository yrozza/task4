import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final String image;
  final String textcoffe;
  final String deccoffe;
  final String price;
  const Items({required this.image, required this.textcoffe,required this.deccoffe,required this.price,super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration:BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20)

        ) ,
        child: Container(
          width:140 ,
          height: 238,
          margin: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width:140,height:100,child: Image.asset('assets/images/$image')),
              const SizedBox(
                height: 2,
              ),
               Text(textcoffe,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
               Text(deccoffe ,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Color(0xFFA2A2A2)),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Text('\$ $price',style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  SizedBox
                    (
                      width:45 ,
                      height: 43,
                      child: FloatingActionButton(child: const Icon(Icons.add,color: Colors.white,),backgroundColor: const Color(0xFFC67C4E),onPressed: (){}))
                ],
              )
            ],
          ),
        ),
      ),
    );

  }
}
