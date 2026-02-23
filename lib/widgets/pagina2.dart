import 'package:flutter/material.dart';
// --- PÁGINA 2: IMAGEN ---
class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda página', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagen desde la red con cargador nativo corregido
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                'https://picsum.photos/400/300',
                width: 300,
                height: 200,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const SizedBox(
                    width: 300,
                    height: 200,
                    child: Center(child: CircularProgressIndicator()),
                  );
                },
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green[700]),
              onPressed: () => Navigator.pushNamed(context, '/tercera'),
              child: const Text('Ir a la tercera página', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}