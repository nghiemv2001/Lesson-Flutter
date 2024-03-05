import 'package:flutter/material.dart';

import '../model/item_work.dart';
import 'app_bar.dart';

class UpdateWork extends StatefulWidget {
  const UpdateWork({required this.data, required this.indexUpdate, required this.dataWorks,super.key});
final ItemWork data;
final int indexUpdate;
final List<ItemWork> dataWorks;
  @override
  State<UpdateWork> createState() => _UpdateWorkState();
}

class _UpdateWorkState extends State<UpdateWork> {
  late TextEditingController _textControllerName;
  late TextEditingController _textControllerDescription;
  @override
  void initState() {
    super.initState();
    _textControllerName = TextEditingController(text: widget.data.Name);
    _textControllerDescription = TextEditingController(text: widget.data.Description);
  }
  @override
  Widget build(BuildContext context) {
    String _name = widget.data.Name;
  String _description = widget.data.Description;

    return Scaffold(
        appBar: AppBarUpdateWork(),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                  controller: _textControllerName,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Tiêu đề không thể bỏ trống!';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF262626),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Tiêu đề',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.2)),
                    fillColor: const Color(0xFFFAFAFA),
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xFF3797EF),
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color(0xFF000000).withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color(0xFF000000).withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color(0xFF000000).withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.redAccent,
                        width: 1,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xFF3797EF),
                        width: 1,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    debugPrint('Tên đăng nhập - onChanged: $value');
                    _name = value;
                    },
                  onSaved: (value) {
                    _name = value!;
                  },
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: _textControllerDescription,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Nội dung không được để trống';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.next,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Color(0xFF262626),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Nội dung',
                    hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(0.2)),
                    fillColor: const Color(0xFFFAFAFA),
                    filled: true,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 8),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xFF3797EF),
                        width: 1,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color(0xFF000000).withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color(0xFF000000).withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide(
                        color: const Color(0xFF000000).withOpacity(0.1),
                        width: 1,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Colors.redAccent,
                        width: 1,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        color: Color(0xFF3797EF),
                        width: 1,
                      ),
                    ),
                  ),
                  onChanged: (value) {
                    debugPrint('Nội dung - onChanged: $value');
                    _description = value;
                    },
                  onSaved: (value) {
                    _description = value!;
                  },
                ),
              ),
              SizedBox(height: 20,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  onPressed: () {
                   if(_name != null && _description != null){
                     widget.dataWorks[widget.indexUpdate] = ItemWork(Name: _name, Description: _description);
                  Navigator.pop(context);
                   }
                  },
                  onLongPress: () {},
                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Lưu'),
                ),
              ),
            ],
          ),
        )
    );
  }

}
