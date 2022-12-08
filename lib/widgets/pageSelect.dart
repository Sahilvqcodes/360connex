import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Apis/Dashboard/models/congressList_model.dart';

class PageSelect extends StatefulWidget {
  int? pageLength;

  PageSelect({Key? key, this.pageLength}) : super(key: key);

  @override
  State<PageSelect> createState() => _PageSelectState();
}

class _PageSelectState extends State<PageSelect> {
  List pageValue = [];
  // double? _pageLength;
  void initState() {
    // _pageLength =widget.pageLength!/10;
    List.generate((widget.pageLength! / 10).toInt() + 1, (index) {
      pageValue.add(index + 1);
    });
    super.initState();
  }

  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit(item) {
    Navigator.pop(context, item);
  }

  @override
  Widget build(BuildContext context) {
    // _selectedItems = widget.selectedItems;
    // print(_selectedItems.contains(LanguageModel(code: 'en', name: 'English')));

    return AlertDialog(
      title: const Text('Select Page'),
      content: SingleChildScrollView(
        child: ListBody(
          children: pageValue
              .map((item) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          _submit(item);
                        },
                        child: ListTile(
                          leading: Text(
                            "${item}",
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ))
              .toList(),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _cancel,
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
