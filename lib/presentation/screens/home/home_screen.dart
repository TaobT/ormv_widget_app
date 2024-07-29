import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ormv_widget_app/config/menu/menu_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String name = "home_screen";

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter + M3'),
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,  
      itemBuilder: (context, index) {
        final menuItem = appMenuItems[index];

        return _CustomTitle(menuItem: menuItem);
      },
    );
  }
}

class _CustomTitle extends StatelessWidget {

  final MenuItem menuItem;

  const _CustomTitle({
    required this.menuItem
  });

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;
    
    return ListTile(
      leading: Icon(menuItem.icon, color: colors.primary,),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subTitle),
      trailing: Icon(Icons.arrow_forward_ios_outlined, color: colors.primary,),
      onTap: (){
        context.push(menuItem.link);
        //context.pushNamed(CardsScreen.name);
       },
    );
  }
}