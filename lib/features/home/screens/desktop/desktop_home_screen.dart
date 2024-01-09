import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/global_variables.dart';
import '../../widgets/chips.dart';
import '../../widgets/header.dart';
import '../../widgets/thumbnail_and_title.dart';

class DesktopHomeScreen extends ConsumerStatefulWidget {
  const DesktopHomeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _DesktopHomeScreenState();
}

class _DesktopHomeScreenState extends ConsumerState<DesktopHomeScreen> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 15),
          child: Column(children: [
            Header(searchController: searchController),
            const SizedBox(height: 5),
            const Chips(),
            const SizedBox(height: 5),
            SizedBox(
              height: size.height,
              child: GridView.builder(
                  itemCount: channelVideos.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 15,
                      mainAxisExtent: 900,
                      mainAxisSpacing: 100),
                  itemBuilder: (ctx, i) {
                    return ThumbnailAndTitle(channelVideo: channelVideos[i]);
                  }),
            ),
          ]),
        ),
      ),
    );
  }
}
