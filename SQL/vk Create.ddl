CREATE TABLE Authors (A_Id numeric(19, 0) NOT NULL, name varchar(50) NOT NULL, adress varchar(200), PRIMARY KEY (A_Id));
CREATE TABLE Books (ISBN numeric(19, 0) NOT NULL, name varchar(50) NOT NULL, Publisher varchar(50), Genre varchar(255), NumberOfBooks int(10), ShelfDetails varchar(10) comment 'Books can be found in which shelf', AuthorsA_Id numeric(19, 0) NOT NULL, PRIMARY KEY (ISBN));
CREATE TABLE Librarian (L_id numeric(19, 0) NOT NULL, name varchar(50) NOT NULL, Adress varchar(200), PRIMARY KEY (L_id));
CREATE TABLE RentalRecords (Rental_Id numeric(19, 0) NOT NULL, `date` datetime NOT NULL UNIQUE, RentDetailsrecord_id numeric(19, 0) NOT NULL, PRIMARY KEY (Rental_Id));
CREATE TABLE RentDetails (record_id numeric(19, 0) NOT NULL, amount numeric(19, 0) DEFAULT NOT EQUAL 0 NOT NULL, Duration int(11), Fees int(10), RentedOutBy numeric(19, 0) NOT NULL, UserUID int(10) NOT NULL, BooksISBN numeric(19, 0) NOT NULL, PRIMARY KEY (record_id));
CREATE TABLE `User` (UID int(10) NOT NULL, Name varchar(255) NOT NULL, Address varchar(255), Contact int(15) UNIQUE, `Government ID Number` varchar(128) NOT NULL UNIQUE comment 'For Security Purposes', PRIMARY KEY (UID));
ALTER TABLE RentDetails ADD CONSTRAINT FKRentDetail463066 FOREIGN KEY (UserUID) REFERENCES `User` (UID);
ALTER TABLE RentalRecords ADD CONSTRAINT FKRentalReco207465 FOREIGN KEY (RentDetailsrecord_id) REFERENCES RentDetails (record_id);
ALTER TABLE RentDetails ADD CONSTRAINT FKRentDetail666351 FOREIGN KEY (RentedOutBy) REFERENCES Librarian (L_id);
ALTER TABLE RentDetails ADD CONSTRAINT FKRentDetail95809 FOREIGN KEY (BooksISBN) REFERENCES Books (ISBN);
ALTER TABLE Books ADD CONSTRAINT FKBooks441696 FOREIGN KEY (AuthorsA_Id) REFERENCES Authors (A_Id);

