import 'package:RaziFertani/Core/Utils/appColors.dart';
import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HomeDisplay extends StatefulWidget {
  const HomeDisplay({Key key}) : super(key: key);

  @override
  _HomeDisplayState createState() => _HomeDisplayState();
}

class _HomeDisplayState extends State<HomeDisplay> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Padding(
        padding: EdgeInsets.fromLTRB(
          screenWidth * 0.03,
          screenHeight * 0.05,
          screenWidth * 0.03,
          0,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.white,
                    width: screenWidth * 0.75,
                    child: TextFormField(
                      cursorColor: AppColors.primaryColor,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search_sharp,
                          color: AppColors.greyColor,
                        ),
                        hintText: 'Looking for a car ?',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            width: 0,
                            style: BorderStyle.none,
                          ),
                        ),
                        contentPadding:
                            EdgeInsets.fromLTRB(10.0, 12.0, 10.0, 12.0),
                      ),
                      keyboardType: TextInputType.text,
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    child: Image.asset(
                      "Assets/Images/car.png",
                      width: screenWidth * 0.12,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              Text(
                'My History',
                style: TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Text(
                'Fill this form by informations of your vehicule and send it, so that we can do review and contact you as soon as possible',
                style: TextStyle(
                  color: AppColors.greyColor,
                  fontSize: 12,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Sell',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Apply',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenHeight * 0.02,
                        ),
                        Container(
                          height: screenHeight * 0.003,
                          width: screenWidth * 0.46,
                          color: AppColors.primaryColor,
                        ),
                        SizedBox(
                          height: screenHeight * 0.004,
                        ),
                        Container(
                          height: screenHeight * 0.6,
                          width: screenWidth * 0.945,
                          child: ListView.separated(
                            itemCount: 3,
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Container(
                                height: screenHeight * 0.02,
                              );
                            },
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                height: screenHeight * 0.14,
                                decoration: BoxDecoration(
                                  color: AppColors.primaryColor,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width: screenWidth * 0.001,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: screenHeight * 0.01,
                                        ),
                                        Text(
                                          'Ford',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          'F150',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          '2017',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: screenWidth * 0.5,
                                    ),
                                    ImageStack(
                                      imageList: [
                                        "https://www.hyundai.com/content/hyundai/ww/data/news/data/2021/0000016609/image/newsroom-0112-photo-1-2021elantranline-1120x745.jpg",
                                        "https://carsguide-res.cloudinary.com/image/upload/f_auto,fl_lossy,q_auto,t_cg_hero_large/v1/editorial/story/hero_image/2019-Porsche-911-coupe-red-press-image-1001x565p-%281%29.jpg",
                                        "https://cars.usnews.com/pics/size/640x420/static/images/article/202002/128389/1_title_2020_kia_optima.jpg",
                                      ],
                                      totalCount: 3,
                                      imageRadius: 80,
                                      imageCount: 3,
                                      imageBorderWidth: 3,
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: screenHeight * 0.6,
                      width: screenWidth * 0.945,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: screenHeight * 0.02,
                          ),
                          Container(
                            height: screenHeight * 0.003,
                            width: screenWidth * 0.46,
                            color: AppColors.primaryColor,
                          ),
                          GridView.count(
                            scrollDirection: Axis.vertical,
                            crossAxisCount: 2,
                            physics: ScrollPhysics(),
                            shrinkWrap: true,
                            children: [
                              Card(
                                color: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '12-02-2020',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      'Ford',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'F150',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.03,
                                    ),
                                    Text(
                                      'uPick\'s value',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SmoothStarRating(
                                      starCount: 5,
                                      rating: 3,
                                      size: 30.0,
                                      isReadOnly: true,
                                      color: Colors.yellow,
                                      borderColor: Colors.white70,
                                      spacing: 0.0,
                                    ),
                                  ],
                                ),
                              ),
                              Card(
                                color: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '12-02-2020',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      'Ford',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'F150',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.03,
                                    ),
                                    Text(
                                      'uPick\'s value',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SmoothStarRating(
                                      starCount: 5,
                                      rating: 3,
                                      size: 30.0,
                                      isReadOnly: true,
                                      color: Colors.yellow,
                                      borderColor: Colors.white70,
                                      spacing: 0.0,
                                    ),
                                  ],
                                ),
                              ),
                              Card(
                                color: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      '12-02-2020',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    Text(
                                      'Ford',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'F150',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.03,
                                    ),
                                    Text(
                                      'uPick\'s value',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                    SmoothStarRating(
                                      starCount: 5,
                                      rating: 3,
                                      size: 30.0,
                                      isReadOnly: true,
                                      color: Colors.yellow,
                                      borderColor: Colors.white70,
                                      spacing: 0.0,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        iconSize: 45,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: AppColors.primaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.car_rental,
              color: AppColors.primaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              color: AppColors.primaryColor,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: AppColors.primaryColor,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
