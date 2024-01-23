import 'package:flutter/material.dart';
import '../../../utils/app_text.dart';
import 'banner_dot_indicator.dart';
import 'banner_materials.dart';
import 'banners_theme.dart';

class Poster extends StatefulWidget {
  const Poster({Key? key}) : super(key: key);

  @override
  State<Poster> createState() => _PosterState();
}

class _PosterState extends State<Poster> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: 210,
              width: double.infinity,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                scrollDirection: Axis.horizontal,
                itemCount: gameList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    height: 200,
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      image: DecorationImage(
                        image: AssetImage(gameList[index]),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3),
                          BlendMode.darken,
                        ),
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                    ),
                    child: Row(
                      children: [
                        Container(
                          width: getProportionateScreenWidth(270),
                          margin: EdgeInsets.only(
                            left: getProportionateScreenWidth(5),
                            top: getProportionateScreenHeight(15),
                            bottom: getProportionateScreenHeight(15),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: getProportionateScreenWidth(20),
                            vertical: getProportionateScreenWidth(15),
                          ),
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: getProportionateScreenHeight(7)),
                              Text(
                                "Hawaii.".toLowerCase(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(
                                  height: 1.5,
                                  fontSize: getProportionateScreenWidth(24),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(height: getProportionateScreenHeight(6)),
                              Text(
                                "fly high".toUpperCase(),
                                style: TextStyle(
                                  fontSize: getProportionateScreenHeight(10),
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 14.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  gameList.length,
                      (index) => HorizontalDotIndicator(
                    currentPage: currentPage,
                    index: index,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
