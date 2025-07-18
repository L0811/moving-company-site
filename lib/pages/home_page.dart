import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moving_company_site/pages/about_section.dart';
import 'package:moving_company_site/pages/contact_section.dart';
import 'package:moving_company_site/pages/services_section.dart';
import 'package:moving_company_site/widgets/responsive_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      debugPrint("Could not launch $url");
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 140,
          title: ResponsiveWrapper(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/logo.jpeg',
                      height: 100,
                      width: 120,
                    ),
                    const SizedBox(width: 12),
                    Text(
                      'LIFT & LOAD',
                      style: GoogleFonts.montserrat(
                        fontSize: 62,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 3.5,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          //backgroundColor: const Color.fromARGB(255, 94, 130, 168),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(kToolbarHeight),
            child: Center(
              child: SizedBox(
                width: 1200,
                child: Container(
                  // labelColor: Color.fromARGB(207, 226, 159, 0),
                  // unselectedLabelColor: Color.fromARGB(207, 226, 159, 0),
                  // indicatorColor: const Color(0xFFFFD54F),
                  // // indicatorColor: Color.fromARGB(207, 226, 159, 0),
                  color: const Color.fromARGB(
                    207,
                    226,
                    159,
                    0,
                  ), // Yellow background
                  child: const TabBar(
                    labelColor: Colors.black, // Selected text color
                    unselectedLabelColor: Colors.black, // Unselected text
                    indicatorColor: Color(0xFFFFD54F),
                    tabs: const [
                      Tab(
                        child: Text(
                          'ABOUT',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'SERVICES',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          'CONTACT',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        body: const ResponsiveWrapper(
          child: TabBarView(
            children: [AboutSection(), ServicesSection(), ContactSection()],
          ),
        ),
        bottomNavigationBar: Container(
          // color: const Color.fromARGB(255, 94, 130, 168),
          color: Color(0xFFFFFF),
          child: SizedBox(
            height: 120,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Wrap(
                    spacing: 32,
                    alignment: WrapAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () => _launchUrl('tel:+1234567890'),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //Icon(Icons.phone, color: Colors.white, size: 24),
                            Icon(
                              Icons.phone,
                              color: Color(0xFFFFB300),
                              size: 24,
                            ),

                            SizedBox(width: 8),
                            Text(
                              "Call Us",
                              style: TextStyle(
                                color: Color(0xFFFFB300),
                                fontSize: 26,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap:
                            () =>
                                _launchUrl('https://instagram.com/yourprofile'),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              FontAwesomeIcons.instagram,
                              color: Color(0xFFFFB300),
                              size: 22,
                            ),
                            SizedBox(width: 8),
                            Text(
                              "Instagram",
                              style: TextStyle(
                                color: Color(0xFFFFB300),
                                fontSize: 26,
                              ),
                            ),
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () => _launchUrl('sms:+1234567890'),
                        child: const Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.sms, color: Color(0xFFFFB300), size: 24),
                            SizedBox(width: 8),
                            Text(
                              "Text Us",
                              style: TextStyle(
                                color: Color(0xFFFFB300),
                                fontSize: 26,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    "© 2025 Lavanya Mahajan. All rights reserved.",
                    style: TextStyle(
                      color: Color.fromARGB(179, 112, 111, 111),
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
