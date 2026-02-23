import 'package:flutter/material.dart';
// --- PÁGINA 3: CONTAINER ---
class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tercera pagina',
          style: TextStyle(color: Color(0xFFFFCC80)),
        ), // Naranja claro
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.orange,
        ), // Color de la flecha de volver
        elevation: 0.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.lightBlue[100],
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.lightBlue, width: 2),
              ),
              child: const Center(
                child: Text(
                  '200 x 200',
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                context,
                '/',
                (route) => false,
              ),
              child: const Text('Regresar al Inicio'),
            ),
          ],
        ),
      ),
    );
  }
}
