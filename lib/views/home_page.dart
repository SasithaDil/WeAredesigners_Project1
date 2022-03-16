import 'package:assignment1/constants/reusable_text.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, bottom: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 300),
                    child: IconButton(
                      alignment: Alignment.topCenter,
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                  ),
                  //used stack and positioned to add image and positioned the text on top of the image
                  Expanded(
                    child: Stack(
                      children: [
                        Container(
                          height: 380,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/image.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25),
                              bottomLeft: Radius.circular(25),
                            ),
                          ),
                        ),
                        Positioned(
                            top: 40,
                            left: 50,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                //ReusableText is a customised text that created for used anywere and simplify the code
                                ReusableText(
                                  text: 'Nixon',
                                  size: 45,
                                  colour: Color(0xfff5f3f4),
                                  weight: FontWeight.bold,
                                ),
                                ReusableText(
                                  text: 'Men\'s C39 Leather Leather White Dial',
                                  size: 15,
                                  colour: Color(0xfff5f3f4),
                                  weight: FontWeight.bold,
                                )
                              ],
                            )),
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ReusableText(
                      text: '\$165',
                      size: 30,
                      colour: Color(0xffb37259),
                      weight: FontWeight.normal,
                    ),
                    Image(
                      width: 50,
                      height: 50,
                      image: AssetImage('images/ss.png'),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 0, 40, 0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ReusableText(
                          text: 'Brand Type',
                          size: 20,
                          colour: Colors.black,
                          weight: FontWeight.normal,
                        ),
                        ReusableText(
                          text: 'Strap',
                          size: 18,
                          colour: Colors.grey,
                          weight: FontWeight.normal,
                        )
                      ],
                    ),
                    Divider(color: Colors.grey[600]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ReusableText(
                          text: 'Band Width',
                          size: 18,
                          colour: Colors.black,
                          weight: FontWeight.normal,
                        ),
                        ReusableText(
                          text: '18 mm',
                          size: 18,
                          colour: Colors.grey,
                          weight: FontWeight.normal,
                        )
                      ],
                    ),
                    Divider(color: Colors.grey[600]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        ReusableText(
                          text: 'Bezel Material',
                          size: 18,
                          colour: Colors.black,
                          weight: FontWeight.normal,
                        ),
                        ReusableText(
                          text: 'Stainless Steel',
                          size: 18,
                          colour: Colors.grey,
                          weight: FontWeight.normal,
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    const ReusableText(
                      text:
                          'The Nexion,C39 Leather series features a stainless steel 39 mm case, with a fixed bezzel,a white dial and a scratch resistant mineral crystal. Sub-dials: one 60 second. The 18 mm leather band is fitted with a buckle clasp. This beautiful watch.\n\n 2 Year WatchCenter Warrenty and keep receipt',
                      size: 15,
                      colour: Colors.grey,
                      weight: FontWeight.normal,
                    ),
                    const SizedBox(height: 18),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60,
                        // width: 500,
                        child: Center(
                          child: ReusableText(
                              text: 'Add to bag +'.toUpperCase(),
                              size: 25,
                              colour: Colors.white,
                              weight: FontWeight.normal),
                        ),
                        decoration: BoxDecoration(
                          color: const Color(0xffb37259),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
