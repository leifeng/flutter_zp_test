import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  SearchBar({Key key, this.onChanged, this.onTap}) : super(key: key);
  final onChanged;
  final onTap;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 240,
          height: 35,
          decoration: BoxDecoration(
              color: Colors.black12,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10))),
          child: Align(
              alignment: Alignment.center,
              child: TextField(
                onChanged: onChanged,
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 14),
                  hintText: '简历名称',
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              )),
        ),
        Container(
            width: 40,
            height: 35,
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: GestureDetector(
              onTap: onTap,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            )),
      ],
    );
  }
}
