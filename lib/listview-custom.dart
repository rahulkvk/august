import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) => MaterialApp(
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false,
      home: Listviewcustom(),
    ),
  )); //sample is classname
}

class Listviewcustom extends StatelessWidget {
  var name = ["Facebook", "A10 NETWORKS NIC", "Intel Corp", "HP Inc", "Advanced Micro Devices Inc", "Apple Inc", "Amazon Inc", "Microsoft", "Threads", "Instagram"];
  var value = ['\$100', "\$123", "\$242", "\$324", "\$544", "\$544", "\$645", "\$333", "\$332", "\$665", "\$667"];
  var alp = ["F", "A", "I", "H", "A", "A", "A", "M", "T", "I"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("custom list view"),
        ),
        body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
              (context, index) {
            return Card(
              child: ListTile(
                leading: CircleAvatar(child: Text(alp[index])),
                title: Text(name[index]),
                trailing: Text(value[index]),
              ),
            );
          },childCount: name.length
        )

        )
    );
  }

}

