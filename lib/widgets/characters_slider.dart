import 'package:flutter/material.dart';
import 'package:naruto_shippuden_app/models/characters.dart';

class CharactersSlider extends StatelessWidget {
  final List<Personaje> characters;
  final String? title;

  const CharactersSlider({Key? key, required this.characters, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 260,
      child: Column(
        children: [
          if (this.title != null)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                this.title!,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: characters.length,
                itemBuilder: (_, int index) =>
                    _CharactersPoster(characters[index])),
          )
        ],
      ),
    );
  }
}

class _CharactersPoster extends StatelessWidget {
  final Personaje character;
  const _CharactersPoster(this.character);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 190,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(children: <Widget>[
        GestureDetector(
          onTap: () =>
              Navigator.pushNamed(context, 'details', arguments: character),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage(character.imagen),
              width: 130,
              height: 190,
              fit: BoxFit.contain,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          character.nombre,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        )
      ]),
    );
  }
}
