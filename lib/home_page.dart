import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/constants.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Widget List.',
        ),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: kWidgetNameList.length,
          itemBuilder: (BuildContext context, int i) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => kWidgetNames[i],
                  ),
                );
              },
              child: Card(
                color: Color(0xFF1D1F33),
                child: ListTile(
                  leading: ExcludeSemantics(
                    child: CircleAvatar(
                      backgroundColor: kPinkColour,
                      child: Text(
                        '${i + 1}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: kPinkColour,
                  ),
                  title: Text(kWidgetNameList[i]),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

// child: ListView(
//   restorationId: 'list',
//   padding: const EdgeInsets.symmetric(vertical: 8),
//   children: [
//     for (int i = 1; i < kWidgetNameList.length; i++)
//       GestureDetector(
//         onTap: () {},
//         child: ListTile(
//           leading: ExcludeSemantics(
//             child: CircleAvatar(
//               child: Text('$i'),
//             ),
//           ),
//           title: Text(kWidgetNameList[i]),
//         ),
//       ),
//   ],
// ),
