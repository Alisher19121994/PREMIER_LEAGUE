import 'package:flutter/material.dart';
import '../../components/app_images.dart';

class LatestPage extends StatefulWidget {
  const LatestPage({super.key});

  static const String id = 'LatestPage';

  @override
  State<LatestPage> createState() => _LatestPageState();
}

class _LatestPageState extends State<LatestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff35013a),
      body: CustomScrollView(
        slivers:[
          SliverAppBar(
            expandedHeight: 120,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: const Color(0xff35013a),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
                title: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 35,
                        width: 100,
                        child:Image(image: AssetImage(AppImages.icon1),),
                      ),
                    ],///
                  ),
              background: Image(image: AssetImage(AppImages.backend),fit: BoxFit.cover,),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 570,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.all(8),
                    height: 305,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Container(
                          height: 210,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(AppImages.mua),
                                  fit: BoxFit.cover)),
                        ),
                        const SizedBox(
                          height: 17,
                        ),
                        Text(
                          '2023/2024 preview:  "Arsenal are stronger, they\'ll attack it all" ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Can the Gunners go one better and win the premier League ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              height: 220,
                              child: Column(
                                children: [
                                  Container(
                                    height: 130,
                                    child: Image(
                                      image: AssetImage(AppImages.mua),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '"FPL experts\'s top tips for 2023/2024" ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 18,
                          ),
                          Expanded(
                            child: SizedBox(
                              height: 220,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 130,
                                    child: Image(
                                      image: AssetImage(AppImages.mua),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    '"FPL experts\'s top tips for 2023/2024" ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 1.5),
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
                    ),
                    margin: const EdgeInsets.only(left: 5,right: 5),
                    height:500,
                    width: double.infinity,
                  child: Column(
                    children: [
                      liveMatchResults(),
                      liveMatchResults(),
                      liveMatchResults(),
                    ],
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12, width: 1.5),
                            borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
                          ),
                  margin: const EdgeInsets.only(left: 5,right: 5),
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Container(
                          height: 80,
                          decoration: BoxDecoration(
                              borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
                              border: Border.all(color: Colors.black12, width: 1.5),
                              image: DecorationImage(
                            image: AssetImage(AppImages.table),
                            fit: BoxFit.fitWidth
                          )
                          ),
                      ),
                      Container(
                        height: 40,
                        color: Colors.black12,
                        child: Row(
                          children: [
                           Expanded(
                               child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: const [
                             SizedBox(width: 7,),
                             Text('Pos',style: TextStyle(color: Colors.black,fontSize: 14),),
                             SizedBox(width: 5,),
                             Text('Club',style: TextStyle(color: Colors.black,fontSize: 14),),
                             SizedBox(width: 80,),
                           ],)),
                            Expanded(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const [
                                  Text('PL',style: TextStyle(color: Colors.black,fontSize: 14),),
                                  Text('GD',style: TextStyle(color: Colors.black,fontSize: 14),),
                                  Text('PTS',style: TextStyle(color: Colors.black,fontSize: 14),),

                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                          child: ListView(
                            children: [
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),
                              leagueTable(context),

                            ],
                          )
                      ),

                    ],
                  ),
                ),

            ]
          ))
        ]
      ),
    );
  }
}
Widget leagueTable(context){
  return Container(
    height: 60,
    padding: const EdgeInsets.all(7),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  [
        Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            SizedBox(width: 7,),
            Text('1',style: TextStyle(color: Colors.black,fontSize: 18),),
            SizedBox(width: 15,),
            Text('Arsenal',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(width: 50,),
          ],
        )),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text('0',style: TextStyle(color: Colors.black,fontSize: 18),),
                  Text('0',style: TextStyle(color: Colors.black,fontSize: 18),),
                  Text('0',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),

                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 7,),
        const Divider(thickness: 1,color: Colors.grey,),
      ],
    ),
  );
}
Widget liveMatchResults(){
  return Container(
    margin: EdgeInsets.all(5),
    padding: EdgeInsets.all(5),
    height: 40,
    width: double.infinity,
    color: Colors.white,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text('Manchester united',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
        Text('|',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
        Container(
          padding: const EdgeInsets.all(5),
          height: 40,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Colors.grey
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('3',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(width: 4,),
              Text(':',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
              SizedBox(width: 4,),
              Text('1',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
            ],
          ),
        ),
        Text('|',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),
        Text('Arsenal',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 16),),

      ],
    ),
  );
}
