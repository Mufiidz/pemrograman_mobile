import 'package:flutter/material.dart';
import 'package:uas/model/dosen.dart';
import 'package:uas/screen/edit/edit_screen.dart';
import 'package:uas/screen/utils/app_route.dart';
import 'package:uas/screen/utils/context_ext.dart';

class ItemData extends StatelessWidget {
  final Dosen dosen;
  final Function() onDismissed;
  final Function() onCancel;
  const ItemData(
      {Key? key,
      required this.dosen,
      required this.onDismissed,
      required this.onCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      direction: DismissDirection.startToEnd,
      onDismissed: (direction) {
        onDismissed;
        context.snackbar.showSnackBar(SnackBar(
          content: Text('Deleted ${dosen.name}'),
          backgroundColor: Colors.redAccent,
          action: SnackBarAction(
            label: 'Cancel',
            onPressed: () => onCancel,
            textColor: Colors.white,
          ),
        ));
      },
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: InkWell(
          onTap: () => AppRoute.to(EditScreen(
            dosen: dosen,
          )),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dosen.dosenId,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        dosen.name,
                        textScaleFactor: 1,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
                    Text(dosen.rumpun),
                    Text(dosen.programStudy),
                  ],
                )),
                Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(dosen.email)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
