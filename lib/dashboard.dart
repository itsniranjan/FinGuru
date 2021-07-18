// import '../flutter_flow/flutter_flow_calendar.dart';
// import '../flutter_flow/flutter_flow_theme.dart';
// import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Dashboard extends StatefulWidget {
  Dashboard({Key key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  DateTimeRange calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    final DateTime today = DateTime.now();
    final DateTime start =
        DateTime(today.year, today.month, today.day, 9, 0, 0);
    final DateTime end = start.add(const Duration(hours: 24));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFEF9A9A),
        automaticallyImplyLeading: true,
        title: Text(
          'My Home',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Color(0xFF81D4FA),
      drawer: SafeArea(
        child: Drawer(
          elevation: 16,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ListTile(
                title: Text(
                  'Menu',
                  style: TextStyle(fontSize: 30),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'My goals',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Calendar',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'Recent expenses',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'My to-do list',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
              ListTile(
                title: Text(
                  'My savings history',
                  style: TextStyle(fontSize: 15),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xFF303030),
                  size: 20,
                ),
                tileColor: Color(0xFFF5F5F5),
                dense: false,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SfCalendar(),
          ],
        ),
      ),
    );
  }
}
