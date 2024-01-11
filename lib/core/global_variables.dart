import '../models/ads.dart';
import '../models/channel_video.dart';

List<Ads> ads = [
  Ads(id: '1', videoUrl: 'assets/videos/creed.mp4', videolength: 31),
  Ads(id: '2', videoUrl: 'assets/videos/blank.mp4', videolength: 5),
  Ads(id: '3', videoUrl: 'assets/videos/penny.mp4', videolength: 5),
  Ads(id: '4', videoUrl: 'assets/videos/earnings.mp4', videolength: 9),
  Ads(id: '5', videoUrl: 'assets/videos/video.mp4', videolength: 6),
  Ads(id: '6', videoUrl: 'assets/videos/money.mp4', videolength: 17),
];

List<ChannelVideo> channelVideos = [
  ChannelVideo(
    thumbnailUrl: 'assets/images/thumbnail.jpg',
    profileUrl: 'assets/images/user1.jpg',
    title: 'How to Add Ads Functionality to your applications',
    channelName: 'Creed Codes',
    views: 200,
    videoDuration: const Duration(minutes: 20),
    createdAt: DateTime.now(),
  ),
  ChannelVideo(
    thumbnailUrl: 'assets/images/max.jpg',
    profileUrl: 'assets/images/max.jpg',
    title: 'How to Add Ads Functionality to your applications',
    channelName: 'Creed Codes',
    views: 800,
    videoDuration: const Duration(minutes: 20),
    createdAt: DateTime.now().subtract(
      const Duration(days: 30),
    ),
  ),
  ChannelVideo(
    thumbnailUrl: 'assets/images/air.jpg',
    profileUrl: 'assets/images/air.jpg',
    title: 'How to Add Ads Functionality to your applications',
    channelName: 'Creed Codes',
    views: 632,
    videoDuration: const Duration(minutes: 20),
    createdAt: DateTime.now().subtract(
      const Duration(hours: 30),
    ),
  ),
  ChannelVideo(
    thumbnailUrl: 'assets/images/messi.jpg',
    profileUrl: 'assets/images/messi.jpg',
    title: 'How to Add Ads Functionality to your applications',
    channelName: 'Creed Codes',
    views: 90,
    videoDuration: const Duration(minutes: 20),
    createdAt: DateTime.now().subtract(
      const Duration(days: 365),
    ),
  ),
  ChannelVideo(
    thumbnailUrl: 'assets/images/chatgpt.jpg',
    profileUrl: 'assets/images/chatgpt.jpg',
    title: 'How to Add Ads Functionality to your applications',
    channelName: 'Creed Codes',
    views: 54,
    videoDuration: const Duration(minutes: 20),
    createdAt: DateTime.now().subtract(
      const Duration(seconds: 300000),
    ),
  ),
  ChannelVideo(
      thumbnailUrl: 'assets/images/ryan.jpg',
      profileUrl: 'assets/images/ryan.jpg',
      title: 'How to Add Ads Functionality to your applications',
      channelName: 'Creed Codes',
      views: 123,
      videoDuration: const Duration(minutes: 20),
      createdAt: DateTime.now()),
  ChannelVideo(
      thumbnailUrl: 'assets/images/math.jpg',
      profileUrl: 'assets/images/math.jpg',
      title: 'How to Add Ads Functionality to your applications',
      channelName: 'Creed Codes',
      views: 69,
      videoDuration: const Duration(minutes: 20),
      createdAt: DateTime.now()),
  ChannelVideo(
      thumbnailUrl: 'assets/images/pep.jpg',
      profileUrl: 'assets/images/pep.jpg',
      title: 'How to Add Ads Functionality to your applications',
      channelName: 'Creed Codes',
      views: 123,
      videoDuration: const Duration(minutes: 20),
      createdAt: DateTime.now()),
  ChannelVideo(
      thumbnailUrl: 'assets/images/chatgpt.jpg',
      profileUrl: 'assets/images/user1.jpg',
      title: 'How to Add Ads Functionality to your applications',
      channelName: 'Creed Codes',
      views: 321,
      videoDuration: const Duration(minutes: 20),
      createdAt: DateTime.now()),
  ChannelVideo(
      thumbnailUrl: 'assets/images/chatgpt.jpg',
      profileUrl: 'assets/images/user1.jpg',
      title: 'How to Add Ads Functionality to your applications',
      channelName: 'Creed Codes',
      views: 481,
      videoDuration: const Duration(minutes: 20),
      createdAt: DateTime.now()),
  ChannelVideo(
      thumbnailUrl: 'assets/images/ant.jpg',
      profileUrl: 'assets/images/ant.jpg',
      title: 'How to Add Ads Functionality to your applications',
      channelName: 'Creed Codes',
      views: 920,
      videoDuration: const Duration(minutes: 20),
      createdAt: DateTime.now()),
  ChannelVideo(
      thumbnailUrl: 'assets/images/barca.jpg',
      profileUrl: 'assets/images/barca.jpg',
      title: 'How to Add Ads Functionality to your applications',
      channelName: 'Creed Codes',
      views: 82,
      videoDuration: const Duration(minutes: 20),
      createdAt: DateTime.now()),
  ChannelVideo(
      thumbnailUrl: 'assets/images/son.jpg',
      profileUrl: 'assets/images/son.jpg',
      title: 'How to Add Ads Functionality to your applications',
      channelName: 'Creed Codes',
      views: 11,
      videoDuration: const Duration(minutes: 20),
      createdAt: DateTime.now()),
];
