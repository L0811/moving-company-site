import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/responsive_wrapper.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final _formKey = GlobalKey<FormState>();
  final nameCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  bool _submitted = false;

  void _submitForm() {
    setState(() => _submitted = true);

    if (_formKey.currentState!.validate()) {
      print("Form submitted!");
      // Show confirmation
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Your request has been submitted!")),
      );
    }
  }

  Widget _buildRequiredLabel(String label) {
    return RichText(
      text: TextSpan(
        text: label,
        style: GoogleFonts.poppins(color: Colors.black),
        children: const [
          TextSpan(text: ' *', style: TextStyle(color: Colors.red)),
        ],
      ),
    );
  }

  InputDecoration _inputStyle(String hint) {
    return InputDecoration(
      hintText: hint,
      filled: true,
      fillColor: const Color(0xfff6f9fc),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.grey),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.teal),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveWrapper(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Center(
          child: Container(
            width: 900,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 18,
                  offset: Offset(0, 8),
                ),
              ],
            ),
            child: Form(
              key: _formKey,
              autovalidateMode:
                  _submitted
                      ? AutovalidateMode.always
                      : AutovalidateMode.disabled,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                      color: const Color(0xFFFEE440), // Yellow background
                      child: Text(
                        "GET YOUR FREE QUOTE",
                        style: GoogleFonts.bebasNeue(
                          fontSize: 48,
                          color: Colors.black, // Black text
                          letterSpacing: 2,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // Name
                  TextFormField(
                    controller: nameCtrl,
                    decoration: _inputStyle(
                      "John Doe",
                    ).copyWith(label: _buildRequiredLabel("Name")),
                    validator: (v) => v!.isEmpty ? "Name is required" : null,
                  ),
                  const SizedBox(height: 16),

                  // Address Sections
                  LayoutBuilder(
                    builder: (context, constraints) {
                      bool isWide = constraints.maxWidth >= 800;
                      return isWide
                          ? Row(
                            children: [
                              Expanded(child: _buildFromAddressSection()),
                              const SizedBox(width: 16),
                              Expanded(child: _buildToAddressSection()),
                            ],
                          )
                          : Column(
                            children: [
                              _buildFromAddressSection(),
                              const SizedBox(height: 16),
                              _buildToAddressSection(),
                            ],
                          );
                    },
                  ),

                  const SizedBox(height: 16),

                  // Phone
                  TextFormField(
                    controller: phoneCtrl,
                    keyboardType: TextInputType.phone,
                    decoration: _inputStyle(
                      "(123) 456-7890",
                    ).copyWith(label: _buildRequiredLabel("Phone")),
                    validator:
                        (v) => v!.isEmpty ? "Phone number is required" : null,
                  ),
                  const SizedBox(height: 16),

                  // Email
                  TextFormField(
                    controller: emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    decoration: _inputStyle(
                      "example@email.com",
                    ).copyWith(labelText: "Email (optional)"),
                    validator: (v) {
                      if (v != null && v.isNotEmpty) {
                        final emailPattern = RegExp(
                          r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$",
                        );
                        if (!emailPattern.hasMatch(v)) {
                          return "Enter a valid email address";
                        }
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 24),

                  // Submit button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        // backgroundColor: const Color(0xff4a90e2),
                        backgroundColor: Color(0xFFFEE440),
                        textStyle: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: _submitForm,
                      child: const Text("SUBMIT"),
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

  Widget _buildFromAddressSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "From which address",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: _inputStyle(
            "123 Main St",
          ).copyWith(label: _buildRequiredLabel("Address Line 1")),
          validator: (v) => v!.isEmpty ? "Address is required" : null,
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: _inputStyle(
            "Toronto",
          ).copyWith(label: _buildRequiredLabel("City")),
          validator: (v) => v!.isEmpty ? "City is required" : null,
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: _inputStyle(
            "A1A 1A1",
          ).copyWith(label: _buildRequiredLabel("Postal Code")),
          validator: (v) => v!.isEmpty ? "Postal code is required" : null,
        ),
      ],
    );
  }

  Widget _buildToAddressSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "To which address",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: _inputStyle(
            "456 Queen St",
          ).copyWith(label: _buildRequiredLabel("Address Line 1")),
          validator: (v) => v!.isEmpty ? "Address is required" : null,
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: _inputStyle(
            "Vancouver",
          ).copyWith(label: _buildRequiredLabel("City")),
          validator: (v) => v!.isEmpty ? "City is required" : null,
        ),
        const SizedBox(height: 8),
        TextFormField(
          decoration: _inputStyle(
            "V5K 0A1",
          ).copyWith(label: _buildRequiredLabel("Postal Code")),
          validator: (v) => v!.isEmpty ? "Postal code is required" : null,
        ),
      ],
    );
  }
}
