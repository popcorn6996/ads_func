// ignore_for_file: public_member_api_docs, sort_constructors_first
class ChannelVideo {
  final String thumbnailUrl;
  final String profileUrl;
  final String title;
  final String channelName;
  final double views;
  final Duration videoDuration;
  final DateTime createdAt;
  ChannelVideo({
    required this.thumbnailUrl,
    required this.profileUrl,
    required this.title,
    required this.channelName,
    required this.views,
    required this.videoDuration,
    required this.createdAt,
  });
}
