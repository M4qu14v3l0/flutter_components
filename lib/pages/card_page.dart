import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Card page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // Card 1
          Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    offset: const Offset(4, 4),
                    blurRadius: 12,
                  ),
                  const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-5, -5),
                    blurRadius: 6,
                  )
                ]),
            child: Column(
              children: [
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                  maxLines: 5,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.66),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: BorderRadius.circular(40),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.deepPurpleAccent.withOpacity(0.6),
                          blurRadius: 10,
                          offset: const Offset(4, 4),
                        )
                      ]),
                  alignment: Alignment.center,
                  child: Text(
                    "Follow me",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          // Card 2
          Container(
            margin: const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 14,
            ),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.06),
                    offset: const Offset(4, 4),
                    blurRadius: 12,
                  )
                ]),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/imagex1.png',
                  height: 120,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fiorella de las nieves azules,",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.06),
                      blurRadius: 12,
                      offset: const Offset(4, 4))
                ]),
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Text(
                      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged",
                      maxLines: 5,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.network(
                    "https://images.pexels.com/photos/1697912/pexels-photo-1697912.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
