import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:uas/model/dosen.dart';
import 'package:uas/screen/edit/components/default_dropdown_widget.dart';
import 'package:uas/screen/edit/components/default_textfield_widget.dart';
import 'package:uas/screen/utils/context_ext.dart';

class EditScreen extends StatefulWidget {
  final Dosen? dosen;
  const EditScreen({Key? key, this.dosen}) : super(key: key);

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    final Size size = context.mediaSize;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            widget.dosen != null ? 'Edit Data' : 'Add Data',
            style: const TextStyle(color: Colors.black),
          )),
      body: FormBuilder(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            children: [
              Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DefaultTextFieldWdiget(
                        id: 'name',
                        labelText: 'Name',
                        initialValue: widget.dosen?.name,
                      ),
                      DefaultDropdownWidget(
                        id: 'rumpun',
                        items: const ['test1', 'test2'],
                        labelText: 'Rumpun',
                        initialValue: widget.dosen?.rumpun,
                      ),
                      DefaultDropdownWidget(
                        id: 'progStud',
                        items: const ['test3', 'test4'],
                        labelText: 'Program Studi',
                        initialValue: widget.dosen?.programStudy,
                      ),
                      DefaultTextFieldWdiget(
                        id: 'email',
                        labelText: 'Email',
                        validators: [FormBuilderValidators.email()],
                        initialValue: widget.dosen?.email,
                      )
                    ],
                  )),
              Expanded(
                  child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: SizedBox(
                    width: size.width,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () => _onClick(),
                      style: ButtonStyle(
                          elevation: MaterialStateProperty.all(0),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))),
                      child: const Text('Submit'),
                    ),
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }

  _onClick() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      final dosen = widget.dosen;
      var value = _formKey.currentState!.value;
      var name = value['name'];
      var rumpun = value['rumpun'];
      var programStudy = value['progStud'];
      var email = value['email'];
      var newDosen = Dosen(
          id: 0,
          dosenId: 'Dosen001',
          name: name,
          rumpun: rumpun,
          programStudy: programStudy,
          email: email);

      if (dosen != null) {
        newDosen.id = dosen.id;
        newDosen.dosenId = dosen.dosenId;
      }
    }
  }
}
