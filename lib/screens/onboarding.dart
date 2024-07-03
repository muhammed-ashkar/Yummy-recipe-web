import 'package:flutter/material.dart';
import 'package:yummyrecipe/constants/images_path.dart';
import 'package:yummyrecipe/screens/Home%20Page/home.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: h,
          width: w,
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: h * 0.79,
                  width: w,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(ImagesPath.onBoardingTitle),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Center(
                child: Image.asset(ImagesPath.onBoardingTitle),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: w, // Added width to the container
                  decoration: const BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40),
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16), // Added padding
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Let's cook good food",
                        style: TextStyle(
                          fontSize: w * 0.06,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 16), // Added spacing
                      const Text(
                        'Check out the app and start cooking delicious meals!',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center, // Centered text
                      ),
                      const SizedBox(height: 24), // Added spacing
                      SizedBox(
                        width: w * 0.8,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Home(),
                              ),
                              (route) => false,
                            );
                          },
                          child: const Text(
                            'Get Started',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
