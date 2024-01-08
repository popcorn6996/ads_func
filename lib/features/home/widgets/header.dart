// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ads_func/theme/spectrum.dart';
import 'package:flutter/material.dart';

import '../../../core/commons/custom_textformfield.dart';

class Header extends StatefulWidget {
  final TextEditingController searchController;
  const Header({
    Key? key,
    required this.searchController,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.segment),
          ),
          const SizedBox(width: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              'assets/images/youtube2.jpg',
              height: 30,
            ),
          ),
          const SizedBox(width: 5),
          const Text('YOUTUBE'),
          Container(
            width: 500,
            height: 100,
            margin: const EdgeInsets.only(top: 10),
            child: CustomTextFormField(
                height: 50,
                controller: widget.searchController,
                fillColor: Spectrum.blackColor2,
                hintText: 'Search',
                labelText: "",
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Search cannot be Empty';
                  }
                  return null;
                }),
          ),
          Container(
              height: 45,
              width: 45,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Spectrum.greyColor2),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.mic,
                    color: Spectrum.blackColor,
                  ))),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_roll_sharp)),
                IconButton(
                    onPressed: () {}, icon: const Icon(Icons.notification_add)),
                const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('assets/images/user1.jpg'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
