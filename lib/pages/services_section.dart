// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import '../widgets/responsive_wrapper.dart';

// class ServicesSection extends StatelessWidget {
//   const ServicesSection({super.key});

//   final List<_ServiceInfo> services = const [
//     _ServiceInfo(
//       icon: Icons.login,
//       title: "Loading",
//       description: [
//         "Efficient loading of all your belongings",
//         "Handled with care and speed",
//       ],
//       colors: [Color(0xfff7971e), Color(0xffffba00)],
//       iconColor: Colors.deepOrange,
//     ),
//     _ServiceInfo(
//       icon: Icons.logout,
//       title: "Unloading",
//       description: [
//         "Safe unloading at your new location",
//         "Ensuring nothing is damaged",
//       ],
//       colors: [Color(0xff56ab2f), Color(0xffa8e063)],
//       iconColor: Color.fromARGB(255, 21, 95, 23),
//     ),
//     _ServiceInfo(
//       icon: Icons.fire_truck,
//       title: "Drive Truck",
//       description: [
//         "Professional drivers",
//         "Timely and secure transport of your goods",
//       ],
//       colors: [Color(0xff00c6ff), Color(0xff0072ff)],
//       iconColor: Color.fromARGB(255, 16, 72, 118),
//     ),
//     _ServiceInfo(
//       icon: Icons.route,
//       title: "Long Haul Moving",
//       description: [
//         "Managing long-distance moves",
//         "Reliable logistics and tracking",
//       ],
//       colors: [Color(0xffee9ca7), Color(0xffffdde1)],
//       iconColor: Colors.pink,
//     ),
//     _ServiceInfo(
//       icon: Icons.wrap_text,
//       title: "Wrapping Furniture",
//       description: [
//         "Protective wrapping of furniture",
//         "Prevents scratches and damage",
//       ],
//       colors: [Color(0xff8e2de2), Color(0xff4a00e0)],
//       iconColor: Colors.purpleAccent,
//     ),
//     _ServiceInfo(
//       icon: Icons.chair_alt,
//       title: "Dismantling & Assembling Furniture",
//       description: [
//         "Careful dismantling of furniture",
//         "Reassembling at your convenience",
//       ],
//       colors: [Color(0xffff416c), Color(0xffff4b2b)],
//       iconColor: Color.fromARGB(255, 97, 29, 29),
//     ),
//     _ServiceInfo(
//       icon: Icons.cleaning_services,
//       title: "House Cleaning",
//       description: [
//         "Thorough cleaning services",
//         "Spotless before or after moving",
//       ],
//       colors: [Color(0xff11998e), Color(0xff38ef7d)],
//       iconColor: Color.fromARGB(255, 4, 85, 77),
//     ),
//     _ServiceInfo(
//       icon: Icons.window,
//       title: "Window Cleaning",
//       description: [
//         "Professional window cleaning",
//         "Brighten your home or office",
//       ],
//       colors: [Color(0xff36d1dc), Color(0xff5b86e5)],
//       iconColor: Color.fromARGB(255, 25, 78, 102),
//     ),
//     _ServiceInfo(
//       icon: Icons.business,
//       title: "Office Cleaning",
//       description: [
//         "Reliable cleaning tailored to your needs",
//         "Maintain a productive workspace",
//       ],
//       colors: [Color(0xfff7971e), Color(0xffffba00)],
//       iconColor: Color.fromARGB(255, 149, 100, 36),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return ResponsiveWrapper(
//       child: SingleChildScrollView(
//         padding: const EdgeInsets.all(24),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               "SERVICES WE OFFER",
//               style: GoogleFonts.bangers(
//                 fontSize: 52,
//                 fontWeight: FontWeight.bold,
//                 color: const Color.fromARGB(255, 110, 164, 188),
//                 letterSpacing: 1.5,
//               ),
//             ),
//             const SizedBox(height: 36),
//             Wrap(
//               spacing: 24,
//               runSpacing: 24,
//               alignment: WrapAlignment.center,
//               children:
//                   services
//                       .map(
//                         (service) => _ServiceCard(
//                           icon: service.icon,
//                           title: service.title,
//                           description: service.description,
//                           colors: service.colors,
//                           iconColor: service.iconColor,
//                         ),
//                       )
//                       .toList(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class _ServiceInfo {
//   final IconData icon;
//   final String title;
//   final List<String> description; // Changed to List<String>
//   final List<Color> colors;
//   final Color iconColor;

//   const _ServiceInfo({
//     required this.icon,
//     required this.title,
//     required this.description,
//     required this.colors,
//     required this.iconColor,
//   });
// }

// class _ServiceCard extends StatelessWidget {
//   final IconData icon;
//   final String title;
//   final List<String> description;
//   final List<Color> colors;
//   final Color iconColor;

//   const _ServiceCard({
//     required this.icon,
//     required this.title,
//     required this.description,
//     required this.colors,
//     required this.iconColor,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 480,
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: colors,
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: colors.last.withOpacity(0.5),
//             blurRadius: 15,
//             offset: const Offset(0, 8),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             children: [
//               Icon(icon, size: 44, color: iconColor),
//               const SizedBox(width: 16),
//               Expanded(
//                 child: Text(
//                   title,
//                   style: GoogleFonts.anton(
//                     fontSize: 28,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     letterSpacing: 2,
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           const SizedBox(height: 14),
//           ...description.map(
//             (line) => Padding(
//               padding: const EdgeInsets.only(bottom: 8),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   const Text(
//                     "•  ",
//                     style: TextStyle(
//                       color: Colors.white70,
//                       fontSize: 20,
//                       height: 1.4,
//                     ),
//                   ),
//                   Expanded(
//                     child: Text(
//                       line,
//                       style: GoogleFonts.openSans(
//                         fontSize: 18,
//                         color: Colors.white.withOpacity(0.9),
//                         height: 1.4,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/responsive_wrapper.dart';

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
      colors: [Color(0xfff7971e), Color(0xffffba00)],
      iconColor: Colors.deepOrange,
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
      colors: [Color(0xff56ab2f), Color(0xffa8e063)],
      iconColor: Color.fromARGB(255, 21, 95, 23),
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
      colors: [Color(0xff00c6ff), Color(0xff0072ff)],
      iconColor: Color.fromARGB(255, 16, 72, 118),
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
      colors: [Color(0xffee9ca7), Color(0xffffdde1)],
      iconColor: Colors.pink,
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
      colors: [Color(0xff8e2de2), Color(0xff4a00e0)],
      iconColor: Colors.purpleAccent,
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
      colors: [Color(0xffff416c), Color(0xffff4b2b)],
      iconColor: Color.fromARGB(255, 97, 29, 29),
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
      colors: [Color(0xff11998e), Color(0xff38ef7d)],
      iconColor: Color.fromARGB(255, 4, 85, 77),
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
      colors: [Color(0xff36d1dc), Color(0xff5b86e5)],
      iconColor: Color.fromARGB(255, 25, 78, 102),
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
      colors: [Color(0xfff7971e), Color(0xffffba00)],
      iconColor: Color.fromARGB(255, 149, 100, 36),
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
                color: const Color.fromARGB(255, 110, 164, 188),
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

  const _ServiceInfo({
    required this.icon,
    required this.title,
    required this.description,
    required this.colors,
    required this.iconColor,
  });
}

class _ServiceCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<String> description;
  final List<Color> colors;
  final Color iconColor;

  const _ServiceCard({
    required this.icon,
    required this.title,
    required this.description,
    required this.colors,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 480,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: colors.last.withOpacity(0.5),
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
              Icon(icon, size: 44, color: iconColor),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  title,
                  style: GoogleFonts.anton(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          ...description.map(
            (line) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "•  ",
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 20,
                      height: 1.4,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      line,
                      style: GoogleFonts.openSans(
                        fontSize: 18,
                        color: Colors.white.withOpacity(0.9),
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
    );
  }
}
