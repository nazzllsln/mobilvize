import 'package:flutter/material.dart';
import 'package:mobilvizee/screens/kullanici/login.dart';

class BoardingScreen extends StatefulWidget {
  const BoardingScreen({super.key});

  @override
  State<BoardingScreen> createState() => _BoardingScreenState();
}

class _BoardingScreenState extends State<BoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 100, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Great deals",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 25),
                  ),
                  Text(
                    "Don't miss out on our flash sale and daily specials with great discounts",
                    style: TextStyle(
                      color: Color.fromARGB(183, 68, 66, 66),
                      fontWeight: FontWeight.w100,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Opacity(
                      opacity: 0.9,
                      child: Image.network(
                        "https://cdn.dsmcdn.com/mnresize/1200/1800/ty966/product/media/images/20230715/17/394066915/978786602/1/1_org_zoom.jpg",
                        fit: BoxFit.cover,
                        width: 200,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(80),
                    child: Opacity(
                      opacity: 0.9,
                      child: Image.network(
                        "https://cdn.dsmcdn.com/mnresize/1200/1800/ty1227/product/media/images/prod/SPM/PIM/20240326/21/f4411fb7-944e-3843-8335-b3a6504184be/1_org_zoom.jpg",
                        fit: BoxFit.cover,
                        width: 175,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Opacity(
                      opacity: 0.9,
                      child: Image.network(
                        "https://cdn.dsmcdn.com/mnresize/1200/1800/ty1006/product/media/images/prod/SPM/PIM/20230928/21/e4d65372-602b-383e-a8f1-a563b16716c1/1_org_zoom.jpg",
                        fit: BoxFit.cover,
                        width: 165,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Opacity(
                      opacity: 0.9,
                      child: Image.network(
                        "https://cdn.dsmcdn.com/mnresize/1200/1800/ty1185/product/media/images/prod/SPM/PIM/20240228/14/10f6e7cf-eff4-3a53-9385-16938ab0d190/1_org_zoom.jpg",
                        fit: BoxFit.cover,
                        width: 165,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 30),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 95, 12),
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Center(
                      child: Text(
                        "Get Started",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
