import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/responsive_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  final List<_ServiceInfo> services = const [
    _ServiceInfo(
      icon: Icons.login,
      title: "Loading",
      description: [
        "Efficiently load all types of belongings",
        "Use protective materials for fragile items",
        "Organized packing for easy unloading",
        "Skilled crew ensuring safety and speed",
        "Flexible scheduling to fit your timeline",
      ],
      colors: [Color(0xFFFFFFFF), Color.fromARGB(255, 198, 196, 196)],
      iconColor: Color(0xFFFFB300),
      link: "https://yourwebsite.com/loading",
    ),
    _ServiceInfo(
      icon: Icons.logout,
      title: "Unloading",
      description: [
        "Careful unloading to avoid any damage",
        "Prompt and organized item placement",
        "Help with unpacking if requested",
        "Inspection of items to ensure safety",
        "Friendly crew assisting with heavy items",
      ],
      colors: [Color(0xFFFFFFFF), Color.fromARGB(255, 198, 196, 196)],
      iconColor: Color(0xFFFFB300),
      link: "https://yourwebsite.com/loading",
    ),
    _ServiceInfo(
      icon: Icons.fire_truck,
      title: "Drive Truck",
      description: [
        "Experienced drivers for safe transport",
        "Timely arrival and departure schedules",
        "Secure loading and unloading practices",
        "GPS tracking for real-time updates",
        "Insurance coverage for peace of mind",
      ],
      colors: [Color(0xFFFFFFFF), Color.fromARGB(255, 198, 196, 196)],
      iconColor: Color(0xFFFFB300),
      link: "https://yourwebsite.com/loading",
    ),
    _ServiceInfo(
      icon: Icons.route,
      title: "Long Haul Moving",
      description: [
        "Comprehensive planning for long-distance moves",
        "Reliable logistics and route optimization",
        "Climate-controlled vehicles if needed",
        "Regular status updates throughout the move",
        "Customer support available 24/7",
      ],
      colors: [Color(0xFFFFFFFF), Color.fromARGB(255, 198, 196, 196)],
      iconColor: Color(0xFFFFB300),
      link: "https://yourwebsite.com/loading",
    ),
    _ServiceInfo(
      icon: Icons.wrap_text,
      title: "Wrapping Furniture",
      description: [
        "Use of high-quality protective wraps",
        "Padding for corners and delicate parts",
        "Custom wrapping for odd-shaped items",
        "Ensures scratch and dust protection",
        "Professional techniques to secure wrapping",
      ],
      colors: [Color(0xFFFFFFFF), Color.fromARGB(255, 198, 196, 196)],
      iconColor: Color(0xFFFFB300),
      link: "https://yourwebsite.com/loading",
    ),
    _ServiceInfo(
      icon: Icons.chair_alt,
      title: "Dismantling & Assembling Furniture",
      description: [
        "Careful disassembly of furniture pieces",
        "Labeling parts for easy reassembly",
        "Use of proper tools to avoid damage",
        "Reassembling at your new location",
        "Handling delicate and heavy furniture safely",
      ],
      colors: [Color(0xFFFFFFFF), Color.fromARGB(255, 198, 196, 196)],
      iconColor: Color(0xFFFFB300),
      link: "https://yourwebsite.com/loading",
    ),
    _ServiceInfo(
      icon: Icons.cleaning_services,
      title: "House Cleaning",
      description: [
        "Thorough cleaning before or after moving",
        "Dusting, vacuuming, and mopping floors",
        "Cleaning kitchen and bathrooms",
        "Removal of trash and debris",
        "Flexible scheduling to suit your needs",
      ],
      colors: [Color(0xFFFFFFFF), Color.fromARGB(255, 198, 196, 196)],
      iconColor: Color(0xFFFFB300),
      link: "https://yourwebsite.com/loading",
    ),
    _ServiceInfo(
      icon: Icons.window,
      title: "Window Cleaning",
      description: [
        "Streak-free cleaning inside and outside",
        "Use of safe and eco-friendly cleaning products",
        "Cleaning frames and sills",
        "High-reach window cleaning capabilities",
        "Residential and commercial window services",
      ],
      colors: [Color(0xFFFFFFFF), Color.fromARGB(255, 198, 196, 196)],
      iconColor: Color(0xFFFFB300),
      link: "https://yourwebsite.com/loading",
    ),
    _ServiceInfo(
      icon: Icons.business,
      title: "Office Cleaning",
      description: [
        "Custom cleaning plans for offices",
        "Sanitizing workstations and common areas",
        "Trash removal and floor care",
        "Flexible hours to minimize disruption",
        "Professional and trustworthy staff",
      ],
      colors: [Color(0xFFFFFFFF), Color.fromARGB(255, 198, 196, 196)],
      iconColor: Color(0xFFFFB300),
      link: "https://yourwebsite.com/loading",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "SERVICES WE OFFER",
              style: GoogleFonts.bangers(
                fontSize: 52,
                fontWeight: FontWeight.bold,
                //color: const Color.fromARGB(255, 110, 164, 188),
                color: Color(0xFFFFB300),
                letterSpacing: 1.5,
              ),
            ),
            const SizedBox(height: 36),
            Wrap(
              spacing: 24,
              runSpacing: 24,
              alignment: WrapAlignment.center,
              children:
                  services
                      .map(
                        (service) => _ServiceCard(
                          icon: service.icon,
                          title: service.title,
                          description: service.description,
                          colors: service.colors,
                          iconColor: service.iconColor,
                          link: service.link,
                        ),
                      )
                      .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class _ServiceInfo {
  final IconData icon;
  final String title;
  final List<String> description; // List of bullet points now
  final List<Color> colors;
  final Color iconColor;
  final String link;

  const _ServiceInfo({
    required this.icon,
    required this.title,
    required this.description,
    required this.colors,
    required this.iconColor,
    required this.link,
  });
}

class _ServiceCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final List<String> description;
  final List<Color> colors;
  final Color iconColor;
  final String link; // Optional: For launching a URL

  const _ServiceCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.colors,
    required this.iconColor,
    this.link = 'https://example.com', // Replace with real URLs
  });

  @override
  State<_ServiceCard> createState() => _ServiceCardState();
}

class _ServiceCardState extends State<_ServiceCard> {
  bool _isHovered = false;

  void _launchURL() async {
    final uri = Uri.parse(widget.link);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, webOnlyWindowName: '_blank');
    } else {
      throw 'Could not launch ${widget.link}';
    }
  }

  void _handleTap(BuildContext context) {
    Navigator.pushNamed(context, '/contact');
  }

  @override
  Widget build(BuildContext context) {
    final hoveredColors =
        widget.colors
            .map((color) => _isHovered ? _darken(color, 0.1) : color)
            .toList();

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        // onTap: _launchURL,
        onTap: () => _handleTap(context),
        child: AnimatedScale(
          scale: _isHovered ? 1.03 : 1.0,
          duration: const Duration(milliseconds: 200),
          child: Container(
            width: 480,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: hoveredColors,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: hoveredColors.last.withOpacity(0.5),
                  blurRadius: 15,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(widget.icon, size: 44, color: widget.iconColor),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12,
                          vertical: 6,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFFFD54F), // Amber yellow background
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          widget.title,
                          style: GoogleFonts.anton(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                ...widget.description.map(
                  (line) => Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "•  ",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            height: 1.4,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            line,
                            style: GoogleFonts.openSans(
                              fontSize: 18,
                              color: Colors.black.withOpacity(0.9),
                              height: 1.4,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _darken(Color color, [double amount = 0.1]) {
    final hsl = HSLColor.fromColor(color);
    final darkerHsl = hsl.withLightness(
      (hsl.lightness - amount).clamp(0.0, 1.0),
    );
    return darkerHsl.toColor();
  }
}
