import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);
//  final String image_url "https://www.bing.com/images/search?view=detailV2&ccid=3noXYOKN&id=3B6818CB98903E3FD280783704FB9235BCD3F227&thid=OIP.3noXYOKNLhHk9BhAdTDYCgHaLH&mediaurl=https%3a%2f%2fwww.hawtcelebs.com%2fwp-content%2fuploads%2f2020%2f05%2ftaylor-swift-in-glamour-magazine-march-2014-2.jpg&exph=1800&expw=1200&q=taylor+swift&simid=608003249933798590&ck=C7FB3C8F4AA0B6E1A08909C6309BCB14&selectedIndex=11&FORM=IRPRST";
  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://avatars.githubusercontent.com/u/12619420?s=460&u=26db98cbde1dd34c7c67b85c240505a436b2c36d&v=4";

    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountEmail: Text("anshdongre69@gmail.com"),
                  accountName: Text("Ansh Dongre"),
                  currentAccountPicture:
                      CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
                )),
            ListTile(
                leading: Icon(CupertinoIcons.home, color: Colors.white),
                title: Text(
                  "Home",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
            ListTile(
                leading:
                    Icon(CupertinoIcons.profile_circled, color: Colors.white),
                title: Text(
                  "Profile",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )),
            ListTile(
                leading: Icon(CupertinoIcons.mail, color: Colors.white),
                title: Text(
                  "Mail me",
                  textScaleFactor: 1.2,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
