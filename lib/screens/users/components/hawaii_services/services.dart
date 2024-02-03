import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../category/dash_category_model.dart';

class Services extends StatelessWidget {
  Services({
    Key? key,
    required this.textTheme,
  }) : super(key: key);

  final TextTheme textTheme;
  final catItems = DashCategoriesModel.catItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: catItems.length,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            // Handle item tap
            // final catName = catItems[index].catName;
            // print(catName);
            // Get.to(const Trip());
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            elevation: 6,
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 120,
                  width: double.infinity,
                  child: Image.asset(
                    catItems[index].catImage,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 12,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        catItems[index].catName,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        "\$${catItems[index].catPrice}",
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.green,
                        ),
                      ),
                      // Text(
                      //   "${catItems[index].catJobs}",
                      //   style: const TextStyle(fontWeight: FontWeight.bold),
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
