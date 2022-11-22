import 'package:connex/Models/brandList_model.dart';
import 'package:connex/Models/congressList_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleSelect extends StatefulWidget {
  final List<CongressRecords> congress;

  const SingleSelect({
    Key? key,
    required this.congress,
  }) : super(key: key);

  @override
  State<SingleSelect> createState() => _SingleSelectState();
}

class _SingleSelectState extends State<SingleSelect> {
  RxList<CongressRecords> _CongressItems = RxList<CongressRecords>([]);
  void initState() {
    // _selectedItems = widget.congress;
    super.initState();
  }

  void _cancel() {
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit(CongressRecords item) {
    _CongressItems.add(item);
    print("_CongressItems $_CongressItems");
    Navigator.pop(context, _CongressItems);
  }

  @override
  Widget build(BuildContext context) {
    // _selectedItems = widget.selectedItems;
    // print(_selectedItems.contains(LanguageModel(code: 'en', name: 'English')));

    return AlertDialog(
      title: const Text('Select Congress'),
      content: SingleChildScrollView(
        child: ListBody(
          children: widget.congress
              .map((item) => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          _submit(item);
                        },
                        child: ListTile(
                          leading: Text(
                            item.labelC!,
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
