import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:aid_employ/core/common/error_text.dart';
import 'package:aid_employ/core/common/loader.dart';
import 'package:aid_employ/features/auth/controlller/auth_controller.dart';
import 'package:aid_employ/firebase_options.dart';
import 'package:aid_employ/models/user_model.dart';
import 'package:aid_employ/router.dart';
import 'package:aid_employ/theme/pallete.dart';
import 'package:routemaster/routemaster.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  UserModel? userModel;

  void getData(WidgetRef ref, User data) async {
    userModel = await ref
        .watch(authControllerProvider.notifier)
        .getUserData(data.uid)
        .first;
    ref.read(userProvider.notifier).update((state) => userModel);
  }

  @override
  Widget build(BuildContext context) {
    return ref.watch(authStateChangeProvider).when(
          data: (data) => MaterialApp.router(
            debugShowCheckedModeBanner: false,
            title: 'Aid Employ App',
            theme: ref.watch(themeNotifierProvider),
            routerDelegate: RoutemasterDelegate(
              routesBuilder: (context) {
                if (data != null) {
                  getData(ref, data);
                  if (ref.watch(userProvider)!= null) {
                    return loggedInRoute;
                  }
                }
                print('Returning loggedOutRoute');
                return loggedOutRoute;
              },
            ),
            routeInformationParser: const RoutemasterParser(),
            builder: (context, child) {
              return Scaffold(
                body: child,
                floatingActionButton: FloatingActionButton(
                  onPressed: () {
                    Routemaster.of(context).push('/chat-bot');
                  },
                  child: const Icon(Icons.message),
                ),
              );
            },
          ),
          error: (error, stackTrace) => ErrorText(error: error.toString()),
          loading: () => const Loader(),
        );
  }
}