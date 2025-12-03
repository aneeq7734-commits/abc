import 'dart:io';

class Client {
  String name;
  String phone;
  String email;

  Client(this.name, this.phone, this.email);

  @override
  String toString() {
    return "$name | $phone | $email";
  }
}

List<Client> clients = [];

// ---------------- Add Client ----------------
void addClient() {
  stdout.write("Enter name: ");
  String? name = stdin.readLineSync();

  stdout.write("Enter phone: ");
  String? phone = stdin.readLineSync();

  stdout.write("Enter email: ");
  String? email = stdin.readLineSync();

  if (name == null || phone == null || email == null) {
    print(" Invalid input!\n");
    return;
  }

  clients.add(Client(name, phone, email));
  print("✔ Client added successfully!\n");
}

// ---------------- View All Clients ----------------
void viewClients() {
  if (clients.isEmpty) {
    print("No clients available.\n");
    return;
  }

  print("\n------ Client List ------");
  for (int i = 0; i < clients.length; i++) {
    print("${i + 1}. ${clients[i]}");
  }
  print("");
}

// ---------------- Search Client ----------------
void searchClient() {
  stdout.write("Enter name/phone/email to search: ");
  String? query = stdin.readLineSync();

  if (query == null || query.isEmpty) {
    print(" Invalid search query!\n");
    return;
  }

  var results = clients.where((c) =>
      c.name.toLowerCase().contains(query.toLowerCase()) ||
      c.phone.contains(query) ||
      c.email.toLowerCase().contains(query.toLowerCase()));

  if (results.isEmpty) {
    print(" No client found.\n");
  } else {
    print("\n🔍 Search Results:");
    for (var c in results) {
      print(c);
    }
    print("");
  }
}

// ---------------- Update Client ----------------
void updateClient() {
  if (clients.isEmpty) {
    print("No clients available.\n");
    return;
  }

  viewClients();

  stdout.write("Enter client number to update: ");
  String? input = stdin.readLineSync();

  if (input == null || int.tryParse(input) == null) {
    print(" Invalid number!\n");
    return;
  }

  int index = int.parse(input) - 1;

  if (index < 0 || index >= clients.length) {
    print(" Invalid client number.\n");
    return;
  }

  stdout.write("New name (${clients[index].name}): ");
  String newName = stdin.readLineSync() ?? "";

  stdout.write("New phone (${clients[index].phone}): ");
  String newPhone = stdin.readLineSync() ?? "";

  stdout.write("New email (${clients[index].email}): ");
  String newEmail = stdin.readLineSync() ?? "";

  if (newName.isNotEmpty) clients[index].name = newName;
  if (newPhone.isNotEmpty) clients[index].phone = newPhone;
  if (newEmail.isNotEmpty) clients[index].email = newEmail;

  print("✔ Client updated!\n");
}

// ---------------- Delete Client ----------------
void deleteClient() {
  if (clients.isEmpty) {
    print("No clients available.\n");
    return;
  }

  viewClients();

  stdout.write("Enter client number to delete: ");
  String? input = stdin.readLineSync();

  if (input == null || int.tryParse(input) == null) {
    print(" Invalid number!\n");
    return;
  }

  int index = int.parse(input) - 1;

  if (index < 0 || index >= clients.length) {
    print(" Invalid client number.\n");
    return;
  }

  clients.removeAt(index);
  print("🗑 Client deleted.\n");
}

// ---------------- Count Clients ----------------
void countClients() {
  print("Total Clients: ${clients.length}\n");
}

// ---------------- Main Menu ----------------
void main() {
  while (true) {
    print("""
========= CLIENT MANAGEMENT SYSTEM =========
1. Add Client
2. View All Clients
3. Search Client
4. Update Client
5. Delete Client
6. Count Total Clients
7. Exit
Enter your choice:
""");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        addClient();
        break;
      case "2":
        viewClients();
        break;
      case "3":
        searchClient();
        break;
      case "4":
        updateClient();
        break;
      case "5":
        deleteClient();
        break;
      case "6":
        countClients();
        break;
      case "7":
        print("Goodbye!");
        return;
      default:
        print(" Invalid choice! Enter 1–7.\n");
    }
  }
}
