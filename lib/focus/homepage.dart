import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  pageChildren(double width) {
    return 
      //  Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 10),
      //   child: Image.asset(
      //     "assets/images/kindpng_1127821.png",
      //   width: width,
      //   ),
      // ),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Image.asset(
              "assets/images/icons.png",
              // width: width,
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            focusTextWidget('Welcome to Focus!'),
            nameltListSizedBox(),
            registerTextWidget('Register your account'),
            const SizedBox(height: 40),
            titleTextWidget('Name'),
            nameltListSizedBox(),
            textfieldWidget("User Name"),
            nameltListSizedBox(),
            titleTextWidget('Email'),
            nameltListSizedBox(),
            textfieldWidget("Email"),
            nameltListSizedBox(),
            titleTextWidget('password'),
            nameltListSizedBox(),
            textfieldWidget("Password"),
            const SizedBox(height: 40),
            GestureDetector(
              // onTap: () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) => const homepage()),
              //   );
              // },
              child: Container(
                alignment: Alignment.center,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 245, 244, 247),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Log In',
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                registerTextWidget('Create account with'),
                IconButton(
                  icon: const Icon(Icons.facebook_outlined),
                  color: Colors.white,
                  onPressed: () {
//on Presses functionaluty goes here
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.home_max_rounded),
                  color: Colors.white,
                  onPressed: () {
//on Presses functionaluty goes here
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.person_sharp),
                  color: Colors.white,
                  onPressed: () {
//on Presses functionaluty goes here
                  },
                ),
              ],
            ),
          ]),
        ],
      );
      //   ],
      // ),
      // Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 10.0),
      //   child: Image.asset(
      //     "assets/images/kindpng_1127821.png",
      //   width: width,
      //   ),
      // )
    
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 900) {
          return  pageChildren(constraints.biggest.width / 2);
        } else {
          return pageChildren(constraints.biggest.width);
        }
      },
    );
  }
}
// Container(
//   alignment: Alignment.centerLeft,
//   decoration: BoxDecoration(
//     color: Colors.white,
//     borderRadius: BorderRadius.circular(10),
//   ),
// )
//     ],
//   );
// }

Widget textfieldWidget(String title) {
  return Container(
    width: 400,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      // color: const Color.fromARGB(255, 148, 73, 156),
    ),
    child: TextField(
      decoration: InputDecoration(
        
        border: const OutlineInputBorder(),
        enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
        focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.orange)),
        label: Center(
          child: Text(
            title,
          ),
        ),
        labelStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  );
}

Widget titleTextWidget(String title) {
  return Text(
    title,
    style: const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white),
  );
}

Widget focusTextWidget(String title) {
  return Text(
    title,
    style: const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
  );
}

Widget registerTextWidget(String title) {
  return Text(
    title,
    style: const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 15, color: Colors.white54),
  );
}

nameltListSizedBox() {
  return const SizedBox(
    height: 10,
  );
}
