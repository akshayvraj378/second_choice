import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  bool switchOn = false;
  String dropdownvalue = 'English';

  // List of items in our dropdown menu
  var items = [
    'English',
    'Malayalam',
    'Spanish',
    'Hindi',
    'Tamil',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Settings"),
            centerTitle: true,
            backgroundColor: Colors.transparent),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                onTap: () {},
                leading: const Icon(Icons.person),
                title: const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('Account'),
                ),
                shape: const Border(
                    top: BorderSide(width: 1, color: Colors.white),
                    bottom: BorderSide(width: 1, color: Colors.black38),
                    left: BorderSide(width: 1, color: Colors.black12),
                    right: BorderSide(width: 1, color: Colors.black12)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                onTap: () {},
                leading: const Icon(Icons.privacy_tip),
                title: const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('Privacy Policy'),
                ),
                shape: const Border(
                    top: BorderSide(width: 1, color: Colors.white),
                    bottom: BorderSide(width: 1, color: Colors.black38),
                    left: BorderSide(width: 1, color: Colors.black12),
                    right: BorderSide(width: 1, color: Colors.black12)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                onTap: () {},
                trailing: Switch(
                  activeColor: Colors.blue,
                  value: switchOn,
                  onChanged: (value) {
                    setState(() {
                      switchOn = !switchOn;
                    });
                  },
                ),
                leading: const Icon(Icons.notifications),
                title: const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('Notifications'),
                ),
                shape: const Border(
                    top: BorderSide(width: 1, color: Colors.white),
                    bottom: BorderSide(width: 1, color: Colors.black38),
                    left: BorderSide(width: 1, color: Colors.black12),
                    right: BorderSide(width: 1, color: Colors.black12)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                onTap: () {},
                leading: const Icon(Icons.sunny),
                title: const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('Dark/Light'),
                ),
                shape: const Border(
                    top: BorderSide(width: 1, color: Colors.white),
                    bottom: BorderSide(width: 1, color: Colors.black38),
                    left: BorderSide(width: 1, color: Colors.black12),
                    right: BorderSide(width: 1, color: Colors.black12)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                onTap: () {},
                trailing: DropdownButton(
                  borderRadius: BorderRadius.circular(27),
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  },
                ),
                leading: const Icon(Icons.language),
                title: const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('Languange'),
                ),
                shape: const Border(
                    top: BorderSide(width: 1, color: Colors.white),
                    bottom: BorderSide(width: 1, color: Colors.black38),
                    left: BorderSide(width: 1, color: Colors.black12),
                    right: BorderSide(width: 1, color: Colors.black12)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                onTap: () {},
                leading: const Icon(Icons.password),
                title: const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('Change Password'),
                ),
                shape: const Border(
                    top: BorderSide(width: 1, color: Colors.white),
                    bottom: BorderSide(width: 1, color: Colors.black38),
                    left: BorderSide(width: 1, color: Colors.black12),
                    right: BorderSide(width: 1, color: Colors.black12)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                onTap: () {},
                leading: const Icon(Icons.delete),
                title: const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('Delete Account'),
                ),
                shape: const Border(
                    top: BorderSide(width: 1, color: Colors.white),
                    bottom: BorderSide(width: 1, color: Colors.black38),
                    left: BorderSide(width: 1, color: Colors.black12),
                    right: BorderSide(width: 1, color: Colors.black12)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListTile(
                onTap: () {},
                leading: const Icon(Icons.logout),
                title: const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text('Log Out'),
                ),
                shape: const Border(
                    top: BorderSide(width: 1, color: Colors.white),
                    bottom: BorderSide(width: 1, color: Colors.black38),
                    left: BorderSide(width: 1, color: Colors.black12),
                    right: BorderSide(width: 1, color: Colors.black12)),
              ),
            ),
          ],
        ));
  }
}
