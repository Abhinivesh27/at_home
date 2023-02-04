library at_home;

import 'package:flutter/material.dart';

class AThome extends StatefulWidget {
  final bool wantAppBar;
  final double appBarHeight;
  final Color appBarColor;

  final double roundness;
  final String title;
  final Color titleColor;
  final double titleSize;

  final bool wantSearch;
  final Widget body;
  final Color bgColor;

  AThome({
    super.key,
    this.wantAppBar = true,
    this.appBarHeight = 60,
    this.appBarColor = Colors.blue,
    this.roundness = 10,
    this.title = "ATmega",
    this.titleColor = Colors.white,
    this.titleSize = 14,
    this.wantSearch = true,
    required this.body,
    this.bgColor = Colors.black,
  });

  @override
  State<AThome> createState() => _AThomeState();
}

class _AThomeState extends State<AThome> {
  bool isSearchOpen = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: widget.wantAppBar ? widget.appBarHeight : 0,
        backgroundColor: widget.appBarColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(widget.roundness),
              bottomRight: Radius.circular(widget.roundness)),
        ),
        title: Text(
          widget.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          isSearchOpen
              ? Container(
                  padding: const EdgeInsets.only(right: 20),
                  width: MediaQuery.of(context).size.width * 0.4,
                  child: TextField(
                    cursorColor: Colors.white,
                    decoration: InputDecoration(
                      label: Text("Search"),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                        ),
                      ),
                      enabled: true,
                    ),
                  ),
                )
              : Container(),
          widget.wantSearch
              ? Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: IconButton(
                    iconSize: isSearchOpen ? 24 : 30,
                    onPressed: () {
                      setState(() {
                        isSearchOpen = !isSearchOpen;
                      });
                    },
                    icon: Icon(
                        isSearchOpen ? Icons.cancel_outlined : Icons.search),
                  ),
                )
              : Container(),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
