import 'package:buse_diet/components/colors.dart';
import 'package:buse_diet/pages/animation_background.dart';

import 'package:buse_diet/pages/informations/height_weight.dart';

import 'package:flutter/material.dart';



class GenderPage extends StatefulWidget {
  const GenderPage({Key? key}) : super(key: key);

  @override
  State<GenderPage> createState() => _GenderPageState();
}

class _GenderPageState extends State<GenderPage> {
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
                const SizedBox(height: 150,),
                GestureDetector(
                  onTap: () {
                    // buraya dokunma işleminin gerçekleştiğinde yapılacak işlemi ekleyebilirsiniz
                  },
                  child: Container(
                    width: 250,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: AppColors.containerColor1,
                    ),
                    child: Stack(
                      children: <Widget>[
                        const Center(
                          child:  Icon(
                            Icons.female_outlined,
                            color: Colors.white,
                            size: 100,
                          ),
                        ),
                        
                        Positioned(
                          bottom: 0,
                          
                          child: Container(
                            height: 40,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                              color: AppColors.containerColor2,
                            ),
                            
                            
                            child: const Text("Kadın   >",style: TextStyle(color: Colors.white, fontSize: 20),textAlign: TextAlign.center,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    // buraya dokunma işleminin gerçekleştiğinde yapılacak işlemi ekleyebilirsiniz
                  },
                  child: Container(
                    width: 250,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: AppColors.containerColor1,
                    ),
                    child: Stack(
                      children: <Widget>[
                        const Center(
                          child:  Icon(
                            Icons.male_outlined,
                            color: Colors.white,
                            size: 100,
                          ),
                        ),
                        
                        Positioned(
                          bottom: 0,
                          child: Container(
                            height: 40,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(20.0),
                                bottomRight: Radius.circular(20.0),
                              ),
                              color: AppColors.containerColor2,
                            ),
                            
                            child: const Text("Erkek   >",style: TextStyle(color: Colors.white, fontSize:20),textAlign: TextAlign.center,),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
                 SizedBox(
                            height: 50,
                            width: 50,   
                            child: GestureDetector(
                             // onTap: widget.onTap,
                              child: ElevatedButton(
                              onPressed: (){ //gerekli controller yapilmissa bilgi alma sayfasina yonlendirilecek
                                Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HeightWeight(),),);

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
                const SizedBox(height: 50,),
                const Text("Cinsiyet Seçiniz",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize:42),textAlign:TextAlign.center,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
