import 'package:coffee_shop/signin_screen.dart';
import 'package:flutter/material.dart';
import 'coffebox.dart';

class SliderImage extends StatelessWidget {
  const SliderImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 0, viewportFraction: 0.6);
    List<String> urls = [
      "https://th.bing.com/th/id/OIP.R0cxBzWW19fKKATuKNPnwQHaE1?pid=ImgDet&rs=1",
      "https://th.bing.com/th/id/R.71e19b4c922b8fa6a33365e5b3215703?rik=4vzMXp4lyIg9wg&riu=http%3a%2f%2fwww.indigofinance.com.au%2fwp-content%2fuploads%2f2018%2f07%2fistock-157528129.jpg&ehk=BFYMpxxeEfBHAU%2fLk%2bootPqaSOv9pZN5vNU%2bEBUxZQw%3d&risl=&pid=ImgRaw&r=0",
      "https://th.bing.com/th/id/OIP.uWdsYCqHn3SvNs7zyJxe5AHaE8?pid=ImgDet&rs=1",
      "https://www.milesteaandcoffee.com/userfiles/article/5e87182e3217a-coffee.jpg"
    ];
    return Scaffold(

      body:

          SafeArea(child:Column(
            children:<Widget> [

              Flexible(
                child:  PageView.builder(
                  controller: controller,
                  itemCount: urls.length,
                  itemBuilder: (context, index) => Center(child: CoffeBox(urls[index]),) ,
                ),),

              Container(
                child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                      return SignInScreen();
                    }));
                  },
                  child: Text("Get Started"),
                ),
              ),
            ],
          ) ,

          )

    );
  }
}
