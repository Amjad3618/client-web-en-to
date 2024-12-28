import 'package:flutter/material.dart';

class PremiumScreenMobile extends StatefulWidget {
  const PremiumScreenMobile({super.key});

  @override
  State<PremiumScreenMobile> createState() => _PremiumScreenMobileState();
}

class _PremiumScreenMobileState extends State<PremiumScreenMobile> {
  int selectedPlanIndex = 1; // Default to middle plan

  final List<Map<String, dynamic>> subscriptionPlans = [
    {
      'title': 'Basic',
      'price': '\$5',
      'duration': '1 month',
      'features': ['Unlimited Access', 'No Ads', 'Basic Support'],
      'isPopular': false,
    },
    {
      'title': 'Premium',
      'price': '\$7',
      'duration': '3 months',
      'features': ['Unlimited Access', 'No Ads', 'Priority Support', 'Offline Mode'],
      'isPopular': true,
    },
    {
      'title': 'Pro',
      'price': '\$12',
      'duration': '6 months',
      'features': [
        'Unlimited Access',
        'No Ads',
        'Priority Support',
        'Offline Mode',
        'Custom Features'
      ],
      'isPopular': false,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Premium Plans",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      backgroundColor: Colors.grey[50],
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Header Section
              const Text(
                "Choose Your Plan",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Select the perfect plan for your needs",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 32),

              // Subscription Plans
              Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                children: List.generate(
                  subscriptionPlans.length,
                  (index) => _buildPlanCard(index),
                ),
              ),

              const SizedBox(height: 32),

              // Additional Information
              Container(
                constraints: const BoxConstraints(maxWidth: 800),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Why Choose Premium?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    _buildFeatureRow(
                      Icons.speed,
                      "Lightning Fast",
                      "Experience instant translations with no waiting time",
                    ),
                    _buildFeatureRow(
                      Icons.security,
                      "Secure & Private",
                      "Your data is encrypted and never shared",
                    ),
                    _buildFeatureRow(
                      Icons.support_agent,
                      "24/7 Support",
                      "Get help whenever you need it",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPlanCard(int index) {
    final plan = subscriptionPlans[index];
    final isSelected = selectedPlanIndex == index;

    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: isSelected ? Colors.blueAccent : Colors.grey.shade200,
          width: isSelected ? 2 : 1,
        ),
        boxShadow: isSelected
            ? [
                BoxShadow(
                  // ignore: deprecated_member_use
                  color: Colors.blue.withOpacity(0.1),
                  blurRadius: 12,
                  spreadRadius: 4,
                ),
              ]
            : null,
      ),
      child: Stack(
        children: [
          // Popular Badge
          if (plan['isPopular'])
            Positioned(
              top: 12,
              right: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Text(
                  'POPULAR',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

          // Plan Content
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  plan['title'],
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      plan['price'],
                      style: const TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(width: 4),
                    Text(
                      // ignore: prefer_interpolation_to_compose_strings
                      '/' + plan['duration'],
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                ...plan['features'].map<Widget>((feature) => Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.check_circle,
                            color: Colors.green,
                            size: 20,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            feature,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                    )),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() => selectedPlanIndex = index);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              "Thank you for choosing the ${plan['title']} plan!"),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          isSelected ? Colors.blueAccent : Colors.grey[200],
                      foregroundColor:
                          isSelected ? Colors.white : Colors.grey[800],
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      isSelected ? 'Current Plan' : 'Choose Plan',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFeatureRow(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.blue[50],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: Colors.blueAccent),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}