import 'package:flutter/material.dart';
import 'package:newwws_proj/Webviewpage.dart';
import 'package:newwws_proj/models/article.dart';

class news_coulmn extends StatelessWidget {
  const news_coulmn({
    super.key,
    required this.num,
  });
  final AtricalModel num;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) {
          return Web_View(Link: num.link as String);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: num.image != null
                  ? Image.network(
                      num.image!,
                      height: 200,
                      fit: BoxFit.fill,
                      width: double.infinity,
                    )
                  : Image.asset('assets/sports.avif'),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              num.Title != null ? num.Title! : "",
              // '"Azouz" reviews the most prominent achievements of the FAO Forest and Pasture Commission in the Near East',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              num.SubTitle != null ? num.SubTitle! : "",
              //'Dr. Alaa Azouz, Head of the Agriculture Sector at the Ministry of Agriculture, and Salah Al-Musahem, in his capacity as Chairman of the Forest and Pastures Authority in the Near East, review the subsidized nutrition, then integrate with the FAO (FAO), surpassing what was accomplished in the Authority during the past two years, and then choose him as Chairman of the Authority, at its twenty-fifth session. .',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );

  }
}
