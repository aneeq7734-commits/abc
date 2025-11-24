import 'dart:io';

void main() {
  List<Map<String, dynamic>> clients = []; // Client data store
  int clientId = 1; // Unique ID counter

  while (true) {
    print("\n=== Client Management System ===");
    print("1. Add Client");
    print("2. View Clients");
    print("3. Update Client");
    print("4. Delete Client");
    print("5. Search Client");
    print("6. Exit");
    stdout.write("Enter your choice: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print("\n[Add Client] Feature coming soon...");
        break;
      case '2':
        print("\n[View Clients] Feature coming soon...");
        break;
      case '3':
        print("\n[Update Client] Feature coming soon...");
        break;
      case '4':
        print("\n[Delete Client] Feature coming soon...");
        break;
      case '5':
        print("\n[Search Client] Feature coming soon...");
        break;
      case '6':
        print("Exiting program. Goodbye!");
        exit(0);
      default:
        print("Invalid option! Please enter 1-6.");
    }
  }
}
