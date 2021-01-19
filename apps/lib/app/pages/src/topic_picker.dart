import 'package:apps/app/widgets/src/buttons.dart';
import 'package:apps/app/widgets/src/selectables.dart';
import 'package:apps/domain/models/models.dart';
import 'package:apps/shared/shared.dart';
import 'package:apps/shared/src/samples.dart';
import 'package:flutter/material.dart';

/// topic picker -> select topics of interest to show articles from
class TopicPickerPage extends StatefulWidget {
  @override
  _TopicPickerPageState createState() => _TopicPickerPageState();
}

class _TopicPickerPageState extends State<TopicPickerPage> {
  ThemeData kTheme;
  final List<BaseTopic> _topics = sampleTopics;
  final _selectedTopics = <String>[];

  @override
  Widget build(BuildContext context) {
    kTheme = Theme.of(context);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          /// content
          Positioned.fill(
            top: SizeConfig.screenHeight * 0.1,
            left: kSpacingX24,
            right: kSpacingX24,
            child: Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose your interests',
                    style: kTheme.textTheme.headline4,
                  ),
                  SizedBox(height: kSpacingX4),
                  Text(
                    kInterestHelperText,
                    style: kTheme.textTheme.bodyText2,
                  ),
                  SizedBox(height: kSpacingX24),
                  Expanded(
                    child: GridView.builder(
                      padding: EdgeInsets.only(bottom: kSpacingX48),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        mainAxisSpacing: kSpacingX24,
                        crossAxisSpacing: kSpacingX16,
                        childAspectRatio: 9 / 16,
                      ),
                      itemBuilder: (_, index) {
                        var topic = _topics[index];
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CheckableImageCard(
                              imageUrl: topic.imageUrl,
                              onChecked: (checked) {
                                _selectedTopics.update(topic.id);
                                logger.d('Selected topics -> $_selectedTopics');
                                setState(() {});
                              },
                            ),
                            SizedBox(height: kSpacingX8),
                            Text(topic.title),
                          ],
                        );
                      },
                      shrinkWrap: true,
                      itemCount: _topics.length,
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// todo -> save user topics to profile
          Positioned(
            bottom: kSpacingNone,
            left: kSpacingNone,
            right: kSpacingNone,
            child: AnimatedOpacity(
              duration: kSheetDuration,
              opacity: _selectedTopics.isEmpty ? 0 : 1,
              child: PrimaryButton(
                label: 'Next',
                onPressed: () => context.navigator
                  ..pop()
                  ..pushHomePage(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
