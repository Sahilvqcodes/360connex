import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../Models/brandList_model.dart';

class MultiSelect extends StatefulWidget {
  final List<Records> brands;
  // final List<String> subBrands;
  final RxList<Records> selectedItems;
  final RxList<Records> brandsFocus;
  const MultiSelect({
    Key? key,
    required this.brands,
    required this.selectedItems,
    required this.brandsFocus,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MultiSelectsState();
}

class _MultiSelectsState extends State<MultiSelect> {
  // this variable holds the selected items
  RxList<Records> _selectedItems = RxList<Records>([]);
  RxList<Records> _brandsFocus = RxList<Records>([]);

  void initState() {
    _brandsFocus = widget.brandsFocus;
    _selectedItems = widget.selectedItems;
    print("widget.brands ${widget.brands}");
    super.initState();
  }

// This function is triggered when a checkbox is checked or unchecked
  void _itemChange(Records itemValue, bool isSelected) {
    if (isSelected) {
      if (itemValue.name == "MM Portfolio" ||
          itemValue.name == "Leukemia-Lymphoma" ||
          itemValue.name == "Prostate Franchise") {
        _selectedItems.add(itemValue);
      } else {
        _brandsFocus.add(itemValue);
        _selectedItems.add(itemValue);
      }
    } else {
      if (itemValue.name == "MM Portfolio" ||
          itemValue.name == "Leukemia-Lymphoma" ||
          itemValue.name == "Prostate Franchise") {
        _selectedItems.remove(itemValue);
      } else {
        _brandsFocus.remove(itemValue);
        _selectedItems.remove(itemValue);
      }
    }
  }

  // this function is called when the Cancel button is pressed
  void _cancel() {
    print(_selectedItems);
    // setState(() {});
    Navigator.pop(context);
  }

// this function is called when the Submit button is tapped
  void _submit() {
    Navigator.pop(context, _selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    // _selectedItems = widget.selectedItems;
    // print(_selectedItems.contains(LanguageModel(code: 'en', name: 'English')));

    return AlertDialog(
      title: const Text('Select Brands'),
      content: SingleChildScrollView(
        child: Obx(
          () => ListBody(
            children: widget.brands
                .map((item) => Column(
                      children: [
                        CheckboxListTile(
                          activeColor: Theme.of(context).colorScheme.primary,
                          value: _selectedItems.contains(item),
                          title: Text(item.name!),
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (isChecked) =>
                              _itemChange(item, isChecked!),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: ListBody(
                            children: item.kOLFocusMastersR!.records!
                                .map((item) => Column(
                                      children: [
                                        CheckboxListTile(
                                          activeColor: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                          value: _selectedItems.contains(item),
                                          title: Text(item.name!),
                                          controlAffinity:
                                              ListTileControlAffinity.leading,
                                          onChanged: (isChecked) =>
                                              _itemChange(item, isChecked!),
                                        ),
                                      ],
                                    ))
                                .toList(),
                          ),
                        ),
                      ],
                    ))
                .toList(),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: _cancel,
          child: const Text('Cancel'),
        ),
        ElevatedButton(
          onPressed: _submit,
          child: const Text('Submit'),
        ),
      ],
    );
  }
}
