import 'package:flutter/material.dart';

import '../../constants/app_colors.dart';
import '../../l10n/app_localizations.dart';

/// About tab: version, license, content, and credits. Ports `AboutFragment`.
class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  static const _version = '1.0.30';

  @override
  Widget build(BuildContext context) {
    final l = AppLocalizations.of(context)!;
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(l.aboutTitle,
                style: const TextStyle(fontSize: 48, color: AppColors.primaryDark)),
            Text('${l.buildVersion} $_version',
                style: const TextStyle(fontSize: 12, color: AppColors.primary)),
            const SizedBox(height: 8),
            Text(l.aboutOrganization,
                style: const TextStyle(fontSize: 12, color: AppColors.primary)),
            const SizedBox(height: 24),
            Text(l.aboutContent,
                style: const TextStyle(fontSize: 18, color: AppColors.primaryDark)),
            const SizedBox(height: 24),
            Text(l.creditsTitle,
                style: const TextStyle(fontSize: 18, color: AppColors.primaryDark)),
            const SizedBox(height: 8),
            const Text(
              'Individuals: Alex Porter, Alice Neubert, Brad Woodfin, Bryant Oblad, '
              'Cam Peterson, Cody Deskins, Dan Noland, Dane Oborn, Eric Evans, '
              'Keltson Howell, Micah Brown, Richard Macdonald, Scott Waddell, '
              'Terry Ott, Tod Robbins, Wylie Thomas.\n\n'
              'Organizations: Kempt Design LLC, Pony Express Productions, PublicNTP Inc., '
              'Rooster Glue Inc., Sixbucks Solutions.\n\n'
              'Projects: GPSTest Project, Knight Labs, NASA WorldWind, Open Location Code.',
              style: TextStyle(fontSize: 14, color: AppColors.primary),
            ),
          ],
        ),
      ),
    );
  }
}
