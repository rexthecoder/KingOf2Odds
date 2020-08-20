// import 'package:flutter/material.dart';


// class Routes {
//   static const emailPasswordSignInPage = '/email-password-sign-in-page';
//   static const editJobPage = '/edit-job-page';
//   static const entryPage = '/entry-page';
// }

// class Router {
//   static Route<dynamic> onGenerateRoute(RouteSettings settings) {
//     final args = settings.arguments;
//     switch (settings.name) {
//       case Routes.emailPasswordSignInPage:
//         return MaterialPageRoute<dynamic>(
//           builder: (_) => EmailPasswordSignInPage(onSignedIn: args),
//           settings: settings,
//           fullscreenDialog: true,
//         );
//       case Routes.editJobPage:
//         return MaterialPageRoute<dynamic>(
//           builder: (_) => EditJobPage(job: args),
//           settings: settings,
//           fullscreenDialog: true,
//         );
//       case Routes.entryPage:
//         final Map<String, dynamic> mapArgs = args;
//         final Job job = mapArgs['job'];
//         final Entry entry = mapArgs['entry'];
//         return MaterialPageRoute<dynamic>(
//           builder: (_) => EntryPage(job: job, entry: entry),
//           settings: settings,
//           fullscreenDialog: true,
//         );
//       default:
//         // TODO: Throw
//         return null;
//     }
//   }
// }
