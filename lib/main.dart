import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Glow Profile',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      home: Scaffold(
        // Deep dark space background
        backgroundColor: const Color(0xFF020205),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                // Outer glow for the whole card
                boxShadow: [
                  BoxShadow(
                    color: Colors.purpleAccent.withOpacity(0.2),
                    blurRadius: 40,
                    spreadRadius: 5,
                  ),
                ],
              ),
              child: Card(
                elevation: 0,
                color: const Color(0xFF0D0D1A),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                  side: BorderSide(
                    color: Colors.purpleAccent.withOpacity(0.5),
                    width: 1.5,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // Glowing Profile Image
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.cyanAccent.withOpacity(0.6),
                              blurRadius: 25,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: CircleAvatar(
                          radius: 65,
                          backgroundColor: Colors.grey[900],
                          child: const Icon(
                            Icons.person,
                            size: 80,
                            color: Colors.cyanAccent,
                          ),
                        ),
                      ),
                      const SizedBox(height: 25),

                      // Name with Neon Glow
                      const Text(
                        'Jonneza M. Gacayan',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          letterSpacing: 1.5,
                          shadows: [
                            Shadow(
                              color: Colors.cyanAccent,
                              blurRadius: 15,
                            ),
                          ],
                        ),
                      ),

                      const SizedBox(height: 8),

                      // Section / Tagline
                      Text(
                        'BSIT-3A | DEVELOPER',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.purpleAccent[100],
                          fontWeight: FontWeight.w600,
                          letterSpacing: 3,
                        ),
                      ),

                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 25.0),
                        child: Divider(color: Colors.white12, thickness: 1),
                      ),

                      // Info Details
                      const GlowInfoRow(
                        icon: Icons.cake_outlined,
                        label: 'Age',
                        value: '23',
                        accentColor: Colors.cyanAccent,
                      ),
                      
                      const SizedBox(height: 25),

                      // Hobbies Section
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Icon(Icons.auto_awesome, color: Colors.purpleAccent, size: 20),
                              const SizedBox(width: 10),
                              Text(
                                'Interests'.toUpperCase(),
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white70,
                                  letterSpacing: 1.5,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 15),
                          hobbyTag('Scrolling on Facebook!'),
                          hobbyTag('Watching Tiktok'),
                          hobbyTag('Dancing Weird'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget hobbyTag(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.05),
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.check_circle_outline, size: 14, color: Colors.cyanAccent),
            const SizedBox(width: 8),
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

class GlowInfoRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;
  final Color accentColor;

  const GlowInfoRow({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: accentColor, size: 22),
        const SizedBox(width: 15),
        Text(
          '$label: ',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: Colors.white60,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            shadows: [
              Shadow(color: accentColor.withOpacity(0.5), blurRadius: 8),
            ],
          ),
        ),
      ],
    );
  }
}
