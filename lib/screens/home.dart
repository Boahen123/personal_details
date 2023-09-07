import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:personal_info/service/launcher.dart';
import 'package:personal_info/widgets/name.dart';

List<Widget> columnChildren = [
  const SizedBox(
    height: 10.0,
  ),
  const Divider(
    height: 20.0,
    thickness: 2.0,
    color: Colors.white,
  ),
  const SizedBox(
    height: 10.0,
  ),
  const Text(
    'Papa Kofi Boahen',
    textScaleFactor: 2,
    style: TextStyle(
      color: Colors.lightBlue,
      letterSpacing: 2.0,
      fontWeight: FontWeight.bold,
    ),
  ),
  const SizedBox(
    height: 10.0,
  )
];

class IDcard extends StatefulWidget {
  const IDcard({super.key});

  @override
  State<IDcard> createState() => _IDcardState();
}

class _IDcardState extends State<IDcard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return MaterialApp(
      initialRoute: '/',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black54,
        appBar: AppBar(
          title: const Papa(),
          centerTitle: true,
          backgroundColor: Colors.black87,
          elevation: 2.0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(size.width * 0.1),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Center(
                      child: CircleAvatar(
                        backgroundImage:
                            const AssetImage('assets/papakofi.jpg'),
                        radius: size.height * 0.2,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Divider(
                      height: size.height * 0.01,
                      thickness: 2.0,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    const Text(
                      'Papa Kofi Boahen',
                      textScaleFactor: 2,
                      style: TextStyle(
                        color: Colors.lightBlue,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Row(children: <Widget>[
                      TextButton(
                          onPressed: () async {
                            const Launcher launcher = Launcher();

                            await launcher.openUrl(
                                'hngix.slack.com', '/team/U05RMPM0TUZ');
                          },
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                'assets/slack.svg',
                                height: 35,
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              const Text('Open Slack',
                                  textScaleFactor: 1.5,
                                  style: TextStyle(color: Colors.lightBlue)),
                            ],
                          ))
                    ]),
                    Row(children: <Widget>[
                      TextButton(
                          onPressed: () async {
                            const Launcher launcher = Launcher();
                            await launcher.openUrl('github.com', '/Boahen123');
                          },
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: SvgPicture.asset(
                                  'assets/github.svg',
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                width: size.width * 0.05,
                              ),
                              const Text('Open GitHub',
                                  textScaleFactor: 1.5,
                                  style: TextStyle(color: Colors.lightBlue)),
                            ],
                          ))
                    ]),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
