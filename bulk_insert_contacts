// Create a list of contacts
List<Contact> conList = new List<Contact> {
	new Contact(FirstName = ‘Joe’, LastName = ‘Smith’, Department = ‘Finance’),
		new Contact(FirstName = ‘Kathy’, LastName = ‘Smith’, Department = ‘Technology’),
		new Contact(FirstName = ‘Caroline’, LastName = ‘Roth’, Department = ‘Finance’),
		new Contact(FirstName = ‘Kim’, LastName = ‘Shain’, Department = ‘Education’)};

// Bulk insert all contact with one DML call
insert conList;

// Iterate through the list and add a title only if the department is finance
for(Contact con : conList) {
	if (con.Department == ‘Finance’) {
		con.Title = ‘Financial analyst’;
		// Add updated contact sObject to the list
		listToUpdate.add(con);
	}
}

// Bulk update all contacts with one DML call
update listToUpdate;
