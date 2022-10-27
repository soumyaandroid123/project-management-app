import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/values/values.dart';

class SearchBoxInput extends StatelessWidget {
  final String placeholder;

  final TextEditingController? controller;
  const SearchBoxInput({
    Key? key,
    required this.placeholder,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: GoogleFonts.lato(fontSize: 20, color: Colors.white),
      onTap: () {},
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(12.0),
        ),
        contentPadding: EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 15,
        ),
        prefixIcon: Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(FeatherIcons.search, color: Colors.white),
        ),
        suffixIcon: InkWell(
          onTap: () {
            controller!.text = "";
          },
          child: Icon(FontAwesomeIcons.solidTimesCircle,
              color: Colors.white70, size: 20),
        ),
        hintText: placeholder,
        hintStyle: GoogleFonts.lato(
            fontSize: 18,
            color: HexColor.fromHex("3C3E49")),
        filled: true,
        fillColor: AppColors.primaryBackgroundColor,
      ),
    );
  }
}
