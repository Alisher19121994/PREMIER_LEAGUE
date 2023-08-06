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
        // appBar: AppBar(
        //   elevation: 0,
        //   backgroundColor: const Color(0xff35013a),
        //   scrolledUnderElevation: 20.0,
        //   centerTitle: true,
        //   title: Row(
        //     crossAxisAlignment: CrossAxisAlignment.center,
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: [
        //       Text('Premier'),
        //       SizedBox(
        //         width: 4,
        //       ),
        //       //Image(image: AssetImage(AppImages.icon)),
        //       Container(
        //         child: Icon(Icons.account_circle_sharp),
        //       ),
        //       SizedBox(
        //         width: 4,
        //       ),
        //       Text('League'),
        //     ],
        //   ),
        // ),
        // body: SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       const SizedBox(
        //         height: 10,
        //       ),
        //       SizedBox(
        //         height: 570,
        //         width: double.infinity,
        //         child: Column(
        //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //           children: [
        //             Container(
        //               margin: const EdgeInsets.all(8),
        //               height: 305,
        //               width: double.infinity,
        //               child: Column(
        //                 children: [
        //                   Container(
        //                     height: 210,
        //                     decoration: BoxDecoration(
        //                         image: DecorationImage(
        //                             image: AssetImage(AppImages.mua),
        //                             fit: BoxFit.cover)),
        //                   ),
        //                   const SizedBox(
        //                     height: 17,
        //                   ),
        //                   Text(
        //                     '2023/2024 preview:  "Arsenal are stronger, they\'ll attack it all" ',
        //                     style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 20,
        //                         fontWeight: FontWeight.bold),
        //                   ),
        //                   const SizedBox(
        //                     height: 10,
        //                   ),
        //                   Text(
        //                     'Can the Gunners go one better and win the premier League ',
        //                     style: TextStyle(
        //                         color: Colors.white,
        //                         fontSize: 15,
        //                         fontWeight: FontWeight.normal),
        //                   ),
        //                 ],
        //               ),
        //             ),
        //             Expanded(
        //               child: Container(
        //                 margin: const EdgeInsets.all(10),
        //                 width: double.infinity,
        //                 child: Row(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //                   children: [
        //                     Expanded(
        //                       child: Container(
        //                         height: 220,
        //                         child: Column(
        //                           children: [
        //                             Container(
        //                               height: 130,
        //                               child: Image(
        //                                 image: AssetImage(AppImages.mua),
        //                               ),
        //                             ),
        //                             const SizedBox(
        //                               height: 6,
        //                             ),
        //                             Text(
        //                               '"FPL experts\'s top tips for 2023/2024" ',
        //                               style: TextStyle(
        //                                   color: Colors.white,
        //                                   fontSize: 15,
        //                                   fontWeight: FontWeight.normal),
        //                             ),
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                     const SizedBox(
        //                       width: 18,
        //                     ),
        //                     Expanded(
        //                       child: SizedBox(
        //                         height: 220,
        //                         child: Column(
        //                           children: [
        //                             SizedBox(
        //                               height: 130,
        //                               child: Image(
        //                                 image: AssetImage(AppImages.mua),
        //                               ),
        //                             ),
        //                             const SizedBox(
        //                               height: 6,
        //                             ),
        //                             Text(
        //                               '"FPL experts\'s top tips for 2023/2024" ',
        //                               style: TextStyle(
        //                                   color: Colors.white,
        //                                   fontSize: 15,
        //                                   fontWeight: FontWeight.normal),
        //                             ),
        //                           ],
        //                         ),
        //                       ),
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             )
        //           ],
        //         ),
        //       ),
        //       Container(
        //         color: Colors.white,
        //         height: MediaQuery.of(context).size.height,
        //         width: double.infinity,
        //         child: Column(
        //           crossAxisAlignment: CrossAxisAlignment.start,
        //           mainAxisAlignment: MainAxisAlignment.start,
        //           children: [
        //             Container(
        //               margin: const EdgeInsets.only(top:7,left: 5,right: 5),
        //               height: 80,
        //               width: double.infinity,
        //               decoration: BoxDecoration(
        //                 image: DecorationImage(image: AssetImage(AppImages.table,), fit: BoxFit.cover),
        //                 color: Colors.white,
        //                 border: Border.all(color: Colors.black12, width: 2.5),
        //                 borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
        //               ),
        //             ),
        //             Container(
        //               margin: const EdgeInsets.only(left: 5,right: 5),
        //               height: MediaQuery.of(context).size.height,
        //               width: double.infinity,
        //               decoration: BoxDecoration(
        //                 image: DecorationImage(image: AssetImage(AppImages.mua,), fit: BoxFit.cover),
        //                 color: Colors.white,
        //                 border: Border.all(color: Colors.black12, width: 2.0),
        //               ),
        //               child: Stack(
        //                 children: [
        //
        //                 ],
        //               ),
        //             ),
        //           ],
        //         ),
        //       ),
        //     ],
        //   ),
        // )
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
                    ],
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
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top:7,left: 5,right: 5),
                    height: 80,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(AppImages.table,), fit: BoxFit.cover),
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 2.5),
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(8.0), topRight: Radius.circular(8.0)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5,right: 5),
                    height: MediaQuery.of(context).size.height,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(AppImages.mua,), fit: BoxFit.cover),
                      color: Colors.white,
                      border: Border.all(color: Colors.black12, width: 2.0),
                    ),
                    child: Stack(
                      children: [

                      ],
                    ),
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
