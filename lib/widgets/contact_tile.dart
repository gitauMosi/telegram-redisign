// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:fast_contacts/fast_contacts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ContactTile extends StatelessWidget {
  Contact contact;
   ContactTile({
    super.key,
    required this.contact,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
                      leading: const CircleAvatar(
                        radius: 20,
                        child: Icon(Icons.person),
                      ),
                      title: Text(contact.displayName),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contact.phones.isNotEmpty
                                ? contact.phones[0].number.toString()
                                : "Unknown",
                          ),
                          Text(
                            contact.phones.isNotEmpty
                                ? contact.phones[0].label.toString()
                                : "Unknown",
                          ),
                          Text(contact.emails.length > 1
                              ? contact.emails[0].toString()
                              : ""),
                        ],
                      ),
                    );
  }
}
