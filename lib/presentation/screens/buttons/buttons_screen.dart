import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  static const String name = "buttons_screen";


  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_outlined),
        onPressed: () => context.pop(),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: const Text('Elevated Button')),
            const ElevatedButton(onPressed: null, child: Text('Elevated Disable')),

            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.access_alarm_outlined),
              label: const Text('Elevated Icon')
            ),

            FilledButton(onPressed: (){}, child: const Text('Filled Button')),
            
            FilledButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.add_road_sharp),
              label: const Text('Filled Icon')
            ),

            OutlinedButton(onPressed: (){}, child: const Text('Outlined Button')),
            OutlinedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.airline_seat_recline_extra_sharp),
              label: const Text('Outlined Icon')
            ),

            TextButton(onPressed: (){}, child: const Text('Text Button')),
            
            TextButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.nature_people_outlined),
              label: const Text('Text Icon')
            ),

            IconButton(onPressed: (){}, icon: const Icon(Icons.heart_broken_outlined)),
            
            // IconButton(
            //   onPressed: (){}, 
            //   icon: const Icon(Icons.volume_off_outlined),
            //   style: const ButtonStyle(
            //     backgroundColor: WidgetStatePropertyAll(colors.primary),
            //     iconColor: const WidgetStatePropertyAll(Colors.white),
            //   ),
            //   label: const Text('Text Icon')
            // ),

          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () { },
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Personalized Button', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}