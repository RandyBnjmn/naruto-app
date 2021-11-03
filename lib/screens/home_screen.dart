import 'package:flutter/material.dart';
import 'package:naruto_shippuden_app/provider/app_provider.dart';
import 'package:naruto_shippuden_app/provider/moments_provider.dart';
import 'package:naruto_shippuden_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final charactersProvider = Provider.of<CharactersProvider>(context);
    final momentsProvider = Provider.of<MomentsProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text('Naruto Shippuden App'),
          elevation: 0,
          centerTitle: true,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'assets/foto.jpg',
                        ),
                        fit: BoxFit.fitHeight)),
                child: null,
              ),
              ListTile(
                  title: Text(
                    'Mi vida',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    '¿Por qué esta serie es importante para mi?',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onTap: () => Navigator.pushNamed(context, 'mylife')

                  // Navigator.pop(context);
                  ),
              ListTile(
                  title: Text(
                    'Acerca de',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  subtitle: Text(
                    'Aquí veras informacion de la serie.',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  onTap: () => Navigator.pushNamed(context, 'about')

                  // Navigator.pop(context);
                  )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image(
                    image: NetworkImage(
                        'https://static.wikia.nocookie.net/doblaje/images/3/39/Naruto2.jpg/revision/latest?cb=20200914200759&path-prefix=es'),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Momentos',
                style: TextStyle(fontSize: 25),
              ),
              CardSwiper(moments: momentsProvider.onMomentsDisplay),
              CharactersSlider(
                  characters: charactersProvider.onCharactersDisplay,
                  title: 'Personajes'),
            ],
          ),
        ));
  }
}
