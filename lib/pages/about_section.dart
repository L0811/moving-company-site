import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/responsive_wrapper.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      style: GoogleFonts.bebasNeue(
                        fontSize: 52,
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                      children: [
                        const TextSpan(
                          text: 'Meet the Lift & Load CONTACT US, GET YOUR ',
                        ),
                        TextSpan(
                          text: 'FREE',
                          style: const TextStyle(
                            backgroundColor:
                                Colors.yellowAccent, // Highlight background
                            color:
                                Colors
                                    .black, // Text color to contrast background
                          ),
                        ),
                        const TextSpan(text: ' QUOTE TODAY'),
                      ],
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
                              "About Lift & Load",
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
                          "With over 3 years of hands-on experience, Lift and Load Squad has moved hundreds of clients throughout Ontario — from city apartments to full homes and long-distance relocations.",
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

                  //
                  const SizedBox(height: 40),
                  const AutoReviewCarousel(),
                  Text(
                    "More Customer Love",
                    style: GoogleFonts.bebasNeue(
                      fontSize: 42,
                      color: Color.fromARGB(255, 44, 77, 95),
                    ),
                  ),

                  const SizedBox(height: 20),

                  SizedBox(height: 180, child: _MiniReviewCarousel()),
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
          const SizedBox(height: 12, width: 30),
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

class AutoReviewCarousel extends StatefulWidget {
  const AutoReviewCarousel({super.key});

  @override
  State<AutoReviewCarousel> createState() => _AutoReviewCarouselState();
}

class _AutoReviewCarouselState extends State<AutoReviewCarousel> {
  final PageController _controller = PageController(viewportFraction: 0.85);
  int _currentPage = 0;

  final List<Map<String, String>> reviews = [
    {
      "text":
          "Absolutely amazing service. Everything was packed so well and nothing broke. Highly recommend to all my friends!",
      "name": "Tanya B.",
      "date": "March 2025",
    },
    {
      "text":
          "Reliable, on-time, and very friendly. They even helped me clean up. Incredible moving experience.",
      "name": "Leo Tran",
      "date": "Feb 2025",
    },
    {
      "text":
          "We had to move on a snowy day and these guys made it happen without a hiccup. 10/10 would use again.",
      "name": "Dani W.",
      "date": "January 2025",
    },
    {
      "text":
          "Loved the team’s energy and organization. The move went faster than expected and nothing was scratched.",
      "name": "Nina Singh",
      "date": "May 2025",
    },
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 2), (timer) {
      if (_controller.hasClients) {
        int nextPage = (_currentPage + 1) % reviews.length;
        _controller.animateToPage(
          nextPage,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
        setState(() {
          _currentPage = nextPage;
        });
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: PageView.builder(
        controller: _controller,
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          final review = reviews[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xffe0f7fa), Color(0xfffce4ec)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 8,
                    color: Colors.grey.withOpacity(0.3),
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '"${review['text']}"',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.fredoka(
                      fontSize: 16,
                      color: Colors.teal[900],
                      height: 1.4,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "- ${review['name']} (${review['date']})",
                    style: GoogleFonts.fredoka(
                      fontSize: 13,
                      color: Colors.black54,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      5,
                      (_) =>
                          const Icon(Icons.star, size: 16, color: Colors.amber),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class _MiniReviewCarousel extends StatefulWidget {
  const _MiniReviewCarousel({super.key});

  @override
  State<_MiniReviewCarousel> createState() => _MiniReviewCarouselState();
}

class _MiniReviewCarouselState extends State<_MiniReviewCarousel> {
  final PageController _controller = PageController(viewportFraction: 0.6);

  final List<Map<String, dynamic>> _reviews = [
    {
      "name": "Ryan G.",
      "date": "July 2025",
      "stars": 5,
      "text":
          "Lift & Load Squad exceeded all my expectations. From the moment they arrived, the team was organized, polite, and incredibly efficient. They handled my delicate items like antiques and glassware with extreme care, and not a single item was damaged. The best moving experience I’ve ever had.",
    },
    {
      "name": "Angela M.",
      "date": "June 2025",
      "stars": 5,
      "text":
          "We were really stressed about our move, especially with two kids and a dog in the house. But the crew made everything so smooth. They were friendly, communicative, and very well-coordinated. We didn’t have to lift a finger — they even reassembled our beds and cleaned up after. A+ service!",
    },
    {
      "name": "Leo Tran",
      "date": "March 2025",
      "stars": 5,
      "text":
          "I’ve moved many times over the years and this was by far the most professional and pleasant experience. The team showed up right on time, packed everything securely, and even offered to help with unpacking. Their positive attitude really made a difference during a stressful time.",
    },
    {
      "name": "Michelle Y.",
      "date": "March 2025",
      "stars": 5,
      "text":
          "Lift and Load Squad didn’t just move our stuff — they gave us peace of mind. The entire crew worked like a well-oiled machine. They kept us updated at every step, were patient with our questions, and even helped us decide the best layout for our new living room. True professionals!",
    },
    {
      "name": "Jared Cole",
      "date": "February 2025",
      "stars": 5,
      "text":
          "I was especially impressed by how well they handled the long-haul part of our move. Everything arrived in perfect condition, right on time. The driver even gave us ETA updates as he got closer. I would not hesitate to hire them again or recommend them to friends and family.",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: PageView.builder(
        controller: _controller,
        itemCount: _reviews.length,
        itemBuilder: (context, index) {
          final review = _reviews[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: SizedBox(
              width: 240,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                color: const Color(0xffe0f2f1),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '"${review['text']}"',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.fredoka(
                          fontSize: 14,
                          color: Colors.teal[900],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            review['stars'],
                            (_) => const Icon(
                              Icons.star,
                              size: 14,
                              color: Colors.deepOrange,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            "${review['name']} | ${review['date']}",
                            style: GoogleFonts.bangers(
                              fontSize: 12,
                              color: Colors.purple[800],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
