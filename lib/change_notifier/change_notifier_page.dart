import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_aulas/change_notifier/provider_controller.dart';

class ChangeNotifierPage extends StatefulWidget {
  const ChangeNotifierPage({super.key});

  @override
  State<ChangeNotifierPage> createState() => _ChangeNotifierPageState();
}

class _ChangeNotifierPageState extends State<ChangeNotifierPage> {
  @override
  void initState() {
    super.initState();
    var contexto = context.read;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(const Duration(seconds: 1));
      contexto<ProviderController>().alteraDados();
    });
  }

  @override
  Widget build(BuildContext context) {
    print('build inicial');
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Notifier'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Selector<ProviderController, String>(
                selector: (_, controller) => controller.pathAvatar,
                builder: (_, pathAvatar, __) {
                  print('path avatar');
                  return CircleAvatar(
                    backgroundImage: NetworkImage(pathAvatar),
                    radius: 60,
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Selector<ProviderController, String>(
                    selector: (_, controller) => controller.name,
                    builder: (_, name, __) {
                      print('name');
                      return Text(
                        '$name, ',
                      );
                    },
                  ),
                  Selector<ProviderController, String>(
                    selector: (_, controller) => controller.dataNascimento,
                    builder: (_, dataNascimento, __) {
                      print('data nascimento');
                      return Text(
                        '($dataNascimento)',
                      );
                    },
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ProviderController>().alteraNome();
                },
                child: const Text('Alterar Nome'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
