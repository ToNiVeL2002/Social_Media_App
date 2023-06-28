import 'package:flutter/material.dart';

class WelcomOneScreen extends StatelessWidget {
  
  const WelcomOneScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [CustomPage(color: Colors.red,),
        CustomPage(color: Colors.blue,),
        CustomPage(color: Colors.green,),
        ]
      ),
    );
  }
}

class CustomPage extends StatelessWidget {
  const CustomPage({
    Key? key, 
    required this.color,
  }) : super(key: key);

  final Color color ;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 90,
              ),
        
              Image.network("https://cdn.icon-icons.com/icons2/616/PNG/512/smartphone_icon-icons.com_56607.png"),
              const Text(
                "Welcome To The Fun Magic Media",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40
                ),
              ),
        
              const SizedBox(
                height: 10,
              ),
        
              const Text(
                "Dummy Text Is Also Used To Demostrate The Appearance Of Different Typefaces And Layouts",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}