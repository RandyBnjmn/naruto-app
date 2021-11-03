import 'package:flutter/material.dart';
import 'package:naruto_shippuden_app/models/models.dart';

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Personaje character =
        ModalRoute.of(context)!.settings.arguments as Personaje;
    // print(character.nombre);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _CustomAppBar(character),
        SliverList(
            delegate: SliverChildListDelegate([
          _PosterAndTitle(character),
          _Overview(character),
        ]))
      ],
    ));
  }
}

class _CustomAppBar extends StatelessWidget {
  final Personaje character;
  _CustomAppBar(this.character);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight: 200,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          color: Colors.black12,
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            '${character.nombre}',
            style: TextStyle(fontSize: 16),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('${character.imagen}'),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  final Personaje character;
  _PosterAndTitle(this.character);

  // const _PosterAndTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('${character.imagen}'),
                height: 160,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${character.nombre}',
                    style: textTheme.headline5,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2),
                // Text('Sub-titulo', style: textTheme.subtitle1)
              ],
            )
          ],
        ));
  }
}

class _Overview extends StatelessWidget {
  final Personaje character;
  _Overview(this.character);

  // const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        '${character.descripcion}',
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
