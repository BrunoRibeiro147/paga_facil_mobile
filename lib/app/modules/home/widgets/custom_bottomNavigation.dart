import 'package:feather_icons_flutter/feather_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomBottomNavigation extends StatefulWidget {
  final Function callback;

  CustomBottomNavigation({Key key, this.callback}) : super(key: key);

  @override
  _CustomBottonNavigationState createState() => _CustomBottonNavigationState();
}

class _CustomBottonNavigationState extends State<CustomBottomNavigation> {
  int _selectedIndex = 1;

  var textStyle =
      GoogleFonts.montserrat(fontSize: 12, fontWeight: FontWeight.w500);

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.callback(index);
  }

  _bottomNavigationItem({icon, title, index}) {
    return BottomNavigationBarItem(
      icon: _selectedIndex == index
          ? Icon(
              icon,
              color: Theme.of(context).buttonColor,
            )
          : Icon(
              icon,
            ),
      title: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          title,
          style: textStyle,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 15,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          _bottomNavigationItem(
              title: 'Simulações', icon: FeatherIcons.clipboard, index: 0),
          _bottomNavigationItem(
              title: 'Cartões', icon: FeatherIcons.creditCard, index: 1),
          _bottomNavigationItem(
              title: 'Pagamentos', icon: FeatherIcons.dollarSign, index: 2),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Theme.of(context).buttonColor,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTap,
        backgroundColor: Colors.transparent,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        elevation: 0,
      ),
    );
  }
}
