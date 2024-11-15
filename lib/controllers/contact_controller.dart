import 'package:fast_contacts/fast_contacts.dart';
import 'package:get/get.dart';
import 'package:telegram/services/contact_services.dart';

class ContactController extends GetxController {

  RxList<Contact> contacts = <Contact>[].obs;

  @override
  void onInit() {
    super.onInit();
    //fetch contacts
    getAllContacts();
  }

  Future<void> getAllContacts() async {
    try {
      // Call RemoteServices to fetch posts
      List<Contact> posts = await fetchContacts();
      contacts.assignAll(posts); // Update the observable list
    } catch (e) {
      // Handle errors here, e.g., logging or showing a message
      print('Failed to fetch contacts: $e');
    }
  }

  

}