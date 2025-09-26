import 'package:flutter/material.dart';

void main() {
  runApp(const ContactApp());
}

class ContactApp extends StatelessWidget {
  const ContactApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ContactListScreen(),
    );
  }
}

class ContactListScreen extends StatelessWidget {
  const ContactListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[700],
        title: const Text(
          'Contact List',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Name Field
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Hasan',
                hintStyle: const TextStyle(fontSize: 16),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 10),

            // Phone Field
            TextFormField(
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                hintText: '01745-777777',
                hintStyle: const TextStyle(fontSize: 16),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: const BorderSide(color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Add Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey[700],
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Contact List
            Expanded(
              child: ListView(
                children: const [
                  ContactCard(name: 'Jawad', phone: '01877-777777'),
                  ContactCard(name: 'Ferdaus', phone: '01677-777777'),
                  ContactCard(name: 'Hasan', phone: '01745-777777'),
                  ContactCard(name: 'Hasan', phone: '01745-777777'),
                  ContactCard(name: 'Hasan', phone: '01745-777777'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  final String name;
  final String phone;

  const ContactCard({
    super.key,
    required this.name,
    required this.phone,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.8,
      margin: const EdgeInsets.symmetric(vertical: 5),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      child: ListTile(
        leading: const Icon(Icons.person, size: 32, color: Colors.brown),
        title: Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          phone,
          style: const TextStyle(fontSize: 14),
        ),
        trailing: const Icon(
          Icons.call,
          color: Colors.blue,
          size: 26,
        ),
      ),
    );
  }
}
