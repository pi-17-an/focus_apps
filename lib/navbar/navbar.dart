import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class navbar extends StatelessWidget {
  const navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, Constraints) {
        if (Constraints.maxWidth > 1300) {
          return  desktopnavbar();
        }
        else if (Constraints.maxWidth > 800 && Constraints.maxHeight > 1300) 
        {
          return  desktopnavbar();
        } 
        else {
          return  mobilenavbar();
        }
      },
    );
  }
}

class desktopnavbar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1300),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "Focus",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 30,
            ),),
            Row(
              children: <Widget>[
                const Text(
                  "Already have an account?",
                style: TextStyle(color:Colors.white),
                ),
                const SizedBox(
                  width: 30,
                ),
                TextButton( child: const Text('SIGI IN'), onPressed: () {},
                style: TextButton.styleFrom(
                  primary: Colors.white,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))
                  ),
                  side: const BorderSide(color: Colors.white)
                ),
                )
                // MaterialButton(
                //   color: Colors.pink,
                //   shape: const RoundedRectangleBorder(
                //     borderRadius: BorderRadius.all(Radius.circular(20.0))),
                //   onPressed: () {},
                //   child: const Text(
                //     "SIGI IN",
                //     style: TextStyle(color: Colors.white),
                //   ),
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class mobilenavbar extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(
           children: <Widget>[
              const Text(
                "Focus",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 30,
              ),),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Already have an account?",
                    style: TextStyle(color:Colors.white),
                    ),
                  ],
                ),
              )
            ],
        ),
      ),
    );
  }
}