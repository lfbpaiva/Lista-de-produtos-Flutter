import 'package:flutter/material.dart';
import 'package:at01segundobi/lista.dart';
import 'package:at01segundobi/informacoes.dart';

class listaProdutos extends StatefulWidget {
  const listaProdutos({super.key});

  @override
  State<listaProdutos> createState() => _listaProdutosState();
}

class _listaProdutosState extends State<listaProdutos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(12, 12, 12, 1),
        title: const Text(
          "Produtos",
          style: TextStyle(
            color: Color.fromRGBO(255, 255, 255, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: const Color.fromRGBO(236, 239, 244, 1.0),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: produtos.length,
          itemBuilder: (context, index) {
            final produto = produtos[index];
            return Center(
              child: SizedBox(
                height: 260,
                width: 250,
                child: Card(
                  color: const Color.fromRGBO(0, 0, 0, 1),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(produto.imagemUrl),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          produto.nome,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          produto.preco,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () => ShowBottomSheet(context, produto),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromRGBO(
                                61, 253, 0, 1.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "Informações",
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
