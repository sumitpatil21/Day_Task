import 'package:flutter/material.dart';

class GmailPage extends StatefulWidget {
  const GmailPage({super.key});

  @override
  State<GmailPage> createState() => _GmailPageState();
}

class _GmailPageState extends State<GmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gmail"),
        backgroundColor: Colors.black12
      ),
      drawer: Drawer(
        backgroundColor:Color(0xff2E2F33),
        width: 320,
        child: GmailUnderColumn(),
      ),
      body: Column(
        children: [
        ],
      ),
    );
  }

























  Column GmailUnderColumn() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 90,left: 30,bottom: 20),
            child: Text("Gmail",style: TextStyle(color: Colors.white,fontSize: 37,fontWeight: FontWeight.w500,),),
          ),
          Divider(
            color: Colors.white,
            indent: 1,
            endIndent: 1,
          ),
          ListTile(
            leading: Icon(
              Icons.all_inbox,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("All Inboxes",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          Divider(
            color: Colors.white,
            indent: 1,
            endIndent: 1,
          ),
          ListTile(
            leading: Icon(
              Icons.inbox,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Inbox",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          Divider(
            color: Colors.white,
            indent: 1,
            endIndent: 1,
          ),
          ListTile(
            leading: Icon(
              Icons.star_border,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Starred",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.watch_later_outlined,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Snoozed",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.label_important_outline ,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Important",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.send,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Sent",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.drafts,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Drafts",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.mail_outline,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("All mail",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.report_gmailerrorred,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Spam",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.delete_sweep_outlined,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Trash",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          Divider(
            color: Colors.white,
            indent: 1,
            endIndent: 1,
          ),
          ListTile(
            leading: Icon(
              Icons.add,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Create New",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          Divider(
            color: Colors.white,
            indent: 1,
            endIndent: 1,
          ),
          ListTile(
            leading: Icon(
              Icons.settings_outlined,
              color: Colors.white,
              size:30 ,
            ),
            title: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text("Setting",style: TextStyle(color: Colors.white,fontSize: 20),),
            ),
          ),
          Divider(
            color: Colors.white,
            indent: 1,
            endIndent: 1,
          ),
        ],
      );
  }
}