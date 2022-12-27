import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            const SliverAppBar(
              floating: true,
              snap: true,
              title: Text("About Us"),
              backgroundColor: Color(0xFF89B0AE),
            ),
          ],
          body: SingleChildScrollView(
            child: Column(
              children: [
                // logo
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 20, 20, 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/icons/logo-2.png',
                      // width: size.width,
                      height: size.height * 0.2,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // description
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  child:
                      // const Text(
                      // "Aplikasi Exum 360° merupakan sebuah platform dimana user dapat mengunjungi museum-museum di Indonesia secara virtual atau disebut dengan aplikasi Virtual Tour Museum. Aplikasi ini menggunakan software 3DVista untuk pembuatan virtual tour nya dan framework Flutter sebagai codebase untuk mengembangkan aplikasi. Diharapkan aplikasi ini dapat berguna sebagai sarana promosi serta pengenalan budaya dan sejarah Indonesia ke masyarakat terutama generasi muda.",
                      //   textAlign: TextAlign.center,
                      // style: TextStyle(
                      //   color: Color(0xFF444444),
                      //   fontFamily: "Cera Round Pro 2",
                      //   fontSize: 16,
                      //   fontWeight: FontWeight.w400,
                      //   height: 1.5,
                      // ),
                      // ),
                      RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        color: Color(0xFF444444),
                        fontFamily: "Cera Round Pro 2",
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.5,
                      ),
                      children: [
                        TextSpan(
                          text:
                              'Aplikasi Exum 360° merupakan sebuah platform dimana user dapat mengunjungi museum-museum di Indonesia secara virtual atau disebut dengan aplikasi Virtual Tour Museum. Aplikasi ini menggunakan software 3DVista untuk pembuatan virtual tour nya dan framework Flutter sebagai codebase untuk mengembangkan aplikasi. Diharapkan aplikasi ini dapat berguna sebagai sarana promosi serta pengenalan budaya dan sejarah Indonesia ke masyarakat terutama generasi muda.',
                        ),
                      ],
                    ),
                  ),
                ),

                // Our team
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 10),
                  // color: Colors.amber,
                  child: const Text(
                    "Our Team",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  height: 5,
                  width: 100,
                  color: const Color(0xFFBEE3DB),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  // color: Colors.amber,
                  child: Column(
                    children: [
                      OurTeamDetail(
                        size: size,
                        image: 'user.png',
                        name: 'Jennifer Oentoro',
                        status: 'Project Leader',
                      ),
                      OurTeamDetail(
                        size: size,
                        image: 'user.png',
                        name: 'Clarissa Angelia',
                        status: 'Secretary',
                      ),
                      OurTeamDetail(
                        size: size,
                        image: 'user.png',
                        name: 'Eric Tedja',
                        status: 'Member',
                      ),
                      OurTeamDetail(
                        size: size,
                        image: 'user.png',
                        name: 'Jeremy Dion P.',
                        status: 'Member',
                      ),
                      OurTeamDetail(
                        size: size,
                        image: 'user.png',
                        name: 'Juan Christopher R. T.',
                        status: 'Member',
                      ),
                      OurTeamDetail(
                        size: size,
                        image: 'user.png',
                        name: 'Wendy Santoso',
                        status: 'Member',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class OurTeamDetail extends StatelessWidget {
  const OurTeamDetail({
    Key? key,
    required this.size,
    required this.image,
    required this.name,
    required this.status,
  }) : super(key: key);

  final Size size;
  final String image;
  final String name;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 125,
          height: 125,
          margin: const EdgeInsets.fromLTRB(20, 15, 20, 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/images/members/' + image,
              // width: size.width,
              height: size.height * 0.2,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 15, 20, 5),
          // color: Colors.amber,
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.fromLTRB(20, 5, 20, 15),
          // color: Colors.amber,
          child: Text(
            status,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
