// Define a list to store your contacts
List<Map<String, dynamic>> contacts = [];

// Function to add a contact
void addContact(String cname, String cnumber) {
  int id = contacts.length + 1; // Generate a unique ID
  Map<String, dynamic> contact = {
    'id': id,
    'cname': cname,
    'cnumber': cnumber,
  };
  contacts.add(contact);
}

// Function to remove a contact by ID
void removeContact(int id) {
  contacts.removeWhere((contact) => contact['id'] == id);
}

// Function to update a contact by ID
void updateContact(int id, String newCname, String newCnumber) {
  int contactIndex = contacts.indexWhere((contact) => contact['id'] == id);
  if (contactIndex != -1) {
    contacts[contactIndex]['cname'] = newCname;
    contacts[contactIndex]['cnumber'] = newCnumber;
  }
}

// Example usage:
addContact('John', '123-456-7890');
addContact('Alice', '987-654-3210');
removeContact(1); // Remove contact with ID 1
updateContact(2, 'Bob', '555-555-5555'); // Update contact with ID 2