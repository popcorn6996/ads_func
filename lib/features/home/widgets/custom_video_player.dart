import 'dart:math';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../../core/global_variables.dart';
import '../../../models/ads.dart';
import '../../../theme/spectrum.dart';

class CustomVideoPlayer extends StatefulWidget {
  const CustomVideoPlayer({super.key});

  @override
  State<CustomVideoPlayer> createState() => _CustomVideoPlayerState();
}

class _CustomVideoPlayerState extends State<CustomVideoPlayer> {
  VideoPlayerController? _adController;
  VideoPlayerController? _regularVideoController;

  bool _isFullScreen = false;
  Duration _position = Duration.zero;
  Duration _duration = Duration.zero;

  int currentIndex = 0;

  Future<void> _loadAds() async {
    Random random = Random();
    currentIndex = random.nextInt(ads.length);
    if (currentIndex < ads.length) {
      Ads currentAd = ads[currentIndex];
      _adController = VideoPlayerController.asset(currentAd.videoUrl);

      await _adController!.initialize();
      await _adController!.setVolume(1.0);
      setState(() {
        _adController!.play();
      });

      await Future.delayed(Duration(seconds: currentAd.videolength));

      _loadRegularVideo();
    } else {
      currentIndex = 0;
    }
  }

  Future<void> _loadRegularVideo() async {
    _regularVideoController =
        VideoPlayerController.asset('assets/videos/creed.mp4')
          ..initialize().then((value) {
            setState(() {
              _duration = _regularVideoController!.value.duration;
            });
            _regularVideoController!.play();
          });

    _regularVideoController!.addListener(() {
      setState(() {
        _position = _regularVideoController!.value.position;
      });
    });
  }

  @override
  initState() {
    super.initState();
    _loadAds();
  }

  void _adsTogglePlayPause() {
    setState(() {
      if (_adController!.value.isPlaying) {
        _adController!.pause();
      } else {
        _adController!.play();
      }
    });
  }

  void _togglePlayPause() {
    setState(() {
      if (_regularVideoController!.value.isPlaying) {
        _regularVideoController!.pause();
      } else {
        _regularVideoController!.play();
      }
    });
  }

  void _toggleFullScreen() {
    setState(() {
      _isFullScreen = !_isFullScreen;
    });
  }

  @override
  void dispose() {
    _adController!.dispose();
    _regularVideoController!.dispose();
    super.dispose();
  }

  String formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return '$twoDigitMinutes:$twoDigitSeconds';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 400,
        width: 850,
        margin: const EdgeInsets.only(left: 40),
        decoration: BoxDecoration(
          border: Border.all(color: Spectrum.greyColor),
          borderRadius: BorderRadius.circular(20),
        ),
        child: _regularVideoController != null &&
                _regularVideoController!.value.isInitialized
            ? Stack(
                children: [
                  Center(
                    child: _regularVideoController!.value.isInitialized
                        ? AspectRatio(
                            aspectRatio:
                                _regularVideoController!.value.aspectRatio,
                            child: VideoPlayer(_regularVideoController!),
                          )
                        : const CircularProgressIndicator(),
                  ),
                  if (!_isFullScreen)
                    Positioned(
                      bottom: 16,
                      left: 16,
                      child: Row(
                        children: [
                          Text(
                            '${formatDuration(_position)} / ${formatDuration(_duration)}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const SizedBox(width: 8),
                          IconButton(
                            icon: Icon(
                              _regularVideoController!.value.isPlaying
                                  ? Icons.pause
                                  : Icons.play_arrow,
                            ),
                            onPressed: _togglePlayPause,
                          ),
                        ],
                      ),
                    ),
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: IconButton(
                      icon: Icon(
                        _isFullScreen
                            ? Icons.fullscreen_exit
                            : Icons.fullscreen,
                      ),
                      onPressed: _toggleFullScreen,
                    ),
                  ),
                ],
              )
            : Stack(children: [
                Center(
                  child: _adController!.value.isInitialized
                      ? AspectRatio(
                          aspectRatio: _adController!.value.aspectRatio,
                          child: VideoPlayer(_adController!),
                        )
                      : const CircularProgressIndicator(),
                ),
                if (!_isFullScreen)
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Row(
                      children: [
                        Text(
                          '${formatDuration(_position)} / ${formatDuration(_duration)}',
                          style: const TextStyle(fontSize: 16),
                        ),
                        const SizedBox(width: 8),
                        IconButton(
                          icon: Icon(
                            _adController!.value.isPlaying
                                ? Icons.pause
                                : Icons.play_arrow,
                          ),
                          onPressed: _adsTogglePlayPause,
                        ),
                      ],
                    ),
                  ),
                Positioned(
                    bottom: 16,
                    right: 16,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            _loadRegularVideo();
                          },
                          style: ButtonStyle(
                            side: MaterialStateProperty.all(
                                const BorderSide(color: Colors.blue)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Skip',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                        const SizedBox(width: 8),
                        IconButton(
                          icon: Icon(
                            _isFullScreen
                                ? Icons.fullscreen_exit
                                : Icons.fullscreen,
                          ),
                          onPressed: _toggleFullScreen,
                        ),
                      ],
                    ))
              ]));
  }
}
