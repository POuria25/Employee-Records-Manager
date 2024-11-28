# Employee Records Manager

This COBOL program is designed to manage employee records. It reads data from an input file, processes the records (e.g., updates or modifies information), and writes the updated data to an output file. The project demonstrates COBOL's file handling capabilities, making it a great resource for learning structured programming and file processing in COBOL.

# Features
Reads employee data from an input file.
Processes records with specific modifications or updates.
Writes the modified data to an output file.
Illustrates COBOL's capabilities for handling sequential files.

# Structure
Identification Division
Declares the program name as MODIFY-RECORDS.

# Environment Division
Specifies the input file (employee.txt) and output file (modified_employee.txt) used in the program.

# Data Division
File Section:
Defines the input and output file structures.
Working-Storage Section:
Includes variables for temporary storage and processing.

# Procedure Division
1.Opens the input and output files.
2.Reads each record from the input file.
3.Applies necessary modifications to the records.
4.Writes the updated records to the output file.
5.Closes the files upon completion.

# Usage
Ensure the input file employee.txt is in the program's directory.

# Compile the COBOL program using a COBOL compiler (e.g., GnuCOBOL):
cobc -x employee.cbl -o employee_manager

# Run the program:
./employee_manager

# Requirements
A COBOL compiler (e.g., GnuCOBOL).
Basic understanding of COBOL programming.
An input file (employee.txt) with properly formatted employee records.

# Future Improvements
Add validation for input data.
Allow dynamic file names for input and output.
Expand functionality to include adding or deleting records.

# License
This project is open-source and available for educational and personal use.
