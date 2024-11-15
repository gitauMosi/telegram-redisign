import 'package:fast_contacts/fast_contacts.dart';
import 'package:permission_handler/permission_handler.dart';

Future<List<Contact>> fetchContacts() async {
  bool isGranted = await Permission.contacts.status.isGranted;

  if (!isGranted) {
    isGranted = await Permission.contacts.request().isGranted;
  }

  if (isGranted) {
    return await FastContacts.getAllContacts();
  }
  return [];
}
