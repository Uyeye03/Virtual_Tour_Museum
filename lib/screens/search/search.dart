import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:virtual_tour_museum/models/museum.dart';
import 'package:virtual_tour_museum/screens/detail/detail_museum.dart';

class SearchPage extends StatefulWidget {
  final List<Museum> museums;
  const SearchPage({Key? key, required this.museums}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  // list yang akan ditampilkan dan difilter
  List<Museum> display_list = [];

  // function untk update list
  void updateList(String value) {
    setState(() {
      display_list = widget.museums
          .where((element) =>
              element.nama.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    display_list = List.from(widget.museums);
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          const SliverAppBar(
            floating: true,
            snap: true,
            title: Text("Search"),
            backgroundColor: const Color(0xFF89B0AE),
          ),
        ],
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(
                "Search for a Museums",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 20),

              // input field
              TextField(
                onChanged: (value) => updateList(value),
                style: const TextStyle(
                  color: Color(0xFF555B6E),
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  hintText: "eg: Museum 10 November",
                  hintStyle: TextStyle(
                    fontFamily: "Cera Round Pro 2",
                    fontSize: 12,
                    color: Colors.black.withOpacity(0.6),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide.none,
                  ),
                  prefixIcon: const Icon(Icons.search),
                  prefixIconColor: const Color(0xFF555B6E),
                ),
              ),

              // display list museum
              Expanded(
                child: (display_list.isEmpty)
                    ? const Center(
                        child: Text(
                          "No result found",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    : ListView.builder(
                        itemCount: display_list.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailMuseum(
                                  museum: display_list[index],
                                ),
                              ),
                            );
                          },
                          child: ListTile(
                            contentPadding: const EdgeInsets.all(8),
                            title: Text(
                              display_list[index].getNama(),
                              style: const TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            subtitle: Text(display_list[index].getAlamatKota()),
                            trailing: const Icon(
                              Icons.chevron_right_rounded,
                              color: Color(0xFF555B6E),
                            ),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                'assets/images/' +
                                    display_list[index].getGambarUtama(),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
