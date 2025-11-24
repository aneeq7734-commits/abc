import 'dart:io';

// ===============================
//           DAY 1 STRUCTURE
// ===============================

void day1Menu() {
  while (true) {
    print("\n========= CLIENT MANAGEMENT SYSTEM (DAY 1) =========");
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
        print("[Day1] Add Client selected (Logic pending)");
        break;
      case '2':
        print("[Day1] View Clients selected (Logic pending)");
        break;
      case '3':
        print("[Day1] Update Client selected (Logic pending)");
        break;
      case '4':
        print("[Day1] Delete Client selected (Logic pending)");
        break;
      case '5':
        print("[Day1] Search Client selected (Logic pending)");
        break;
      case '6':
        print("Exiting Day 1 menu. Goodbye!");
        return;
      default:
        print("Invalid choice! Please enter 1-6.");
    }
  }
}

// ===============================
//           DAY 2 STRUCTURE
// ===============================

// Client class (Model)
class Client {
  static int _idCounter = 1;

  int clientID;
  String name;
  String phone;
  String email;

  Client({
    required this.name,
    required this.phone,
    required this.email,
  }) : clientID = _idCounter++;

  @override
  String toString() {
    return "ID: $clientID | Name: $name | Phone: $phone | Email: $email";
  }
}

// Client list
List<Client> clients = [];

// Function skeletons
void addClient() {
  print("\n[Day2] Add Client Function Called (Logic will be added in Day 3)");
}

void viewClients() {
  print("\n[Day2] View Clients Function Called (Logic will be added in Day 3)");
}

void searchClient() {
  print("\n[Day2] Search Client Function Called (Logic pending)");
}

void updateClient() {
  print("\n[Day2] Update Client Function Called (Logic pending)");
}

void deleteClient() {
  print("\n[Day2] Delete Client Function Called (Logic pending)");
}

// ===============================
//           MAIN FUNCTION
// ===============================
void main() {
  print("=== Welcome to Client Management System ===");
  
  // First, show Day 1 menu
  day1Menu();

  // After Day 1 menu exits, Day 2 structure can be used
  print("\n=== Day 2 Structure Ready ===");
  print("Client class and function skeletons are ready for logic implementation.");
}
