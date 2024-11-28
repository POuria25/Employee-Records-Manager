       IDENTIFICATION DIVISION.
       PROGRAM-ID. MODIFY-RECORDS.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT INPUT-FILE ASSIGN TO 'employee.txt'.
           SELECT OUTPUT-FILE ASSIGN TO 'modified_employee.txt'.

       DATA DIVISION.
       FILE SECTION.
       FD INPUT-FILE.
      * INPUT-RECORD is a data structure to store data from the file
       01 INPUT-RECORD.
           05 EMP-ID           PIC X(3).
           05 EMP-NAME         PIC X(15).
           05 EMP-HOURS        PIC 9(2).
           05 EMP-RATE         PIC 9(2)V99.
           05 EMP-DEDUCTION    PIC 9(2).
      
      * OUPTPUT-OUTPUT is a data structure to store modified data
       FD OUTPUT-FILE.
       01 OUTPUT-RECORD.
           05 EMP-ID-OUT           PIC X(3).
           05 EMP-NAME-OUT         PIC X(15).
           05 EMP-HOURS-OUT        PIC 9(2).
           05 EMP-RATE-OUT         PIC 9(2)v99.
           05 EMP-DEDUCTION-OUT    PIC 9(2).

       WORKING-STORAGE SECTION.
       01 WS-MODIFIED-RATE         PIC 9(2)V99.
       01 EOF-FLAG                 PIC X VALUE 'N'.

       PROCEDURE DIVISION.
           OPEN INPUT INPUT-FILE
           OPEN OUTPUT OUTPUT-FILE

           PERFORM UNTIL EOF-FLAG = 'Y'
               READ INPUT-FILE INTO INPUT-RECORD
                   AT END
                       MOVE 'Y' TO EOF-FLAG
                   NOT AT END
                       MOVE EMP-ID TO EMP-ID-OUT
                       MOVE EMP-NAME TO EMP-NAME-OUT
                       MOVE EMP-HOURS TO EMP-HOURS-OUT
                       MOVE EMP-DEDUCTION TO EMP-DEDUCTION-OUT

      *                Modify the rate by multiplying it by 2
                       COMPUTE WS-MODIFIED-RATE = EMP-RATE * 2
                       MOVE WS-MODIFIED-RATE TO EMP-RATE-OUT
      
      *                Write the modified record to output file
                       WRITE OUTPUT-RECORD
               END-READ
           END-PERFORM


           CLOSE INPUT-FILE
           CLOSE OUTPUT-FILE
           STOP RUN.



