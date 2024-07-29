import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  const SnackbarScreen({super.key});

  static const name = 'snackbar_screen';

  void showCustomSnackbar(BuildContext context){

    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar( content: const Text('Hola Mundo'),
       action: SnackBarAction(
        label: 'Aceptar', 
        onPressed: (){}),
        duration: const Duration(seconds: 3),
      )
    );
  }

  void openDialog(BuildContext context) {
  // builder es en tiempo de ejecución
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => AlertDialog(
      title: const Text('¿Estas seguro?'),
      content: const Text('Id aliqua adipisicing adipisicing anim reprehenderit sint aliqua. Minim duis in sit id sunt.'),
      actions: [
        TextButton(
          onPressed: () => context.pop(),
          child: const Text('Cancelar')
        ), // TextButton
        FilledButton(
          onPressed: () => context.pop(),
          child: const Text('Aceptar')
        ) // FilledButton
      ],
    ), // AlertDialog
  );
}
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar y dialogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              child: const Text('Licencias usadas'),
              onPressed: (){
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Commodo laboris ex tempor sit velit ad commodo quis commodo cillum. Veniam tempor excepteur reprehenderit officia amet exercitation cillum. Proident fugiat occaecat exercitation laboris occaecat qui elit esse aliquip adipisicing duis officia eiusmod aute.'),
                  ]
                );
              },
              
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text('Mostrar Dialogo'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}