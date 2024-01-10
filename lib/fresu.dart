import 'package:flutter/material.dart';
class Spoti extends StatefulWidget {
 final double slider;
 final int weight;
 final int age;
  Spoti(this.slider,this.weight,this.age) ;
  @override
  State<Spoti> createState() => _SpotiState();
}

class _SpotiState extends State<Spoti> {
  double tot =0;
  @override
  void initState() {
    super.initState();
    Bmi();
  }
  void Bmi(){
    double ans=(widget.weight/(widget.slider*widget.slider));
    print(ans);
    setState(() {
      tot=ans;
    });

}
 String tet(){
   if(tot>25){
     return 'over weight';
   }
   else if(tot>18.5 && tot<24.9){
     return 'Health';
   }
   else{
     return 'Under weight';
   }
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
        body: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Text('BMI RESULT',
                      style: TextStyle(fontSize: 50,
                          fontFamily: 'BungeeInline',
                          color: Colors.orange
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  height: 110,
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [ Text('HIEGHT',style: TextStyle(
                            fontSize: 20,fontWeight: FontWeight.w700,
                          ),),
                            SizedBox(height: 3,),
                            Text('WEIGHT ',style: TextStyle(fontSize: 20,
                                fontWeight: FontWeight.w700
                            ),),
                            SizedBox(height: 3,),
                            Text('AGE',
                              style: TextStyle(fontSize: 20,
                                  fontWeight: FontWeight.w700
                              ),
                            )
                          ],),SizedBox(width: 8,),
                        Column(crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text('${widget.slider}',
                            style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.w700,
                            ),),

                            Text('${widget.weight}',style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.w700,
                            ),),
                            Text('${widget.age}',
                              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),)
                          ],
                        ),
                       
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Text('BMI RESULT  ${tot.toStringAsFixed(5)}',style: TextStyle(
                fontSize: 40,fontWeight: FontWeight.w700,color: Colors.orange,
              ),),
              SizedBox(height: 20,),
              Text('BMI IS  ${tet()}',style: TextStyle(
                fontSize: 30,fontWeight: FontWeight.w700,color: Colors.orange,
              ), ),

              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(height: 50,
                  width: double.maxFinite,
                  color: Colors.deepOrange,
                  child: TextButton(onPressed: (){
                    Navigator.pop(context);
                    //   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Wacall()
                    // )
                    // );
                  }, child: Text('Calculate Again ?',style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),)),
                ),
              ),
            ],
        ),
    );
  }
}