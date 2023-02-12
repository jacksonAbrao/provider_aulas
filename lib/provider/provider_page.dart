import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_aulas/models/produto_model.dart';
import 'package:provider_aulas/models/user_model.dart';
import 'package:provider_aulas/provider/produto_widget.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context);

    // esse caso, ele vai retornar uma instancia sem ficar escutando as alterações dela; v
    // var user = context.read<UserModel>();

    // esse caso, só pega o path Avatar, e não fica escutando o resto, útil pra quando você não precisa daquela classe inteira
    // var pathAvatar =
    //     context.select<UserModel, String>((userModel) => userModel.pathAvatar);

    // esse fica ouvindo alterações
    // var user = context.watch<UserModel>();

    return Provider(
      create: (_) => ProdutoModel(nome: 'Web Site'),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Provider'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(user.pathAvatar),
                  radius: 60,
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${user.name}, (${user.dataNascimento})',
                    ),
                  ],
                ),
                ProdutoWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
