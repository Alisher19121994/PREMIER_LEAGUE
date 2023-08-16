import 'package:flutter/material.dart';
import 'package:p_l/components/app_images.dart';
import 'package:p_l/pages/mainScreens/pl/allmatches/matches_pages.dart';

class PremierLeague extends StatefulWidget {
  const PremierLeague({super.key});
  static const String id = 'PremierLeague';

  @override
  State<PremierLeague> createState() => _PremierLeagueState();
}

class _PremierLeagueState extends State<PremierLeague> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xff35013a),
      body: Container(
        margin: const EdgeInsets.all(4),
        child: ListView(
              children: [
                //#Top bar details
                Container(
                  height: 130,
                  margin: const EdgeInsets.only(top: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                    children: [
                      //#PL icon
                      Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          height: 40,
                          child: Center(
                              child: Image(
                                image: AssetImage(AppImages.icon1),
                              )
                          )
                      ),
                      //#title of PL
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('All PL matches',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //#Item list
                SizedBox(
                  height: 100,
                  width: double.infinity,
                  child:  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      itemsOfClubsTimeTable(context),
                      itemsOfClubsTimeTable(context),
                      itemsOfClubsTimeTable(context),
                      itemsOfClubsTimeTable(context),
                      itemsOfClubsTimeTable(context),
                      itemsOfClubsTimeTable(context),
                      itemsOfClubsTimeTable(context),
                      itemsOfClubsTimeTable(context),

                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                //#titleOfDetailsOfPL
                Expanded(
                  child: Container(
                     color: const Color(0xB6CBCBCB),
                    padding: const EdgeInsets.only(top: 20,left: 5,right: 5,bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        titleOfDetailsOfPL ('News'),
                        const SizedBox(height: 5,),
                        titleOfDetailsOfPL ('Videos'),
                        const SizedBox(height: 5,),
                        titleOfDetailsOfPL ('Watch Live'),
                        const SizedBox(height: 5,),
                        titleOfDetailsOfPL ('Awards'),
                        const SizedBox(height: 5,),
                        titleOfDetailsOfPL ('Man of the Match'),
                        const SizedBox(height: 5,),
                        titleOfDetailsOfPL ('Transfers'),
                        const SizedBox(height: 5,),
                        titleOfDetailsOfPL ('History'),
                        const SizedBox(height: 17,),
                     Container(
                              height: 180,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(AppImages.table),
                                    fit: BoxFit.cover
                                  ),
                              ),
                       child: Container(
                         padding: const EdgeInsets.only(top: 120,left: 7,right: 7,bottom: 10),
                         child: Row(
                           crossAxisAlignment: CrossAxisAlignment.end,
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             const SizedBox(width: 2,),
                             Container(
                               padding: const EdgeInsets.all(8),
                               height: 60,
                               width: 183,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.white,
                               ),
                               child: Center(
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: const [
                                      SizedBox(width: 2,),
                                     Text('Official Website',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17)),
                                     Icon(Icons.north_east_rounded,size: 24,weight: 12,color: Color(0xff35013a),),
                                     const SizedBox(width: 2,),
                                   ],
                                 ),
                               ),
                             ),
                             const SizedBox(width: 4,),
                             Container(
                               padding: const EdgeInsets.all(8),
                               height: 60,
                               width: 183,
                               decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(6),
                                 color: Colors.white,
                               ),
                               child: Center(
                                 child: Row(
                                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: const [
                                      SizedBox(width: 2,),
                                     Text('Official App',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 17)),
                                     Icon(Icons.north_east_rounded,size: 24,weight: 12,color: Color(0xff35013a),),
                                     SizedBox(width: 2,),
                                   ],
                                 ),
                               ),
                             ),
                             const SizedBox(width: 2,),
                           ],
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
    );
  }
}
Widget titleOfDetailsOfPL(String title){
  return GestureDetector(
    onTap: (){

    },
    child: Card(

      color:  Colors.white,
      child: Container(
        height: 50,
        width: double.infinity,
        margin: const EdgeInsets.all(2),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  [
            Text(title,style: const TextStyle(color: Color(0xff35013a),fontSize: 21,fontWeight: FontWeight.bold),),
            const Icon(Icons.keyboard_arrow_right,size: 28,color: Color(0xff35013a),),
          ],
        ),
      ),
    ),
  );
}

Widget itemsOfClubsTimeTable(context){
  return GestureDetector(
    onTap: (){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>const AllPLMatches()));
    },
    child: Card(
      color: Colors.white,
      child: Container(
        margin: const EdgeInsets.all(2),
        padding: const EdgeInsets.all(12),
        width: 320,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: const Text('Sat 19 Aug 2023',style: TextStyle(color: Color(0xff35013a),fontSize: 15,fontWeight: FontWeight.normal),),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                SizedBox(width: 30,),
                Text('MUN',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(width: 10,),
                Text('|',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                Container(
                  padding: const EdgeInsets.all(5),
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey,width: 1),
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white
                  ),
                  child: Center(
                    child: Text('21:30',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18),),
                  )
                ),
                Text('|',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
                SizedBox(width: 10,),
                Text('TOT',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                SizedBox(width: 30,),

              ],
            )
          ],
        ),
      ),
    ),
  );
}
