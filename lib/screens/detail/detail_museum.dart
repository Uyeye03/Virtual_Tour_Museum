import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:virtual_tour_museum/models/museum.dart';
import 'package:virtual_tour_museum/screens/detail/detail_view_museum.dart';
import 'package:virtual_tour_museum/widgets/comment_card.dart';

class DetailMuseum extends StatefulWidget {
  final Museum museum;

  const DetailMuseum({Key? key, required this.museum}) : super(key: key);

  @override
  State<DetailMuseum> createState() => _DetailMuseumState();
}

class _DetailMuseumState extends State<DetailMuseum> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // detail header
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/' + widget.museum.getGambarUtama(),
                        width: size.width,
                        height: size.height * 0.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // back button
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white.withOpacity(0.6),
                              ),
                              child: const Icon(
                                Icons.arrow_back_ios_new_rounded,
                                color: Colors.blue,
                              ),
                            ),
                          ),

                          // favorite button
                          Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.6),
                            ),
                            child: const Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.blue,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

              // museum name, city and rating
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // nama museum
                              Text(
                                widget.museum.getNama(),
                                style: const TextStyle(
                                  fontFamily: "Cera Round Pro 2",
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                              const SizedBox(height: 5),

                              // kota museum
                              Row(
                                children: [
                                  const Icon(
                                    Icons.location_on,
                                    color: Color(0xFF555B6E),
                                  ),
                                  const SizedBox(width: 5),
                                  Text(
                                    widget.museum.getAlamatKota(),
                                    style: const TextStyle(
                                      color: Color(0xFF89B0AE),
                                      fontFamily: "Cera Round Pro 2",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),

                        // rating museum
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 20,
                              ),
                              Text(
                                widget.museum.getRating().toString(),
                                style: const TextStyle(
                                  fontFamily: "Cera Round Pro 2",
                                  fontWeight: FontWeight.w700,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // museum description
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 2.5,
                      width: 50,
                      color: const Color(0xFFFFD6BA),
                    ),
                    const SizedBox(height: 5),
                    ReadMoreText(
                      widget.museum.getDeskripsi(),
                      trimCollapsedText: 'Read more',
                      trimExpandedText: 'Show less',
                      colorClickableText: const Color(0xFF89B0AE),
                      trimMode: TrimMode.Length,
                      trimLength: 120,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: Color(0xFF444444),
                        fontFamily: "Cera Round Pro 2",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // museum address
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Address",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 2.5,
                      width: 50,
                      color: const Color(0xFFFFD6BA),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      widget.museum.getAlamatLengkap(),
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        color: Color(0xFF444444),
                        fontFamily: "Cera Round Pro 2",
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 15),

              // museum comments
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Comments",
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      height: 2.5,
                      width: 50,
                      color: const Color(0xFFFFD6BA),
                    ),

                    const SizedBox(height: 10),

                    // input comments
                    Row(
                      children: [
                        // text field
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.grey.shade100,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Input your comment",
                                hintStyle: TextStyle(
                                  fontFamily: "Cera Round Pro 2",
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.6),
                                ),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 10),

                        // button submit
                        Container(
                          padding: const EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade400,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.shade400.withOpacity(0.6),
                                offset: Offset.zero,
                                spreadRadius: 2.5,
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: const Icon(
                            Icons.comment,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),

                    // view comments
                    ListView.builder(
                      itemCount: widget.museum.getListKomentar().length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.symmetric(vertical: 12.0),
                          child: CommentCard(
                            komentar: widget.museum.getListKomentar()[index],
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // button open virtual tour
      bottomNavigationBar: SizedBox(
        height: 100,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ViewMuseum(
                  title: widget.museum.getNama(),
                  museumUrl: widget.museum.getLinkVirtualTour(),
                ),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.all(20),
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xFF89B0AE),
              borderRadius: BorderRadius.circular(12),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF89B0AE).withOpacity(0.5),
                  blurRadius: 10,
                  spreadRadius: 5,
                  offset: Offset.zero,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Open Virtual Tour",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: "Cera Round Pro 2",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 15),
                Icon(
                  Icons.camera_outlined,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
