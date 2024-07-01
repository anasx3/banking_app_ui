import 'package:banking_app_ui/screen/history_screen.dart';
import 'package:banking_app_ui/utils/constats.dart';
import 'package:banking_app_ui/widget/task_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fl_chart/fl_chart.dart'; // لإضافة الرسوم البيانية

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String card = 'البطاقة الأساسية';

  List<Color> taskIconColors = [
    Color(0xff70cafc),
    Color(0xff47e775),
    Color(0xffff969c),
    Color(0xff6680e4),
  ];

  List<IconData> taskIcons = [
    Icons.sync_alt,
    Icons.credit_score,
    Icons.currency_exchange,
    Icons.verified_user,
  ];

  List<String> taskTitles = [
    'تحويل المال',
    'ادفع الفواتير',
    'صرف الأموال\n',
    'فحص الأمان\n',
  ];

  List<String> taskSubtitles = [
    'لجنة التنسيق الإدارية',
    'التعامل الحكومي',
    'الصرافة',
    'إدارة الحساب',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Constants.whiteColor,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 23),
                                spreadRadius: -17,
                                blurRadius: 50,
                                color: Color.fromRGBO(158, 142, 142, 1),
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.workspaces_outline,
                          ),
                          padding: EdgeInsets.all(15),
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Constants.whiteColor,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(0, 23),
                                    spreadRadius: -17,
                                    blurRadius: 50,
                                    color: Color.fromRGBO(158, 142, 142, 1),
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.notifications,
                                color: Colors.red,
                              ),
                              padding: EdgeInsets.all(15),
                            ),
                            SizedBox(width: 15),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 3),
                                    blurRadius: 5,
                                    spreadRadius: -4,
                                  ),
                                ],
                              ),
                              child: Icon(
                                Icons.person,
                              ),
                              padding: EdgeInsets.all(15),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        'SAR 33,937,100',
                        style: GoogleFonts.josefinSans(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: Constants.titleColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Constants.whiteColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 23),
                              spreadRadius: -17,
                              blurRadius: 50,
                              color: Colors.blueGrey,
                            ),
                          ],
                        ),
                        child: Stack(
                          alignment: AlignmentDirectional.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.amber,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 6),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey,
                                    offset: Offset(0, 6),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      ),
                      SizedBox(width: 25),
                      Column(
                        children: [
                          DropdownButtonHideUnderline(
                            child: DropdownButton(
                              value: card,
                              items: [
                                DropdownMenuItem<String>(
                                  value: 'البطاقة الأساسية',
                                  child: Text('البطاقة الأساسية'),
                                ),
                                DropdownMenuItem<String>(
                                  value: 'البطاقة الثانية',
                                  child: Text('البطاقة الثانية'),
                                ),
                              ],
                              onChanged: (value) {
                                setState(() {
                                  card = value!;
                                });
                              },
                              style: GoogleFonts.josefinSans(
                                fontSize: 25,
                                fontWeight: FontWeight.w800,
                                color: Constants.titleColor,
                              ),
                              isExpanded: false,
                              iconEnabledColor: Constants.titleColor,
                              iconSize: 30,
                            ),
                          ),
                          Text(
                            'البطاقة الأساسية 9365',
                            style: GoogleFonts.josefinSans(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                        crossAxisAlignment: CrossAxisAlignment.start,
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Constants.whiteColor,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(0, 23),
                          spreadRadius: -17,
                          blurRadius: 50,
                          color: Colors.blueGrey,
                        ),
                      ],
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.search),
                        hintText: 'ابحث عن المعاملات...',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: 0.85,
                      ),
                      itemBuilder: (context, index) => TaskWidget(
                        taskIconColor: taskIconColors[index],
                        icon: taskIcons[index],
                        title: taskTitles[index],
                        subTitle: taskSubtitles[index],
                      ),
                      itemCount: taskIconColors.length,
                      physics: NeverScrollableScrollPhysics(),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            DraggableScrollableSheet(
              builder: (context, scrollController) => HistoryScreen(
                controller: scrollController,
              ),
              initialChildSize: 0.09,
              minChildSize: 0.09,
              maxChildSize: 0.95,
            ),
          ],
        ),
      ),
    );
  }
}
