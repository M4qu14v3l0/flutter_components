import 'package:flutter/material.dart';
import 'package:flutter_components/pages/alerts_page.dart';
import 'package:flutter_components/pages/avatar_page.dart';
import 'package:flutter_components/pages/card_page.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://malditopaparazzo.com.ar/wp-content/uploads/2021/05/David-Chicle.jpg"),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(.3),
                          offset: const Offset(10, 10),
                          blurRadius: 12),
                    ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Flutter components",
                style: GoogleFonts.montserrat(
                  fontSize: 24,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(
                width: 160,
                child: Divider(),
              ),
              ItemComponentWidget(
                title: "Avatar",
                toPage: AvatarPage(),
              ),
              ItemComponentWidget(
                title: "Alerts",
                toPage: AlertPage(),
              ),
              ItemComponentWidget(
                title: "Cards",
                toPage: CardPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ItemComponentWidget extends StatelessWidget {
  String title;
  Widget toPage;

  ItemComponentWidget({required this.title, required this.toPage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.3),
                offset: const Offset(5, 5),
                blurRadius: 12)
          ]),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => toPage),
          );
        },
        leading: const Icon(
          Icons.check_circle_outline,
          color: Colors.blue,
        ),
        title: Text(
          title,
          style: GoogleFonts.montserrat(),
        ),
        subtitle: Text(
          "Ir al detalle de $title",
          style: GoogleFonts.montserrat(),
        ),
        trailing: Icon(
          Icons.chevron_right,
          color: Colors.blue,
        ),
      ),
    );
  }
}
