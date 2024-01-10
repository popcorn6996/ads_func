import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:routemaster/routemaster.dart';

import '../widgets/app_bar_header.dart';
import '../widgets/custom_video_player.dart';

class VideoDetails extends ConsumerStatefulWidget {
  const VideoDetails({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _VideoDetailsState();
}

class _VideoDetailsState extends ConsumerState<VideoDetails> {
  final TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final data = RouteData.of(context);
    final title = data.queryParameters['data'];
    return Scaffold(
      appBar: AppBarHeader(
        preferredHeight: 100,
        searchController: searchController,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CustomVideoPlayer(),
                      const SizedBox(height: 5),
                      Container(
                        margin: const EdgeInsets.only(left: 45),
                        child: Text(
                          title!,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
