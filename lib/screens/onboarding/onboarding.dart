import 'package:flutter/material.dart';

class IntroScreenDefault extends StatefulWidget {
  @override
  _IntroScreenDefaultState createState() => _IntroScreenDefaultState();
}

class _IntroScreenDefaultState extends State<IntroScreenDefault> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Map<String, String>> slides = [
    {
      'title': "High-End Automobiles. Relish The Opulence",
      'description': "Premium and prestige car daily rental car. Experience the thrill at a lower price",
      
    },
    {
      'title': "High-End Automobiles. Relish The Opulence",
      'description': "Premium and prestige car daily rental car. Experience the thrill at a lower price",
      
    },
    {
      'title': "High-End Automobiles. Relish The Opulence3",
      'description': "Premium and prestige car daily rental car. Experience the thrill at a lower price",
      
    },
  ];

  void _onPageChanged(int page) {
    setState(() {
      _currentPage = page;
    });
  }

  void _goToNextPage() {
    if (_currentPage < slides.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void _onDonePress() {
    print("End of slides");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.black),
        child: Stack(
          children: [
             Positioned(
              top: 150,
              right: 0,
              child: Image(image : AssetImage(
                "assets/background.jpeg"),
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width *0.87, 
                height: 350
              ),
            ),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                 width: double.infinity,
                height: 400.0,
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(40)),
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  itemCount: slides.length,
                  itemBuilder: (context, index) {
                    return _buildSlide(slides[index]);
                  },
                ),
              ),
            ),
            Positioned(
              top: 520.0,
              left: 0,
              right: 0,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < slides.length; i++)
                      _buildIndicator(i == _currentPage),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSlide(Map<String, String> slide) {
    return Container(
      // color: Color(int.parse("0x${slide['backgroundColor']!.replaceAll("#", "")}")),
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 40.0),
          Text(
            
            slide['title']!,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 13, 1, 1),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20.0),
          Text(
            slide['description'] ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16.0,
              color: Color.fromARGB(255, 54, 14, 14),
            ),
          ),
          SizedBox(height: 40.0),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_currentPage < slides.length - 1)
                SizedBox(
                  width: MediaQuery.of(context).size.width *0.87,
                  height: 45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255,29,255, 171)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.red)
    )
  )
                    ),
                    onPressed: _goToNextPage,
                    child: Text("Next"),
                  ),
                ),
              if (_currentPage == slides.length - 1)
                SizedBox(
                  width: MediaQuery.of(context).size.width *0.87,
                  height: 45,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255,29,255, 171)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(color: Colors.white)
    )
              )                   
 ),
                    onPressed: _onDonePress,
                    child: Text("Let's Go"),
                  ),
                ),
              TextButton(
                onPressed: () {
                  _pageController.jumpToPage(slides.length - 1);
                },
                child: Text("Skip"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildIndicator(bool isActive) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4.0),
      width: isActive ? 12.0 : 8.0,
      height: isActive ? 12.0 : 8.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.circular(6.0),
      ),
    );
  }
}