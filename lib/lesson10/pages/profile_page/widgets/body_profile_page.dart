import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../lesson9/profile_page/widgets/gird_view.dart';

class BodyProfilePage extends StatefulWidget {
  const BodyProfilePage({Key? key}) : super(key: key);

  @override
  State<BodyProfilePage> createState() => _BodyProfilePageState();
}

class _BodyProfilePageState extends State<BodyProfilePage>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 11, right: 28),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 96,
                      width: 96,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Color(0xFFC7C7CC),
                          width: 1,
                        ),
                      ),
                      child: Center(
                        child: Container(
                          height: 86,
                          width: 86,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              "assets/images/lesson8/Oval.jpg",
                              width: 86,
                              height: 86,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 205,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: [
                              Text(
                                "54",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xFF262626)),
                              ),
                              Text(
                                "Posts",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color(0xFF262626)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "834",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xFF262626)),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color(0xFF262626)),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Text(
                                "162",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                    color: Color(0xFF262626)),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 13,
                                    color: Color(0xFF262626)),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 12),
                child: SizedBox(
                  height: 49,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jacob West",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF262626),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: const [
                            TextSpan(
                              text: 'Digital goodies designer ',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF262626),
                              ),
                            ),
                            TextSpan(
                              text: '@pixsellz ',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF05386B),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        "Everything is designed.",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF262626),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Container(
                  height: 32,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: Color(0xFF3C3C43).withOpacity(0.18),
                      width: 1,
                    ),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF262626),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12, left: 14, right: 51),
                child: SizedBox(
                  height: 83,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFFC7C7CC),
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: SvgPicture.asset(
                                  "assets/icons/lesson8/Add Story.svg",
                                  width: 18,
                                  height: 18,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text("New"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFFC7C7CC),
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    "assets/images/lesson8/Oval1.jpg",
                                    width: 56,
                                    height: 56,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text("Friends"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFFC7C7CC),
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    "assets/images/lesson8/Oval2.jpg",
                                    width: 56,
                                    height: 56,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text("Sport"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 64,
                            width: 64,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xFFC7C7CC),
                                width: 1,
                              ),
                            ),
                            child: Center(
                              child: Container(
                                height: 56,
                                width: 56,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(
                                    "assets/images/lesson8/Oval3.jpg",
                                    width: 56,
                                    height: 56,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text("Design"),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 324,
                child: DefaultTabController(
                  length: 2,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Container(
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 15),
                            width: MediaQuery.of(context).size.width,
                            height: 1,
                            decoration: BoxDecoration(
                              border: Border(
                                top: BorderSide(
                                  color: Color(0xFF3C3C43).withOpacity(0.2),
                                  width: 1.0,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height: 44,
                            child: TabBar(
                              indicatorColor: Colors.black,
                              indicatorWeight: 1,
                              controller: tabController,
                              tabs: [
                                Tab(
                                  icon: SvgPicture.asset(
                                    "assets/icons/lesson8/Grid Icon.svg",
                                  ),
                                ),
                                Tab(
                                  icon: SvgPicture.asset(
                                    "assets/icons/lesson8/Tags Icon.svg",
                                  ),
                                ),
                              ],
                              labelColor: Colors.black,
                            ),
                          ),
                          SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.only(bottom: 40),
                              height: 333,
                              child: TabBarView(
                                controller: tabController,
                                children: [
                                  GirdView_Widgets(),
                                  GirdView_Widgets(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
