import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'meet_page.dart';

class Home extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Container(
                child: Text(
                  'Gmail',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // trailing:
              //     IconButton(icon: Icon(Icons.mail_outline), onPressed: null),
            ),
            Divider(),
            InkWell(
              child: ListTile(
                title: Text('Inbox'),
                leading: Icon(Icons.inbox),
                trailing: Text('99+'),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('Unread'),
                leading: Icon(Icons.drafts),
                trailing: Text('99+'),
              ),
              onTap: () {},
            ),
            Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Text('ALL LABELS'),
            ),
            InkWell(
              child: ListTile(
                title: Text('Starred'),
                leading: Icon(Icons.star_border),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('Snoozed'),
                leading: Icon(Icons.snooze),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('Important'),
                leading: Icon(Icons.label_important),
                trailing: Text('99+'),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('Sent'),
                leading: Icon(Icons.send),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('Scheduled'),
                leading: Icon(Icons.schedule),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('Outbox'),
                leading: Icon(Icons.check_box_outline_blank),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('Drafts'),
                leading: Icon(Icons.insert_drive_file),
                trailing: Text('45'),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('All mail'),
                leading: Icon(Icons.perm_media),
                trailing: Text('99+'),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('Spam'),
                leading: Icon(Icons.error_outline),
                trailing: Text('2'),
              ),
              onTap: () {},
            ),
            InkWell(
              child: ListTile(
                title: Text('Bin'),
                leading: Icon(Icons.restore_from_trash),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: Material(
              elevation: 8,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Search in mail",
                  border: InputBorder.none,
                  prefixIcon: IconButton(
                    icon: Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Icon(Icons.dehaze),
                    ),
                    onPressed: () => _scaffoldKey.currentState.openDrawer(),
                  ),
                  suffixIcon: CupertinoButton(
                    onPressed: () {
                      showCupertinoDialog(
                          barrierDismissible: true,
                          context: context,
                          builder: (context) {
                            return CupertinoAlertDialog(
                              title: Row(
                                children: [
                                  Icon(Icons.close),
                                  Container(
                                    margin: EdgeInsets.only(left: 45.0),
                                    child: Image.asset(
                                      "assets/images/google.png",
                                      width: 100.0,
                                    ),
                                  ),
                                ],
                              ),
                              content: Column(
                                children: [
                                  Row(
                                    children: [
                                      Stack(
                                        children: <Widget>[
                                          CircleAvatar(
                                            backgroundImage: AssetImage(
                                                "assets/images/avatar2.png"),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                borderRadius:
                                                    new BorderRadius.all(
                                                  Radius.elliptical(50, 50),
                                                ),
                                              ),
                                              child: Text('99+'),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Text(
                                            'Sasha Grigoryan',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            textAlign: TextAlign.start,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            'sasha.grigoryan1986@gmail.com',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      MaterialButton(
                                        onPressed: () {},
                                        child:
                                            Text('Manage your Google Account'),
                                        shape: StadiumBorder(),
                                        color: Colors.grey[100],
                                        // elevation: 8,
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        children: [
                                          Icon(Icons.group_add),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Text('Add another account'),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.group),
                                          SizedBox(
                                            width: 7,
                                          ),
                                          Text(
                                              'Manage accounts on this device'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    color: Colors.black,
                                  ),
                                  Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                              "Privacy Policy . Terms ov service"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/avatar4.jpg"),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(List.generate(100, (int i) {
              return _listItem(i);
            })),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.edit,
          color: Colors.red,
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Stack(
              children: <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.red,
                ),
                Positioned(
                  top: 0,
                  left: 9,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.elliptical(30, 30)),
                      color: Colors.red,
                    ),
                    child: Text(
                      '99+',
                      style: TextStyle(
                        fontSize: 8.5,
                      ),
                    ),
                  ),
                )
              ],
            ),
            title: Text(
              "Mail",
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return MeetPage();
                    },
                  ),
                );
              },
              icon: Icon(
                Icons.videocam,
              ),
            ),
            title: Text("Meet"),
          ),
        ],
      ),
    );
  }

  Widget _listItem(int i) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        child: ListTile(
          leading: CircleAvatar(
            // backgroundImage: AssetImage(
            //   "assets/images/avatar2.png",
            // ),
            backgroundColor: Colors.green,
            child: Text("L"),
          ),
          title: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Laura Charkhifalakyan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "23:15",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "Lorem Ipsum is simply dummy text of the printing",
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("It is a long established fact"),
              Icon(Icons.star_border)
            ],
          ),
        ),
        delegate: SlidableScrollDelegate(),
        actionExtentRatio: 0.15,
        actions: <Widget>[
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.green,
            ),
            child: Icon(
              Icons.archive,
              color: Colors.white,
            ),
          ),
        ],
        secondaryActions: <Widget>[
          Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.green,
            ),
            child: Icon(
              Icons.archive,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
