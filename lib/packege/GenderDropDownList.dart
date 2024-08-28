import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';
import 'package:drop_down_list/drop_down_list.dart';
import 'package:medshare/generated/l10n.dart';

class drop_down_list extends StatefulWidget {
  final TextEditingController textEditingController;
  final String title;
  final String hint;
  final bool isCitySelected;
  final List<SelectedListItem>? datalist;

  const drop_down_list({
    required this.textEditingController,
    required this.title,
    required this.hint,
    required this.isCitySelected,
    this.datalist,
    Key? key,
  }) : super(key: key);

  @override
  _drop_down_listState createState() => _drop_down_listState();
}

class _drop_down_listState extends State<drop_down_list> {
  /// This is on text changed method which will display on city text field on changed.
  void onTextFieldTap() {
    DropDownState(
      DropDown(
        isDismissible: true,
        bottomSheetTitle:  Text(
          S.of(context).gender,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        submitButtonChild: const Text(
          'Done',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        clearButtonChild: const Text(
          'Clear',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        data: widget.datalist ?? [],
        selectedItems: (List<dynamic> selectedList) {
          print(selectedList.indexed);
          List<String> list = [];
          for (var item in selectedList) {
            if (item is SelectedListItem) {
              list.add(item.name);
              widget.textEditingController.text = item.name;
            }
          }
         // showSnackBar(list.toString());
        },
        enableMultipleSelection: false,
      ),
    ).showModal(context);
  }

  void showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       // Text(widget.title),
        // const SizedBox(
        //   height: 5.0,
        // ),
        TextFormField(
          cursorHeight: 0,
          keyboardType: TextInputType.none,
          controller: widget.textEditingController,
          cursorColor: Colors.black,
          onTap: widget.isCitySelected
              ? () {
                  FocusScope.of(context).unfocus();
                  onTextFieldTap();
                }
              : null,
          decoration: InputDecoration(
            filled: true,
            fillColor: Color.fromRGBO(223, 225, 227, 0.612),
            contentPadding: const EdgeInsets.only(left: 15, bottom: 0, top: 0, right: 15),
            hintText: widget.textEditingController.text == ""? widget.hint : widget.textEditingController.text ,
            suffixIcon: Icon(Icons.arrow_drop_down,size: 40,),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(17.0),
              ),
            ),
          ),
        ),
        
      ],
    );
  }
}