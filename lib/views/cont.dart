import 'package:flutter/material.dart';
import 'package:newwws_proj/models/contmodel.dart';
import 'package:newwws_proj/views/catogry_view.dart';

class cont extends StatelessWidget {
  const cont({super.key, required this.num});

  final containt1 num;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (BuildContext) {
          return Catogray_View(Catogry: num.name);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 100,
          width: 190,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(num.image),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              num.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
