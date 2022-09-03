import 'package:charity_finder/features/onboarding/ui/components/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  static const routeName = '/onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        actions: [
          TextButton(
            onPressed: () {},
            child: Row(
              children: const [
                Text("Pular"),
                Icon(Icons.chevron_right),
              ],
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: Carousel(),
            ),
            Flexible(
              flex: 1,
              child: Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Continuar"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
