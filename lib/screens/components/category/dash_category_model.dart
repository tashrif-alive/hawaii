import 'dart:math';
import 'categories.dart';


class DashCategoriesModel {
  final String catName;
  final String catImage;
  int? catPrice;
  String? catJobs;
  // final VoidCallback? onTap;

  DashCategoriesModel(this.catName, this.catImage, {this.catPrice, this.catJobs}) {
    if (this.catPrice == null) {
      this.catPrice = new Random().nextInt(650);
    } else {
      this.catPrice = this.catPrice;
    }

    // if (this.catJobs == null) {
    //   this.catJobs = new Random().nextInt(89);
    // } else {
    //   this.catJobs = this.catJobs;
    // }
  }

  static List<DashCategoriesModel> catItems = [
    DashCategoriesModel(jCoxsBazar, jCoxsBazarImage, catPrice: 200, catJobs: "Sun,20 Aug" ),
    DashCategoriesModel(jBandarban, jBandarbanImage,catJobs: "Mon,21 Aug",catPrice: 250,),
    DashCategoriesModel(jSylhet, jSylhetImage,catJobs: "Sun,20 Aug"),
    DashCategoriesModel(jBangkok, jBangkokImage,catJobs: "Mon,28 Aug"),
    DashCategoriesModel(jDubai, jDubaiImage,catJobs: "Sun,27 Aug"),
    DashCategoriesModel(jDelhi, jDelhiImage,catJobs: "Tue,22 Aug"),
    DashCategoriesModel(jMalaysiya, jMalaysiyaImage,catJobs: "Mon,21 Aug"),
    DashCategoriesModel(jLadak, jLadakImage,catJobs: "Tue,29 Aug"),
    DashCategoriesModel(jBali, jBaliImage,catJobs: "Fri,25 Aug"),
    DashCategoriesModel(jMumbai, jMumbaiImage,catJobs: "Thu,24 Aug"),

  ];
}
