import 'package:flutter/material.dart';
import 'package:p_l/pages/mainScreens/pl/allmatches/tabs/related_page.dart';
import 'package:p_l/pages/mainScreens/pl/allmatches/tabs/stats_page.dart';

class AllPLMatches extends StatefulWidget {
  const AllPLMatches({super.key});
  static const String id = 'AllPLMatches';
  @override
  State<AllPLMatches> createState() => _AllPLMatchesState();
}

class _AllPLMatchesState extends State<AllPLMatches> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff35013a),
      appBar: AppBar(
        // bottom: TabBar(
        //   isScrollable: true,
        //   indicatorColor:Color(0xff35013a),
        //   unselectedLabelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14),
        //   labelStyle: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
        //   tabs: [
        //     Tab(child: Text("Related", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),),
        //     Tab(child: Text("Stats", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),),
        //   ],
        // ),
        elevation: 0.0,
        backgroundColor: const Color(0xff35013a),
        title: Container(
          padding: EdgeInsets.all(20),
          color:  const Color(0xff3b0c3f),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:  const [
              Text('TOT vs MUN',style: TextStyle(color: Colors.white, fontSize: 19,fontWeight: FontWeight.bold),),
              Icon(Icons.notifications_active_outlined,size: 25,),

            ],
          ),
        ),
      ),
      body: Container(
        //margin: const EdgeInsets.all(7),
        child: ListView(
          children: [
            //#Top bar clubs timetable
            Container(
              margin: const EdgeInsets.all(7),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 230,
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment:MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      SizedBox(width: 30,),
                      Text('MUN',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                      SizedBox(width: 10,),
                      Text('|',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 26),),
                      Container(
                          padding: const EdgeInsets.all(5),
                          height: 50,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey,width: 1),
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.green
                          ),
                          child: Center(
                            child: Text('21:30',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 28),),
                          )
                      ),
                      Text('|',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 26),),
                      SizedBox(width: 10,),
                      Text('TOT',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22),),
                      SizedBox(width: 30,),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Divider(thickness: 1,),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Text('Sat 19 Aug 2023',style: TextStyle(color: Color(0xff35013a),fontSize: 25,fontWeight: FontWeight.bold),),
                  ),
                  const Text('Tottenham Hotspur Stadium',style: TextStyle(color: Colors.black,fontWeight: FontWeight.normal,fontSize: 18))

                ],
              ),
            ),
            const SizedBox(height: 17,),
               Expanded(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  margin: const EdgeInsets.only(left: 7,right: 7),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(12),
                        height: 50,
                        child: Row(
                          children: [
                            selectLanguage()
                            // Container(
                            //   padding: const EdgeInsets.all(12),
                            //   margin: const EdgeInsets.symmetric(horizontal: 3),
                            //   height: 100,
                            //   width: double.infinity,
                            //   child: Row(
                            //     crossAxisAlignment: CrossAxisAlignment.center,
                            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //     children: [
                            //       Container(
                            //         decoration: BoxDecoration(
                            //           borderRadius: BorderRadius.circular(14),
                            //           color: Color(0xff35013a),
                            //         ),
                            //         height: 50,
                            //         width: 160,
                            //         child: const Center(
                            //           child: Text('Related',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19)),
                            //         ),
                            //       ),
                            //       Container(
                            //         decoration: BoxDecoration(
                            //             borderRadius: BorderRadius.circular(14),
                            //             color:Color(0xff35013a),
                            //         ),
                            //         height: 50,
                            //         width: 160,
                            //         child: const Center(
                            //           child: Text('Stats',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 19)),
                            //         ),
                            //       ),
                            //
                            //     ],
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ],
                  )
                )
                )

          ],
        ),
      ),
    );
  }

  List<bool> _isSelected = [false,true];
  Widget selectLanguage(){
    return Expanded(
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.white)
            ),
            width: double.infinity,
            height: 100,
            child: ToggleButtons(
              borderWidth: 1.0,
             selectedBorderColor: Colors.transparent,
             borderColor: Colors.transparent,
              isSelected: _isSelected,
              onPressed: (int index){
                setState(() {
                  if(index ==0){
                    _isSelected[0] = true;
                    _isSelected[1] = false;
                  }else{
                    _isSelected[1] = true;
                    _isSelected[0] = false;
                  }
                });
              },
              children: [
                Container(
                  child: Center(
                      child: Icon(Icons.check,size: 24,color: _isSelected[0] ? Colors.white : Colors.black),
                    //child: Text("Related",style: TextStyle(color: _isSelected[0] ? Colors.white : Colors.black,fontSize: 19),),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                   // color: _isSelected[0] ? Color(0xff35013a) : Colors.white,
                    color: _isSelected[0] ? Colors.green : Colors.white,
                  ),
                  width: 50,
                  height: 50,

                ),
                Container(
                  child: Icon(Icons.clear,size: 24,color: _isSelected[1] ? Colors.white : Colors.black),
                 // child: Text("Stats",style: TextStyle(color: _isSelected[1] ? Colors.white : Colors.black,fontSize: 19),),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: _isSelected[1] ? Colors.red : Colors.white,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  width: 50,
                  height: 50,
                ),
              ],
            )
        ));
  }

}

