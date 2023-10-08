import 'package:chatapp/utils/sizes_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar(
      {Key? key,
      required this.searchController,
      required this.onChanged,
      this.onTap,
      required this.hint})
      : super(key: key);

  final TextEditingController searchController;
  final Function()? onTap;
  final Function(String)? onChanged;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return SearchBar(
   hintText: hint,
      onTap: onTap,
      onChanged: onChanged,
      controller: searchController,
    ).paddingSymmetric(
        horizontal: Dimens.marginExtraLarge, vertical: Dimens.margin);
  }
}
