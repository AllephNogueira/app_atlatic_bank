import 'package:app_atlatic_bank/pages/perfil_page.dart';
import 'package:app_atlatic_bank/theme/app_colors.dart';
import 'package:app_atlatic_bank/utils/verificar_cpf.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _cpfController = TextEditingController();
  final TextEditingController _senhaController = TextEditingController();
  bool _cpfInvalido = true; // Controla se tem erro no CPF
  bool _mostrarCampoSenha = false; // <-- NOVO

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          // Imagem de fundo
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),

          // Minha logo
          Positioned(
            top: 60, // distância do topo
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/logo.png', // <-- Substitua pelo seu logo
                width: screenWidth * 0.6, // 60% da largura da tela
              ),
            ),
          ),

          // Conteúdo centralizado
          Center(
            child: Container(
              decoration: ShapeDecoration(
                color: const Color(0x7FE6E8FD),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              width: 360,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Informe seu CPF para acessar',
                    style: TextStyle(
                      color: AppColors.primaryBlue,
                      fontSize: 16,
                      fontFamily: 'Exo 2',
                      fontWeight: FontWeight.w500,
                    ),
                  ),

                  const SizedBox(height: 10),

                  TextField(
                    // Associando a variavel
                    controller: _cpfController,

                    style: TextStyle(
                      color: AppColors.neutral500,
                      fontSize: 16,
                      fontFamily: 'Exo 2',
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      labelText: 'Seu CPF',
                      labelStyle: TextStyle(
                        color: _cpfInvalido ? AppColors.neutral300 : Colors.red,
                        fontSize: 16,
                        fontFamily: 'Exo 2',
                        fontWeight: FontWeight.w400,
                      ), // Nao focado
                      floatingLabelStyle: TextStyle(
                        color: _cpfInvalido ? AppColors.neutral300 : Colors.red,
                        fontSize: 16,
                        fontFamily: 'Exo 2',
                        fontWeight: FontWeight.w400,
                      ), // Cor focado
                      enabledBorder: UnderlineInputBorder(
                        // Linhas a baixo
                        borderSide: BorderSide(
                          color: Color(0xFF0017E6),
                        ), // borda quando não está focado
                      ),
                      focusedBorder: UnderlineInputBorder(
                        // Linhas a baixo quando em uso.
                        borderSide: BorderSide(
                          color: Color(0xFF0017E6),
                          width: 2,
                        ),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  Text(
                    _cpfInvalido
                        ? ""
                        : "CPF inálido. Confira os números digitados e tente novamente.",
                    style: TextStyle(
                      color: AppColors.error,
                      fontSize: 12,
                      fontFamily: 'Exo 2',
                      fontWeight: FontWeight.w400,
                    ),
                  ),

                  if (_mostrarCampoSenha) ...[
                    Text(
                      "Informe sua Senha para acessar",
                      style: TextStyle(
                        color: AppColors.primaryBlue,
                        fontSize: 16,
                        fontFamily: 'Exo 2',
                        fontWeight: FontWeight.w500,
                      ),
                    ),

                    TextField(
                      controller: _senhaController,
                      obscureText: true,
                      style: TextStyle(
                        color: AppColors.neutral500,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      decoration: const InputDecoration(
                        labelText: 'Senha',
                        border: UnderlineInputBorder(),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryBlue),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: AppColors.primaryBlue,
                            width: 2,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),
                  ],

                  ElevatedButton(
                    onPressed: () {
                      bool cpfValido = VerificarCPF.confirmarCPF(
                        _cpfController.text,
                      );

                      debugPrint("Cpf vindo da funcao: $cpfValido");

                      setState(() {
                        // para atualizar se houver algum clique.
                        _cpfInvalido = cpfValido;
                        _mostrarCampoSenha = cpfValido;
                        String senhaDigitada = _senhaController.text;

                        // Navegar para a proxima pagina se o CPF for valido.
                        // E senha tiver preencida.

                        if (cpfValido && senhaDigitada.length > 1) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MyPerfilPagina(),
                            ),
                          );
                        }
                      });
                    },
                    child: Text("Entrar"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
