import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_aulas/models/produto_model.dart';

class ProdutoWidget extends StatelessWidget {
  const ProdutoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text(context.watch<ProdutoModel>().nome),
    );
  }
}
