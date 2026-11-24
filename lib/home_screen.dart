import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF72A7C7),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            decoration: BoxDecoration(
              color: const Color(0xFFF4F4F4),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                const SizedBox(height: 30),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'FILCON',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF7A0D0D),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.sailing,
                              color: Colors.yellow,
                              size: 36,
                            ),
                          ),

                          Positioned(
                            top: 5,
                            right: 5,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 15),

                      const Text(
                        'Welcome, User!',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF7A0D0D),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),

                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      children: [
                        buildCard(
                          'PDF to Word',
                          'Convert your PDF to Word to make documents editable. This conversion is useful for updating reports, assignments, or forms without starting from scratch.',
                          const Color(0xFFE95050),
                          Icons.description_outlined,
                        ),

                        buildCard(
                          'JPG to PNG',
                          'Convert your JPG to PNG easily. This makes PNG especially useful for logos, icons, and UI designs where crisp edges and clear backgrounds are important.',
                          const Color(0xFFE3BA27),
                          Icons.image_outlined,
                        ),

                        buildCard(
                          'PNG to JPG',
                          'Convert your PNG to JPG to reduce file size and make images more web-friendly. It is ideal for photos and online sharing where smaller files load faster.',
                          const Color(0xFF18A318),
                          Icons.image_outlined,
                        ),

                        buildCard(
                          'Word to PDF',
                          'Convert your Word to PDF to make documents secure and easy to share. It is ideal for reports, assignments, and official submissions.',
                          const Color(0xFF3D57D8),
                          Icons.description_outlined,
                        ),
                      ],
                    ),
                  ),
                ),

                Container(
                  height: 85,
                  decoration: const BoxDecoration(
                    color: Color(0xFF8B0000),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      topRight: Radius.circular(70),
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.home_outlined,
                        color: Colors.white,
                        size: 35,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 35,
                      ),
                      Icon(
                        Icons.person_outline,
                        color: Colors.white,
                        size: 35,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(
    String title,
    String description,
    Color color,
    IconData icon,
  ) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            blurRadius: 6,
            color: Colors.black26,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 40,
            ),

            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),

            Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 9,
                height: 1.3,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}