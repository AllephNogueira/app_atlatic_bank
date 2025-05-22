// Exemplo simples de nova página
import 'package:app_atlatic_bank/theme/app_colors.dart';
import 'package:flutter/material.dart';

class MyPerfilPagina extends StatelessWidget {
  const MyPerfilPagina({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text("Pix", style: TextStyle(color: AppColors.primaryBlue)),
          ],
        ),
      ),

      // body = pagina
      // Stack é um widget que funciona igual uma caixa, um item vai em cima do outro..
      // children sao os filhos.
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.primaryBlue,
                width: 2,
                style: BorderStyle.solid,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 16,
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    clipBehavior: Clip.antiAlias,
                    decoration: ShapeDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/foto_usuario.png'),
                        fit: BoxFit.cover,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                  Container(
                    width: 191,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 8,
                      children: [
                        SizedBox(
                          width: 191,
                          child: Text(
                            'Olá, José',
                            style: TextStyle(
                              color: const Color(0xFF333543),
                              fontSize: 18,
                              fontFamily: 'Exo 2',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 4,
                            children: [
                              Container(
                                width: double.infinity,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  spacing: 24,
                                  children: [
                                    Container(
                                      width: 75,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        spacing: 4,
                                        children: [
                                          Text(
                                            'Agência: 0001',
                                            style: TextStyle(
                                              color: const Color(0xFF545562),
                                              fontSize: 12,
                                              fontFamily: 'Exo 2',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            'Banco 600 ',
                                            style: TextStyle(
                                              color: const Color(0xFF545562),
                                              fontSize: 12,
                                              fontFamily: 'Exo 2',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 92,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        spacing: 4,
                                        children: [
                                          Text(
                                            'Conta: 1000001',
                                            style: TextStyle(
                                              color: const Color(0xFF545562),
                                              fontSize: 12,
                                              fontFamily: 'Exo 2',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          Text(
                                            'Atlantic Bank S.A',
                                            style: TextStyle(
                                              color: const Color(0xFF545562),
                                              fontSize: 12,
                                              fontFamily: 'Exo 2',
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 191,
                                child: Text(
                                  'Sociedade de crédito direto',
                                  style: TextStyle(
                                    color: const Color(0xFFB0B1B6),
                                    fontSize: 12,
                                    fontFamily: 'Exo 2',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
