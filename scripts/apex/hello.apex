// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents
    Map<String, Integer> employeeSalariesMap = new Map<String, Integer>();
        // Add key-value pairs to the Map
        // add John Doe => 50000
        // add Jane Smith => 60000
        // add Sam Brown => 55000
        // add Alice Johnson => 65000
        employeeSalariesMap.put('John Doe', 50000);
        employeeSalariesMap.put('Jane Smith', 60000);
        employeeSalariesMap.put('Sam Brown', 55000);
        employeeSalariesMap.put('Alice Johnson', 65000);
        // Initialize a list to store the names of high paid employees
        List<String> highPaidEmployees = new List<String>();
        // Iterate over the Map using a for loop
            // Check if the salary of the employee is more than 55000
                // Add the employee to the list of high paid employees
        for (String item : employeeSalariesMap.keySet()) {
            System.debug('Here is the item: ' + item);
            Integer getResult = employeeSalariesMap.get(item);
            System.debug('Here is the get result: ' + getResult);
            if (getResult > 55000) {
                highPaidEmployees.add(item);
                System.debug(item + ' is a high paid employee');

            } else {
                System.debug(item + ' is a low paid employee');
            }
        }
        // Return the list of high paid employees
        System.debug(highPaidEmployees); // Replace null with the variable you used to store the result