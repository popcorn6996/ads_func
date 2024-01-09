import 'package:flutter/material.dart';
import 'package:routemaster/routemaster.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../../models/channel_video.dart';
import '../../../theme/spectrum.dart';

class ThumbnailAndTitle extends StatelessWidget {
  final ChannelVideo channelVideo;
  const ThumbnailAndTitle({
    Key? key,
    required this.channelVideo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final queryParams = {'data': channelVideo.title};

    navigateToVideoDetails(BuildContext context) {
      Routemaster.of(context)
          .push('/video-details', queryParameters: queryParams);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => navigateToVideoDetails(context),
          child: SizedBox(
              // height: 200,
              // width: 200,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    channelVideo.thumbnailUrl,
                    fit: BoxFit.cover,
                    height: 200,
                    width: 450,
                  ))),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 75,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage(channelVideo.profileUrl),
              ),
              const SizedBox(width: 10),
              SizedBox(
                height: 300,
                width: 230,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      channelVideo.title,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 5),
                    Text(
                      channelVideo.channelName,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(color: Spectrum.greyColor),
                    ),
                    const SizedBox(height: 5),
                    SizedBox(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '${channelVideo.views} views',
                            style: const TextStyle(color: Spectrum.greyColor),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            width: 5,
                            height: 5,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            timeago.format(
                              channelVideo.createdAt,
                              allowFromNow: true,
                              locale: 'en',
                            ),
                            style: const TextStyle(color: Spectrum.greyColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
