CREATE TABLE AuthenticationSystem (LoginID varchar(255) NOT NULL, Password varchar(10));
CREATE TABLE Books (ISBN int(10) NOT NULL UNIQUE, Price int(10) NOT NULL, Category varchar(255) NOT NULL, Title varchar(255) NOT NULL, Edition int(10) NOT NULL, AuthNo varchar(20) NOT NULL);
CREATE TABLE Publisher (Publisher_Id varchar(20) NOT NULL UNIQUE, Name varchar(255) NOT NULL, PublicationYear int(10) NOT NULL);
CREATE TABLE Readers (User_Id int(10) NOT NULL UNIQUE, Email varchar(55) NOT NULL, Phone int(20), AdDress varchar(255), Reader_FirstName varchar(255), Reader_LastName varchar(50));
CREATE TABLE Reports (User_Id int(10) NOT NULL AUTO_INCREMENT, `RegistrationNo` int(10) NOT NULL, Book_No int(10), `Issue/Return` date, PRIMARY KEY (User_Id));
CREATE TABLE Staff (Staff_Id varchar(20) NOT NULL UNIQUE, Staff_Name varchar(50) NOT NULL);