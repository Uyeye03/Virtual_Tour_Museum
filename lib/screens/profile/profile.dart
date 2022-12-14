import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:virtual_tour_museum/screens/login/Screens/Login/login_screen.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late String value;
  late bool logged;

  @override
  void initState() {
    getSavedData().whenComplete(() async {
      if (value != null) {
        logged = true;
      } else {
        logged = false;
      }
    });
  }

  Future getSavedData() async {
    final storage = new FlutterSecureStorage();
    String? value = await storage.read(key: 'jwt');

    setState(() {
      value = value;
    });

    print(value);

    // final SharedPreferences sharedPreferences =
    //     await SharedPreferences.getInstance();

    // // debugPrint("nrp: ${sharedPreferences.getString('nrp')}");
    // setState(() {
    //   finalNRP = sharedPreferences.getString('nrp');
    //   userName = sharedPreferences.getString('nama');
    //   userEmail = sharedPreferences.getString('email');
    //   finalServer = sharedPreferences.getString('server');
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          const SizedBox(height: 30),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.fromLTRB(25, 50, 15, 10),
                padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xff0D1B2A),
                ),
                child: const Icon(
                  Icons.account_circle_outlined,
                  color: Colors.white,
                  size: 100.0,
                ),
              ),

              // if (finalNRP == null) ...[
              //   Text("Guest",
              //       style: TextStyle(
              //           fontSize: 24, fontWeight: FontWeight.w600),
              //       textAlign: TextAlign.start),
              //   Text(
              //     "guest@petra.ac.id",
              //     style: TextStyle(
              //       fontSize: 14,
              //     ),
              //     textAlign: TextAlign.start,
              //   )
              // ] else ...[
              const Text(
                  // userName!,
                  // userName ??
                  "Guest",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center),
              const Text(
                // userEmail!,
                // userEmail ??
                "guest@petra.ac.id",
                style: TextStyle(
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              // ],
              const SizedBox(height: 50)
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // if (logged) ...[
              //   // _buildCJ(),
              //   _buildSurvey(),
              //   _buildPrivacyPolicy(),
              //   _buildLogout()
              // ] else ...[
              _buildAbout(),
              _buildClearCache(),
              _buildPrivacyPolicy(),
              _buildLogin()
              // ]
            ],
          )
        ],
      ),
    ));
  }

  Widget _buildAbout() {
    //Citizen Journalism
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
      child: ElevatedButton.icon(
        icon: const Icon(Icons.book_outlined),
        style: ElevatedButton.styleFrom(
            elevation: 2,
            // backgroundColor: Color(0xffEEF6FF),
            primary: const Color(0xffEEF6FF),
            // foregroundColor: Color.fromARGB(255, 44, 55, 134),
            onPrimary: const Color(0xff0D1B2A),
            minimumSize: const Size.fromHeight(45),
            alignment: Alignment.centerLeft,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {
          //navigate ke citizen journalism
        },
        label: const Text(
          "About",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget _buildClearCache() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
      child: ElevatedButton.icon(
        icon: const Icon(Icons.delete_outline_outlined),
        style: ElevatedButton.styleFrom(
            elevation: 2,
            // backgroundColor: Color(0xffEEF6FF),
            primary: const Color(0xffEEF6FF),
            // foregroundColor: Color.fromARGB(255, 44, 55, 134),
            onPrimary: const Color(0xff0D1B2A),
            minimumSize: const Size.fromHeight(45),
            alignment: Alignment.centerLeft,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {
          // navigate ke survey
        },
        label: const Text(
          "Clear Cache",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget _buildPrivacyPolicy() {
    //Privacy and Policy
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
      child: ElevatedButton.icon(
        icon: const Icon(Icons.security_outlined),
        style: ElevatedButton.styleFrom(
            elevation: 2,
            // backgroundColor: Color(0xffEEF6FF),
            primary: const Color(0xffEEF6FF),
            // foregroundColor: Color.fromARGB(255, 44, 55, 134),
            onPrimary: const Color(0xff0D1B2A),
            minimumSize: const Size.fromHeight(45),
            alignment: Alignment.centerLeft,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {
          // navigate ke Privacy and Policy
        },
        label: const Text(
          "Privacy and Policy",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.black87,
          ),
        ),
      ),
    );
  }

  Widget _buildLogout() {
    //Logout
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
      child: ElevatedButton.icon(
        icon: const Icon(Icons.logout_rounded),
        style: ElevatedButton.styleFrom(
            elevation: 2,
            // backgroundColor: Color.fromARGB(255, 44, 55, 134),
            primary: const Color.fromARGB(255, 44, 55, 134),
            // foregroundColor: Color(0xffEEF6FF),
            onPrimary: const Color(0xffEEF6FF),
            minimumSize: const Size.fromHeight(45),
            alignment: Alignment.centerLeft,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {
          logout();
        },
        label: const Text(
          "Logout",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Future logout() async {
    final storage = FlutterSecureStorage();
    storage.delete(key: 'jwt');

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  Widget _buildLogin() {
    //Login
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
      child: ElevatedButton.icon(
        icon: const Icon(Icons.login_rounded),
        style: ElevatedButton.styleFrom(
            elevation: 2,
            // backgroundColor: Color.fromARGB(255, 44, 55, 134),
            primary: const Color(0xff0D1B2A),
            // foregroundColor: Color(0xffEEF6FF),
            onPrimary: const Color(0xffEEF6FF),
            minimumSize: const Size.fromHeight(45),
            alignment: Alignment.centerLeft,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            )),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => LoginScreen()));
        },
        label: const Text(
          "Login",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
