import 'package:flutter/material.dart';
import 'common_button.dart';

class TableHeaderWidget extends StatelessWidget {
  const TableHeaderWidget(
      {super.key,
      this.showSearch = false,
      this.onSearchQueryChanged,
      this.showAddButton = true,
      this.addButtonTitle,
      required this.onAddTap,
      this.onCrossTap,
      this.searchController,
      this.hintText = "Search",
      required this.searchQueryInput,
      required this.controller});

  final bool showSearch;
  final Function(String p1)? onSearchQueryChanged;
  final bool showAddButton;
  final String? addButtonTitle;
  final TextEditingController? searchController;
  final Function() onAddTap;
  final Function()? onCrossTap;
  final TextEditingController controller;
  final bool searchQueryInput;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            showSearch
                ? Expanded(
                    child: TextField(
                      textAlign: TextAlign.start,
                      cursorColor: Colors.black54,
                      controller: controller,
                      // UsersController.to.searchController.value,
                      onChanged: onSearchQueryChanged,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                      decoration: InputDecoration(
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color(0XFF667085),
                          size: 20,
                        ),
                        hintText: hintText,
                        suffixIcon: searchQueryInput
                            // UsersController.to.searchQueryInput.value
                            ? InkWell(
                                onTap: onCrossTap,
                                child: const Icon(Icons.close))
                            : null,
                        hintStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0XFF667085)),
                        border: InputBorder.none,
                      ),
                    ),
                  )
                : const SizedBox(),
            showAddButton
                ? const SizedBox(
                    width: 32,
                  )
                : const SizedBox(),
            showAddButton
                ? SizedBox(
                    height: 50,
                    child: CustomElevatedButton(
                      label: addButtonTitle ?? '+ Add',
                      width: 200,
                      onTap: onAddTap,
                    ))
                : const SizedBox(),
          ],
        ),
      ],
    );
  }
}
