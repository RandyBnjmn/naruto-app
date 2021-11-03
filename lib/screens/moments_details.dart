import 'package:flutter/material.dart';
import 'package:naruto_shippuden_app/models/models.dart';
import 'package:naruto_shippuden_app/models/moments.dart';

class MomentsDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Momento moment =
        ModalRoute.of(context)!.settings.arguments as Momento;
    // print(character.nombre);
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        _CustomAppBar(moment),
        SliverList(
            delegate: SliverChildListDelegate([
          _PosterAndTitle(moment),
          _Overview(moment),
        ]))
      ],
    ));
  }
}

class _CustomAppBar extends StatelessWidget {
  final Momento moment;
  _CustomAppBar(this.moment);

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
            '${moment.momento}',
            style: TextStyle(fontSize: 16),
          ),
        ),
        background: FadeInImage(
          placeholder: AssetImage('assets/loading.gif'),
          image: NetworkImage('${moment.imagen}'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _PosterAndTitle extends StatelessWidget {
  final Momento moment;
  _PosterAndTitle(this.moment);

  // const _PosterAndTitle({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'),
                image: NetworkImage('${moment.imagen}'),
                height: 160,
                width: 400,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('${moment.momento}',
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
  final Momento moment;
  _Overview(this.moment);

  // const Overview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(
        '${moment.descripcion}',
        textAlign: TextAlign.justify,
        style: TextStyle(fontSize: 20),
      ),
    );
  }
}
