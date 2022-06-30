import 'package:flutter/material.dart';

class CustomProfileAppbar extends StatelessWidget {
  const CustomProfileAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style = Theme.of(context).textTheme.bodyText1;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.person_add_alt_outlined,
                    color: Colors.black,
                    size: 29,
                  )),
              Image.asset(
                'assets/money.png',
                width: 25,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'super_user',
                style: style?.copyWith(fontWeight: FontWeight.w900, fontSize: 17, color: Colors.black),
              ),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.black,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.remove_red_eye_outlined, size: 29),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.menu, size: 29)
            ],
          ),
        ],
      ),
    );
  }
}
