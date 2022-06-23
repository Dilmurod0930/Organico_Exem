import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:organico_exem_/Screen/Auth/Cubit/auth_cubit.dart';
import 'package:organico_exem_/router/routes.dart';

void main() async {
  await Hive.initFlutter();
  // Hive.registerAdapter(ModelAdapter());
  // await OrganicoService.openBox();
  WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(
    MultiBlocProvider(providers: [
      BlocProvider(create: (context) => AuthCubit()),
      // BlocProvider(create: (context) => HomeCubit()),
      // BlocProvider(create: (context) => ChatCubit()),
      // BlocProvider(create: (context) => ChangePasswordCubit()),
      // BlocProvider(create: (context) => InfoCubit()),
      // BlocProvider(create: (context) => HomeScreenCubit()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      onGenerateRoute: MyRoutes.instanse.onGenerate,
      initialRoute: '/splash',
    );
  }
}
