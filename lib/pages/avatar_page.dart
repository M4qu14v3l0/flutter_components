import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Page"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.amber,
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://i.pinimg.com/564x/90/bd/31/90bd31cbb5c2a358aa41f1f139172cae.jpg'),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: const Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/images/loading.gif'),
            image: NetworkImage(
                "https://i.pinimg.com/564x/90/bd/31/90bd31cbb5c2a358aa41f1f139172cae.jpg"),
            height: 300,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 1300),
          )
          // Image.network(
          //     "https://i.pinimg.com/564x/90/bd/31/90bd31cbb5c2a358aa41f1f139172cae.jpg"),
          // Image.asset('assets/images/loading.gif'),
        ],
      ),
    );
  }
}
