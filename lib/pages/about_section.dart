import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/responsive_wrapper.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 450,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/banner.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 450,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black54, Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Meet the Moving Squad",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 52,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  // About Card
                  Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xffe0f7fa), Color(0xfff1f8e9)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.1),
                        ),
                      ],
                    ),
                    padding: const EdgeInsets.all(24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.local_shipping,
                              size: 80,
                              color: Colors.deepOrange,
                            ),
                            const SizedBox(width: 10),
                            Text(
                              "About Moving Squad",
                              style: GoogleFonts.oswald(
                                fontSize: 60,
                                fontWeight: FontWeight.w900,
                                color: Colors.teal[800],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "With over 3 years of hands-on experience, Moving Squad has moved hundreds of clients throughout Ontario — from city apartments to full homes and long-distance relocations.",
                          style: GoogleFonts.rubik(
                            fontSize: 38,
                            height: 1.7,
                            color: Colors.black87,
                          ),
                        ),
                        const SizedBox(height: 24),
                        Divider(color: Colors.teal[200], thickness: 2),
                        const SizedBox(height: 16),

                        Row(
                          children: [
                            const Icon(
                              Icons.thumb_up_alt_outlined,
                              size: 56,
                              color: Colors.purple,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "Why People Trust Us",
                              style: GoogleFonts.poppins(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.deepPurple,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 32),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            _CoolPoint(
                              icon: Icons.star,
                              text: "3+ years of trusted experience",
                            ),
                            _CoolPoint(
                              icon: Icons.handshake_outlined,
                              text: "Friendly & professional crews",
                            ),
                            _CoolPoint(
                              icon: Icons.lock,
                              text: "Fully insured & licensed",
                            ),
                            _CoolPoint(
                              icon: Icons.schedule,
                              text: "On-time and reliable",
                            ),
                            _CoolPoint(
                              icon: Icons.favorite,
                              text: "5-star reviews & happy clients",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  // Customer Reviews Section
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Customer Reviews",
                      style: GoogleFonts.bebasNeue(
                        fontSize: 58,
                        color: const Color.fromARGB(255, 76, 117, 137),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    children: const [
                      ReviewCard(
                        name: "Ziad khabbaz",
                        date: "April 2025",
                        imagePath: "assets/images/review1.jpeg",
                        review:
                            "These guys made my move across Ontario seamless. Polite, fast, and nothing was scratched!",
                      ),
                      ReviewCard(
                        name: "Gabrielle Pochiet",
                        date: "June 2025",
                        imagePath: "assets/images/review2.jpeg",
                        review:
                            "Hands down the most professional movers I’ve used. On time and very careful with fragile stuff.",
                      ),
                      ReviewCard(
                        name: "Maya Patel",
                        date: "May 2025",
                        imagePath: "assets/images/review3.jpeg",
                        review:
                            "They even helped me reassemble my furniture and clean after the move. Incredible service!",
                      ),
                      ReviewCard(
                        name: "Edilbert Rathinam Thiyagarajan",
                        date: "June 2025",
                        imagePath: "assets/images/review4.jpeg",
                        review:
                            "They even helped me reassemble my furniture and clean after the move. Incredible service!",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CoolPoint extends StatelessWidget {
  final IconData icon;
  final String text;

  const _CoolPoint({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.teal, size: 38),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.rubik(
                fontSize: 28,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                height: 1.5,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ReviewCard extends StatelessWidget {
  final String name;
  final String review;
  final String date;
  final String imagePath;

  const ReviewCard({
    required this.name,
    required this.review,
    required this.date,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 560,
      height: 700,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xfffefefe),
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(blurRadius: 10, color: Colors.black.withOpacity(0.12)),
        ],
      ),
      child: Column(
        children: [
          CircleAvatar(radius: 252, backgroundImage: AssetImage(imagePath)),
          const SizedBox(height: 12),
          Text(
            name,
            style: GoogleFonts.oswald(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.teal[700],
            ),
          ),
          Text(date, style: TextStyle(fontSize: 13, color: Colors.grey[600])),
          const SizedBox(height: 10),
          Text(
            review,
            textAlign: TextAlign.center,
            style: GoogleFonts.openSans(fontSize: 15),
          ),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              5,
              (_) => const Icon(Icons.star, size: 18, color: Colors.amber),
            ),
          ),
        ],
      ),
    );
  }
}
