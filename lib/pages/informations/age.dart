

import 'package:buse_diet/pages/animation_background.dart';
import 'package:buse_diet/pages/sign_in.dart';

import 'package:flutter/material.dart';

import '../../components/Colors.dart';



class age extends StatefulWidget {
  const age({Key? key}) : super(key: key);

  @override
  State<age> createState() => _ageState();
}

class _ageState extends State<age> {
 int age = 18;

  void incrementAge() {
    setState(() {
      age++;
    });
  }

  void decrementAge() {
    setState(() {
      if (age > 1) {
        age--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          const AnimationBackgroundPage(), // arkaplan
          // geri butonu
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
 Text(
              'Yaşınız',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$age',
              style: TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.0),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                  onPressed: decrementAge,
                  tooltip: 'Azalt',
                  child: Icon(Icons.remove),
                   backgroundColor: Colors.green.shade900,
                ),
                SizedBox(width: 16.0),
                FloatingActionButton(
                  onPressed: incrementAge,
                  tooltip: 'Artır',
                  child: Icon(Icons.add),
                  backgroundColor: Colors.green.shade900,
                ),
              ],
            ),
SizedBox(height: 50,),
                
                 SizedBox(
                            height: 50,
                            width: 50,   
                            child: GestureDetector(
                             // onTap: widget.onTap,
                              child: ElevatedButton(
                              onPressed: (){ //gerekli controller yapilmissa bilgi alma sayfasina yonlendirilecek
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const SignIn(),),);

                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        AppColors.greenButtonColor),
                              ),
                              child: const Text('>'),
                            ),
                            ),                  
        
                          ),
                const SizedBox(height: 200,),
                const Text("Yaşınızı ve Avatarınızı Seçiniz",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize:38),textAlign:TextAlign.center,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
