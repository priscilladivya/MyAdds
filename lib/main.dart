import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:myads_app/Constants/colors.dart';
import 'package:myads_app/Constants/styles.dart';
import 'package:myads_app/UI/giftCard.dart';
import 'package:myads_app/UI/splashScreen.dart';
import 'package:myads_app/UI/videoPlayer.dart';
import 'UI/BarChart.dart';
import 'UI/Chart.dart';
import 'UI/CheckMyCoupons.dart';
import 'UI/DashBoard.dart';
import 'UI/DemographicsScreen.dart';
import 'UI/FoxProxy.dart';
import 'UI/Interest.dart';
import 'UI/LogInScreen.dart';
import 'UI/RewardScreen.dart';
import 'UI/SettingScreen.dart';
import 'UI/StreamingGoal.dart';
import 'UI/Survey2.dart';
import 'UI/SurveyScreen.dart';
import 'UI/signInScreen.dart';
import 'UI/test.dart';
import 'UI/watchPortraitScreen.dart';
import 'UI/welcomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(),
    );
  }
}





///////////////////////////////////////////////////
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           'Developer Libs',
//           style: TextStyle(color: Colors.white),
//         ),
//         centerTitle: true,
//         elevation: 0.0,
//       ),
//       // backgroundColor: Colors.white,
//       body: Padding(
//         padding: const EdgeInsets.all(30.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//
//             Expanded(
//               child: Expansionpanel(),
//               flex: 1,
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
//
//
// class Expansionpanel extends StatefulWidget {
//   Expansionpaneltate createState() => Expansionpaneltate();
// }
//
// class Expansionpaneltate extends State<Expansionpanel> {
//   List<ExpansionpanelItem> items = <ExpansionpanelItem>[
//     ExpansionpanelItem(
//         isExpanded: false,
//         title: 'Android',
//         content: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Divider(thickness: 1,color: MyColors.accentsColors,),
//           Padding(
//             padding: const EdgeInsets.all(15.0),
//             child: Text('Settings', style: MyStyles.robotoLight18.copyWith(letterSpacing: 1.0, color: MyColors.textColor1b1c20, fontWeight: FontWeight.w200),),
//           ),
//               Divider(thickness: 1,color: MyColors.accentsColors,),
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Text('Coupons', style: MyStyles.robotoLight18.copyWith(letterSpacing: 1.0, color: MyColors.textColor1b1c20, fontWeight: FontWeight.w200),),
//               ),
//               Divider(thickness: 1,color: MyColors.accentsColors,),
//               Padding(
//                 padding: const EdgeInsets.all(15.0),
//                 child: Text('Graphs', style: MyStyles.robotoLight18.copyWith(letterSpacing: 1.0, color: MyColors.textColor1b1c20, fontWeight: FontWeight.w200),),
//               ),
//         ]),
//        ),
//   ];
//
//   Widget build(BuildContext context) {
//     var _selection ="hjk";
//     return ListView(
//       children: [
//
//         ExpansionPanelList(
//           dividerColor: Colors.lightBlue[50],
//           expansionCallback: (int index, bool isExpanded) {
//             setState(() {
//               items[index].isExpanded = !items[index].isExpanded;
//             });
//           },
//           children: items.map((ExpansionpanelItem item) {
//             return ExpansionPanel(
//               headerBuilder: (BuildContext context, bool isExpanded) {
//                 return Padding(
//                   padding: const EdgeInsets.all(15.0),
//                   child: Text(
//                     item.title,
//                     textAlign: TextAlign.left,
//                       style: MyStyles.robotoLight18.copyWith(letterSpacing: 1.0, color: MyColors.textColor1b1c20, fontWeight: FontWeight.w200)
//                   ),
//                 );
//               },
//               isExpanded: item.isExpanded,
//               body: item.content,
//             );
//           }).toList(),
//         ),
//       ],
//     );
//   }
// }
//
// class ExpansionpanelItem {
//   bool isExpanded;
//   final String title;
//   final Widget content;
//   final Icon leading;
//
//   ExpansionpanelItem({this.isExpanded, this.title, this.content, this.leading});
// }
//
// class ExpandableListPage extends StatelessWidget {
//   var array = [
//     {
//       'expanded': false, 'category_Name': "Mobiles", 'sub_Category': [{ 'id': 1, 'name': 'Mi' }, { 'id': 2, 'name': 'RealMe' }, { 'id': 3, 'name': 'Samsung' },
//       { 'id': 4, 'name': 'Infinix' }, { 'id': 5, 'name': 'Oppo' }, { 'id': 6, 'name': 'Apple' }, { 'id': 7, 'name': 'Honor' }]
//     },
//     {
//       'expanded': false, 'category_Name': "Laptops", 'sub_Category': [{ 'id': 8, 'name': 'Dell' }, { 'id': 9, 'name': 'MAC' }, { 'id': 10, 'name': 'HP' },
//       { 'id': 11, 'name': 'ASUS' }]
//     },
//     {
//       'expanded': false, 'category_Name': "Computer Accessories", 'sub_Category': [{ 'id': 12, 'name': 'Pendrive' }, { 'id': 13, 'name': 'Bag' },
//       { 'id': 14, 'name': 'Mouse' }, { 'id': 15, 'name': 'Keyboard' }]
//     },
//     {
//       'expanded': false, 'category_Name': "Home Entertainment", 'sub_Category': [{ 'id': 16, 'name': 'Home Audio Speakers' },
//       { 'id': 17, 'name': 'Home Theatres' }, { 'id': 18, 'name': 'Bluetooth Speakers' }, { 'id': 19, 'name': 'DTH Set Top Box' }]
//     },
//     {
//       'expanded': false, 'category_Name': "TVs by brand", 'sub_Category': [{ 'id': 20, 'name': 'Mi' },
//       { 'id': 21, 'name': 'Thomson' }, { 'id': 22, 'name': 'LG' }, { 'id': 23, 'name': 'SONY' }]
//     },
//     {
//       'expanded': false, 'category_Name': "Kitchen Appliances", 'sub_Category': [{ 'id': 24, 'name': 'Microwave Ovens' },
//       { 'id': 25, 'name': 'Oven Toaster Grills (OTG)' }, { 'id': 26, 'name': 'Juicer/Mixer/Grinder' }, { 'id': 27, 'name': 'Electric Kettle' }]
//     }
//   ];
//   ListView generateItems() {
//     return ListView.separated(
//       shrinkWrap:true,
//       itemCount: array.length,
//       itemBuilder: (BuildContext context, int index) {
//         return ExpandableWidget(array[index]);
//       },
//       separatorBuilder: (BuildContext context, int index) => const Divider(),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Expandable List Example"),
//       ),
//       body: ExpandableTheme(
//         data: ExpandableThemeData(iconColor: Colors.blue, useInkWell: false),
//         child: generateItems(),
//       ),
//     );
//   }
// }
//
// class ExpandableWidget extends StatelessWidget {
//   var subcategoryList;
//   var category;
//
//   ExpandableWidget(entry){
//     category = entry['category_Name'];
//     subcategoryList = entry['sub_Category'];
//   }
//
//   @override
//   Widget build(BuildContext context) {
//
//     buildHeader() {
//       return Builder(
//         builder: (context) {
//           var controller = ExpandableController.of(context);
//           return Container(
//             width:double.infinity,
//             height: 50.0,
//             alignment: Alignment.center,
//             child: Stack(
//                 children:[
//                   Container(
//                     width:double.infinity,
//                     alignment: Alignment.centerLeft,
//                     child : Text(category,
//                       style: Theme.of(context).textTheme.button.copyWith(
//                           color: Colors.deepPurple
//                       ),
//                     ),
//                   ),
//                   Container(
//                     width:double.infinity,
//                     height:double.infinity,
//                     child: FlatButton(
//                       onPressed: () {
//                         controller.toggle();
//                       },
//                     ),
//                   ),
//                 ]
//             ),
//           );
//         },
//       );
//     }
//
//     buildExpanded() {
//       return ListView.separated(
//         shrinkWrap:true,
//         physics: const NeverScrollableScrollPhysics(),
//         itemCount: subcategoryList.length,
//         itemBuilder: (BuildContext context, int index) {
//           var subcategoryName = subcategoryList[index]['name'];
//           return Container(
//             height: 30,
//             child: Padding(
//                 padding: const EdgeInsets.only(left: 10,),
//                 child: Text('${subcategoryName}')
//             ),
//           );
//         },
//         separatorBuilder: (BuildContext context, int index) => const Divider(),
//       );
//     }
//
//     return ExpandableNotifier(
//         child: Container(
//           color: Colors.lightBlue[50],
//           padding: const EdgeInsets.only(left: 10.0, right: 0, bottom: 0),
//           child: ScrollOnExpand(
//             child:
//             ExpandablePanel(
//               header: buildHeader(),
//               expanded: buildExpanded(),
//             ),
//
//           ),
//         )
//     );
//   }
// }
//
// class DynamicallyCheckbox extends StatefulWidget {
//   @override
//   DynamicallyCheckboxState createState() => new DynamicallyCheckboxState();
// }
//
// class DynamicallyCheckboxState extends State {
//
//   Map<String, bool> List = {
//     'Egges' : false,
//     'Chocolates' : false,
//     'Flour' : false,
//     'Fllower' : false,
//     'Fruits' : false,
//   };
//
//   var holder_1 = [];
//
//   getItems(){
//     List.forEach((key, value) {
//       if(value == true)
//       {
//         holder_1.add(key);
//       }
//     });
//
//     // Printing all selected items on Terminal screen.
//     print(holder_1);
//     // Here you will get all your selected Checkbox items.
//
//     // Clear array after use.
//     holder_1.clear();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column (children: <Widget>[
//
//       RaisedButton(
//         child: Text(" Get Checked Checkbox Values "),
//         onPressed: getItems,
//         color: Colors.pink,
//         textColor: Colors.white,
//         splashColor: Colors.grey,
//         padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
//       ),
//
//       Expanded(
//         child :
//         ListView(
//           children: List.keys.map((String key) {
//             return new CheckboxListTile(
//               title: new Text(key),
//               value: List[key],
//               activeColor: Colors.deepPurple[400],
//               checkColor: Colors.white,
//               onChanged: (bool value) {
//                 setState(() {
//                   List[key] = value;
//                 });
//               },
//             );
//           }).toList(),
//         ),
//       ),]);
//   }
// }