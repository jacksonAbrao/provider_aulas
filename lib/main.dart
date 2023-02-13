import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_aulas/change_notifier/change_notifier_page.dart';
import 'package:provider_aulas/change_notifier/provider_controller.dart';
import 'package:provider_aulas/models/user_model.dart';
import 'package:provider_aulas/provider/provider_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(
          create: (_) {
            return UserModel(
              name: 'Jackson Abrão',
              pathAvatar:
                  'https://scontent-gru1-1.cdninstagram.com/v/t51.2885-15/329649763_706985334495646_8869729803407356442_n.jpg?stp=dst-jpg_e35_p720x720&_nc_ht=scontent-gru1-1.cdninstagram.com&_nc_cat=110&_nc_ohc=vSXNuXIJ39QAX_cY3vd&edm=ACWDqb8BAAAA&ccb=7-5&ig_cache_key=MzAzMjU2MDYzMDk2ODgzMDA3Nw%3D%3D.2-ccb7-5&oh=00_AfADnZlVqSXgYWcXDXk8o-xL-6Pg8LtDDNeCIcCZvJVGXw&oe=63EDE931&_nc_sid=1527',
              dataNascimento: '14/02/1999',
            );
          },
        ),
        ChangeNotifierProvider(
          create: (_) => ProviderController(),
        ),
      ],
      child: MaterialApp(
        routes: {
          '/providers': (_) => const ProviderPage(),
          '/change_notifier': (_) => const ChangeNotifierPage(),
        },
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/providers');
                      },
                      child: const Text('Provider'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed('/change_notifier');
                      },
                      child: const Text('Change Notifier'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
