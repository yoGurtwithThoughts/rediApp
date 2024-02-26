import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  final String summa;
  final Color sumColor;
  final String shop;
  final String day;

  const TransactionWidget({
    super.key,
    required this.summa,
    required this.sumColor,
    required this.shop,
    required this.day,
    });


  @override
  Widget build(BuildContext context) {
    return Container(
        height: 64,
        padding: EdgeInsets.all(9),
        margin: EdgeInsets.all(3) ,
        decoration: BoxDecoration(
          color: Color(0xffffffff),
          boxShadow: [
            BoxShadow(
              color: Color(0xffcfcfcf),
              blurRadius: 1,
              offset: Offset(0 , 4)
            )]
        ),
        child: Container(
          child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  summa,
                  style: TextStyle(
                    color: sumColor, 
                    fontWeight: FontWeight.w500,
                    fontSize: 18,),
                ),
                Text(
                  shop,
                  style: TextStyle(
                    color: Color(0xff3a3a3a), 
                    fontWeight: FontWeight.w500, 
                    fontSize: 14,),
                )
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  day,
                  style: TextStyle(
                    color: Color(0xffa7a7a7),
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                ),
              ],
            )
          ],
          
        )
        )
        
      );
  }
}