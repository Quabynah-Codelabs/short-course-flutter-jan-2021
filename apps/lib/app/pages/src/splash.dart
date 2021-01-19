import 'package:apps/app/widgets/widgets.dart';
import 'package:apps/shared/shared.dart';
import 'package:circular_reveal_animation/circular_reveal_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

/// splash -> welcome page for all users (guest & authenticated)
/// allows user authentication using google sign in
class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;
  bool _showSplash = true, _isLoading = false;
  ThemeData kTheme;

  Future<void> _renderSplashAnimation() async {
    await Future.delayed(kSplashDuration); // delay UI

    /// toggle splash visibility
    _showSplash = !_showSplash;
    if (mounted) setState(() {});

    /// perform reveal animation
    await _animationController.forward();
  }

  @override
  void initState() {
    super.initState();

    /// setup animation & animation controller
    _animationController =
        AnimationController(vsync: this, duration: kRevealDuration);
    _animation = CurvedAnimation(
      parent: _animationController,
      reverseCurve: Curves.easeOut,
      curve: Curves.easeIn,
    );

    /// render splash animation
    _renderSplashAnimation();
  }

  @override
  Widget build(BuildContext context) {
    /// initialize size config
    SizeConfig().init(context);

    /// set theme
    kTheme = Theme.of(context);

    /// build UI
    return Scaffold(body: _showSplash ? _buildSplash() : _buildAuth());
  }

  /// render splash screen
  Widget _buildSplash() => Container(
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        color: kTheme.colorScheme.primary,
        child: Center(
          child: Icon(
            kAppIcon,
            size: kSpacingX120,
            color: kTheme.colorScheme.onPrimary,
          ),
        ),
      );

  /// render authentication UI
  Widget _buildAuth() => CircularRevealAnimation(
        animation: _animation,
        centerAlignment: Alignment.center,
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          padding: const EdgeInsets.symmetric(horizontal: kSpacingX24),
          child: AnimationLimiter(
            child: AnimationConfiguration.synchronized(
              duration: kSlideDuration,
              child: SlideAnimation(
                verticalOffset: kSlideOffset,
                child: FadeInAnimation(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Icon(kAppIcon,
                              size: kTheme.textTheme.headline4.fontSize),
                          SizedBox(width: kSpacingX12),
                          Expanded(
                            child: Text(
                              kAppName,
                              style: kTheme.textTheme.headline4,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: kSpacingX8),
                      Text(
                        'Let\'s get you set up for a wonderful news reading experience',
                        style: kTheme.textTheme.bodyText2,
                        textAlign: TextAlign.start,
                      ),
                      SizedBox(height: kSpacingX120),
                      PrimaryButton(
                        label: 'Continue with Google',
                        onPressed: () {
                          /// todo -> implement google auth
                          context.navigator
                            ..pop()
                            ..pushTopicPickerPage();
                        },
                        isLoading: _isLoading,
                      ),
                      PrimaryButton(
                        label: 'Sign up with Email',
                        onPressed: () => context.navigator
                          ..pop()
                          ..pushRegisterPage(),
                        isLoading: _isLoading,
                      ),
                      SecondaryButton(
                        label: 'Sign in anonymously',
                        onPressed: () => context.navigator
                          ..pop()
                          ..pushHomePage(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
}
