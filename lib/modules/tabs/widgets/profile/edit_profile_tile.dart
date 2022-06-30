import 'package:flutter/material.dart';

import '../../../../core/utils/screen_size.dart';

class EditProfileTile extends StatelessWidget {
  const EditProfileTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = Theme.of(context).textTheme.bodyText1;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: screenWidth(context, dividedBy: 2.6),
          height: 40,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), color: Colors.white, borderRadius: BorderRadius.circular(3)),
          child: Center(child: Text('Editar Perfil', style: style?.copyWith(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black))),
        ),
        const SizedBox(
          width: 5,
        ),
        Container(
          width: screenWidth(context, dividedBy: 8.5),
          height: 40,
          decoration: BoxDecoration(border: Border.all(color: Colors.grey, width: 1), color: Colors.white, borderRadius: BorderRadius.circular(3)),
          child: const Center(child: Icon(Icons.arrow_drop_down, size: 30)),
        ),
      ],
    );
  }
}
