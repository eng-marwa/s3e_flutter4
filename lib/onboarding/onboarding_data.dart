import 'image_manager.dart';

class OnboardingData {
  final String title;
  final String body;
  final String svgImage;

  OnboardingData(this.title, this.body, this.svgImage);

  static List<OnboardingData> onboardingPagesData = [
    OnboardingData(
        'Listen Anywhere',
        '''Favorite tunes follow, anytime, anywhere.
  Worry-free offline playback for your journey.''',
        ImageManager.onboardingImg1),
    OnboardingData(
        'Playback',
        '''Pristine sound quality for absolute
clarity in audio playback.''',
        ImageManager.onboardingImg2),
    OnboardingData(
        'Music For You',
        '''Curated weekly playlists tailored to
your music listening history.''',
        ImageManager.onboardingImg3)
  ];
}
