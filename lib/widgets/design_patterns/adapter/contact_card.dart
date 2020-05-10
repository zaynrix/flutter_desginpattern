import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:flutter_design_patterns/design_patterns/adapter/contact.dart';

class ContactCard extends StatelessWidget {
  final Contact contact;

  const ContactCard({
    @required this.contact,
  }) : assert(contact != null);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.fullName),
        subtitle: Text(contact.email),
        leading: CircleAvatar(
          backgroundColor: Colors.grey,
          foregroundColor: Colors.white,
          child: Text(contact.fullName[0]),
        ),
        trailing: Icon(
          contact.favourite ? Icons.star : Icons.star_border,
        ),
      ),
    );
  }
}
