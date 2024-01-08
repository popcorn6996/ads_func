import 'package:flutter/material.dart';

class Chips extends StatelessWidget {
  const Chips({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> chips = [
      'All',
      'public pranks',
      'gaming',
      'extreme',
      'internet culture',
      'expensive food',
      'youtube reactions'
    ];
    return SizedBox(
      height: 50,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: chips.length,
          itemBuilder: (ctx, i) {
            return Row(
                children: chips
                    .map((e) => Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Chip(label: Text(e))))
                    .toList());
          }),
    );
  }
}
