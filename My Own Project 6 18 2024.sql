DROP DATABASE IF EXISTS `Saint_Jonathan_School`;
CREATE DATABASE `Saint_Jonathan_School`;
USE `Saint_Jonathan_School`;


-- Create the StudentInformation table
CREATE TABLE StudentInformation (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Address VARCHAR(255),
    PhoneNumber VARCHAR(20),
    Email VARCHAR(100),
    ParentGuardianName VARCHAR(100),
    ParentGuardianPhone VARCHAR(20),
    EmergencyContactName VARCHAR(100),
    EmergencyContactPhone VARCHAR(20),
    GradeLevel INT,
    PreviousSchool VARCHAR(100),
    DateOfAdmission DATE,
    StudentStatus ENUM('Active', 'Inactive', 'Graduated'),
    MedicalConditions TEXT,
    Notes TEXT,
    PhotoURL VARCHAR(255)
);

-- Create the StudentDemographics table
CREATE TABLE StudentDemographics (
    StudentID INT PRIMARY KEY,
    Gender ENUM('Male', 'Female'),
    Ethnicity VARCHAR(50),
    Race VARCHAR(50),
    Religion VARCHAR(50),
    SocioeconomicStatus VARCHAR(50),
    DisabilityStatus VARCHAR(50),
    LanguageSpoken VARCHAR(50),
    CitizenshipStatus VARCHAR(50)
);

-- Insert sample data into StudentInformation table for boys
INSERT INTO StudentInformation (FirstName, LastName, DateOfBirth, Address, PhoneNumber, Email, ParentGuardianName, ParentGuardianPhone, EmergencyContactName, EmergencyContactPhone, GradeLevel, PreviousSchool, DateOfAdmission, StudentStatus, MedicalConditions, Notes, PhotoURL)
VALUES
    -- Boys
    ('John', 'Smith', '2005-03-12', '123 Oak Street, Cityville, Stateville, 45678', '555-1234', 'john.smith@example.com', 'Michael Smith', '555-5678', 'Sarah Smith', '555-8765', 9, 'Junior High School A', '2022-08-30', 'Active', '', 'Loves playing soccer', ''),
    ('James', 'Brown', '2006-05-18', '456 Maple Avenue, Townsville, Statetown, 56789', '555-2345', 'james.brown@example.com', 'David Brown', '555-6789', 'Emily Brown', '555-9876', 8, 'Middle School B', '2023-09-05', 'Active', 'Allergic to peanuts', 'Enjoys playing basketball', ''),
    ('Ethan', 'Wilson', '2005-07-22', '789 Pine Street, Villagetown, Countyville, 67890', '555-3456', 'ethan.wilson@example.com', 'Andrew Wilson', '555-7890', 'Emma Wilson', '555-0987', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Enjoys swimming', ''),
    ('Daniel', 'Martinez', '2006-02-05', '901 Oak Street, Cityville, Stateville, 45678', '555-4567', 'daniel.martinez@example.com', 'Jose Martinez', '555-8901', 'Ana Martinez', '555-1098', 6, 'Kindergarten A', '2024-09-05', 'Active', '', 'Likes playing with toys', ''),
    ('William', 'Garcia', '2005-11-17', '234 Maple Avenue, Townsville, Statetown, 56789', '555-5678', 'william.garcia@example.com', 'Christopher Garcia', '555-6789', 'Jessica Garcia', '555-8765', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Interested in science', ''),
    ('Alexander', 'Lopez', '2006-04-09', '567 Cedar Lane, Hamletville, Districttown, 78901', '555-6789', 'alexander.lopez@example.com', 'David Lopez', '555-7890', 'Maria Lopez', '555-2345', 8, 'Middle School D', '2023-09-05', 'Active', '', 'Enjoys playing video games', ''),
    ('Michael', 'Hernandez', '2005-09-03', '890 Elm Street, Villagetown, Countyville, 67890', '555-8765', 'michael.hernandez@example.com', 'Antonio Hernandez', '555-1098', 'Sofia Hernandez', '555-5678', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Likes drawing', ''),
    ('Benjamin', 'Adams', '2006-06-28', '123 Pine Street, Cityville, Stateville, 45678', '555-1098', 'benjamin.adams@example.com', 'Michael Adams', '555-5678', 'Michelle Adams', '555-7890', 6, 'Kindergarten A', '2024-09-05', 'Active', '', 'Enjoys playing with blocks', ''),
    ('Jacob', 'Thomas', '2005-10-30', '456 Maple Avenue, Townsville, Statetown, 56789', '555-8901', 'jacob.thomas@example.com', 'David Thomas', '555-2345', 'Linda Thomas', '555-6789', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Likes reading books', ''),
    ('Matthew', 'Lee', '2006-01-14', '789 Cedar Lane, Hamletville, Districttown, 78901', '555-5678', 'matthew.lee@example.com', 'James Lee', '555-7890', 'Mary Lee', '555-2345', 8, 'Middle School D', '2023-09-05', 'Active', '', 'Enjoys playing baseball', ''),
    ('Jackson', 'Gonzalez', '2005-05-07', '901 Oak Street, Cityville, Stateville, 45678', '555-6789', 'jackson.gonzalez@example.com', 'Daniel Gonzalez', '555-8901', 'Carol Gonzalez', '555-4567', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Likes playing football', ''),
    ('David', 'Perez', '2006-12-20', '234 Maple Avenue, Townsville, Statetown, 56789', '555-4567', 'david.perez@example.com', 'Juan Perez', '555-7890', 'Maria Perez', '555-0987', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Enjoys playing chess', ''),
    ('Joseph', 'Robinson', '2005-11-02', '567 Cedar Lane, Hamletville, Districttown, 78901', '555-7890', 'joseph.robinson@example.com', 'Christopher Robinson', '555-2345', 'Stephanie Robinson', '555-5678', 8, 'Middle School B', '2023-09-05', 'Active', '', 'Interested in astronomy', ''),
    ('Andrew', 'Cook', '2006-08-15', '890 Elm Street, Villagetown, Countyville, 67890', '555-3456', 'andrew.cook@example.com', 'Thomas Cook', '555-6789', 'Patricia Cook', '555-8765', 6, 'Kindergarten A', '2024-09-05', 'Active', '', 'Likes playing with toy cars', ''),
    ('Logan', 'Bailey', '2005-04-19', '123 Oak Street, Cityville, Stateville, 45678', '555-2345', 'logan.bailey@example.com', 'Ryan Bailey', '555-7890', 'Jessica Bailey', '555-0987', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Enjoys cycling', ''),
    ('Christopher', 'Morris', '2006-02-01', '456 Maple Avenue, Townsville, Statetown, 56789', '555-5678', 'christopher.morris@example.com', 'William Morris', '555-8901', 'Emily Morris', '555-2345', 8, 'Middle School D', '2023-09-05', 'Active', '', 'Plays guitar', ''),
    ('Joshua', 'Wright', '2005-09-13', '789 Pine Street, Villagetown, Countyville, 67890', '555-6789', 'joshua.wright@example.com', 'Matthew Wright', '555-1098', 'Laura Wright', '555-5678', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Enjoys swimming', ''),
    ('Gabriel', 'King', '2006-04-27', '901 Oak Street, Cityville, Stateville, 45678', '555-7890', 'gabriel.king@example.com', 'Jason King', '555-2345', 'Michelle King', '555-6789', 6, 'Kindergarten A', '2024-09-05', 'Active', '', 'Likes playing with LEGO', ''),
    ('Jonathan', 'Scott', '2005-03-05', '234 Maple Avenue, Townsville, Statetown, 56789', '555-8901', 'jonathan.scott@example.com', 'Brian Scott', '555-4567', 'Rachel Scott', '555-6789', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Enjoys painting', ''),
    ('Justin', 'Adams', '2006-10-10', '567 Cedar Lane, Hamletville, Districttown, 78901', '555-6789', 'justin.adams@example.com', 'Steven Adams', '555-7890', 'Deborah Adams', '555-2345', 8, 'Middle School D', '2023-09-05', 'Active', '', 'Loves playing basketball', ''),
    ('Brandon', 'Thomas', '2005-05-25', '890 Elm Street, Villagetown, Countyville, 67890', '555-5678', 'brandon.thomas@example.com', 'Timothy Thomas', '555-1098', 'Angela Thomas', '555-4567', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Enjoys playing soccer', ''),
    ('Christian', 'Hernandez', '2006-03-03', '123 Pine Street, Cityville, Stateville, 45678', '555-1098', 'christian.hernandez@example.com', 'Antonio Hernandez', '555-5678', 'Sofia Hernandez', '555-7890', 6, 'Kindergarten A', '2024-09-05', 'Active', '', 'Likes reading books', ''),
    ('Isaac', 'Martinez', '2005-12-12', '456 Maple Avenue, Townsville, Statetown, 56789', '555-4567', 'isaac.martinez@example.com', 'Jose Martinez', '555-6789', 'Ana Martinez', '555-8901', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Enjoys playing soccer', ''),
    ('Nathan', 'Garcia', '2006-09-09', '789 Cedar Lane, Hamletville, Districttown, 78901', '555-5678', 'nathan.garcia@example.com', 'Christopher Garcia', '555-7890', 'Jessica Garcia', '555-2345', 8, 'Middle School D', '2023-09-05', 'Active', '', 'Interested in science', ''),
    ('Ryan', 'Lopez', '2005-08-18', '890 Elm Street, Villagetown, Countyville, 67890', '555-8765', 'ryan.lopez@example.com', 'David Lopez', '555-1098', 'Maria Lopez', '555-5678', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Enjoys playing video games', ''),
    ('Elijah', 'Wilson', '2006-07-07', '123 Oak Street, Cityville, Stateville, 45678', '555-2345', 'elijah.wilson@example.com', 'Andrew Wilson', '555-6789', 'Emma Wilson', '555-8901', 6, 'Kindergarten A', '2024-09-05', 'Active', '', 'Likes drawing', '');

-- Insert sample data into StudentDemographics table for boys
INSERT INTO StudentDemographics (StudentID, Gender, Ethnicity, Race, Religion, SocioeconomicStatus, DisabilityStatus, LanguageSpoken, CitizenshipStatus)
VALUES
    (1, 'Male', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (2, 'Male', 'Black/African American', 'Black', 'Muslim', 'Lower class', 'None', 'English', 'US Citizen'),
    (3, 'Male', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (4, 'Male', 'White', 'White', 'Christian', 'Upper class', '', 'English', 'US Citizen'),
    (5, 'Male', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (6, 'Male', 'Black/African American', 'Black', 'Christian', 'Lower class', '', 'English', 'US Citizen'),
    (7, 'Male', 'White', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (8, 'Male', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (9, 'Male', 'Black/African American', 'Black', 'Christian', 'Lower class', '', 'English', 'US Citizen'),
    (10, 'Male', 'White', 'White', 'Christian', 'Upper class', '', 'English', 'US Citizen'),
    (11, 'Male', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (12, 'Male', 'Asian', 'Asian', 'Buddhist', 'Middle class', '', 'English', 'US Citizen'),
    (13, 'Male', 'White', 'White', 'Christian', 'Upper class', '', 'English', 'US Citizen'),
    (14, 'Male', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (15, 'Male', 'Black/African American', 'Black', 'Christian', 'Lower class', '', 'English', 'US Citizen'),
    (16, 'Male', 'White', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (17, 'Male', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (18, 'Male', 'Black/African American', 'Black', 'Christian', 'Lower class', '', 'English', 'US Citizen'),
    (19, 'Male', 'White', 'White', 'Christian', 'Upper class', '', 'English', 'US Citizen'),
    (20, 'Male', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (21, 'Male', 'Asian', 'Asian', 'Hindu', 'Middle class', '', 'English', 'US Citizen'),
    (22, 'Male', 'White', 'White', 'Christian', 'Upper class', '', 'English', 'US Citizen'),
    (23, 'Male', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (24, 'Male', 'Black/African American', 'Black', 'Christian', 'Lower class', '', 'English', 'US Citizen'),
    (25, 'Male', 'Asian', 'Asian', 'Hindu', 'Upper class', '', 'English', 'US Citizen');

-- Insert sample data into StudentInformation table for girls
INSERT INTO StudentInformation (FirstName, LastName, DateOfBirth, Address, PhoneNumber, Email, ParentGuardianName, ParentGuardianPhone, EmergencyContactName, EmergencyContactPhone, GradeLevel, PreviousSchool, DateOfAdmission, StudentStatus, MedicalConditions, Notes, PhotoURL)
VALUES
    -- Girls
    ('Emma', 'Johnson', '2005-09-22', '789 Pine Street, Villagetown, Countyville, 67890', '555-3456', 'emma.johnson@example.com', 'Sarah Johnson', '555-7890', 'Jason Johnson', '555-0987', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Plays piano in school band', ''),
    ('Olivia', 'Davis', '2006-02-14', '890 Cedar Lane, Hamletville, Districttown, 78901', '555-4567', 'olivia.davis@example.com', 'Jessica Davis', '555-8901', 'Matthew Davis', '555-1098', 8, 'Middle School D', '2023-09-05', 'Active', '', 'Interested in photography', ''),
    ('Sophia', 'Martinez', '2005-07-15', '901 Oak Street, Cityville, Stateville, 45678', '555-6789', 'sophia.martinez@example.com', 'Jose Martinez', '555-7890', 'Ana Martinez', '555-2345', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Enjoys playing with dolls', ''),
    ('Isabella', 'Garcia', '2006-02-03', '234 Maple Avenue, Townsville, Statetown, 56789', '555-5678', 'isabella.garcia@example.com', 'Christopher Garcia', '555-6789', 'Jessica Garcia', '555-8765', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Enjoys painting', ''),
    ('Mia', 'Lopez', '2005-11-11', '567 Cedar Lane, Hamletville, Districttown, 78901', '555-7890', 'mia.lopez@example.com', 'David Lopez', '555-2345', 'Maria Lopez', '555-5678', 8, 'Middle School D', '2023-09-05', 'Active', '', 'Plays violin', ''),
    ('Charlotte', 'Hernandez', '2006-08-08', '890 Elm Street, Villagetown, Countyville, 67890', '555-1098', 'charlotte.hernandez@example.com', 'Antonio Hernandez', '555-5678', 'Sofia Hernandez', '555-7890', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Likes drawing', ''),
    ('Amelia', 'Martinez', '2005-12-19', '123 Pine Street, Cityville, Stateville, 45678', '555-2345', 'amelia.martinez@example.com', 'Jose Martinez', '555-6789', 'Ana Martinez', '555-8901', 6, 'Kindergarten A', '2024-09-05', 'Active', '', 'Enjoys playing with toys', ''),
    ('Evelyn', 'Gonzalez', '2006-06-26', '456 Maple Avenue, Townsville, Statetown, 56789', '555-5678', 'evelyn.gonzalez@example.com', 'Daniel Gonzalez', '555-7890', 'Carol Gonzalez', '555-0987', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Loves playing piano', ''),
    ('Avery', 'Wilson', '2005-05-09', '789 Cedar Lane, Hamletville, Districttown, 78901', '555-6789', 'avery.wilson@example.com', 'Andrew Wilson', '555-8901', 'Emma Wilson', '555-1098', 8, 'Middle School D', '2023-09-05', 'Active', '', 'Enjoys playing soccer', ''),
    ('Sofia', 'Scott', '2006-03-21', '890 Elm Street, Villagetown, Countyville, 67890', '555-4567', 'sofia.scott@example.com', 'Brian Scott', '555-5678', 'Rachel Scott', '555-7890', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Likes painting', ''),
    ('Aria', 'Adams', '2005-10-05', '123 Pine Street, Cityville, Stateville, 45678', '555-5678', 'aria.adams@example.com', 'Michael Adams', '555-7890', 'Michelle Adams', '555-2345', 6, 'Kindergarten A', '2024-09-05', 'Active', '', 'Enjoys playing with dolls', ''),
    ('Scarlett', 'Thomas', '2006-04-23', '456 Maple Avenue, Townsville, Statetown, 56789', '555-7890', 'scarlett.thomas@example.com', 'David Thomas', '555-1098', 'Linda Thomas', '555-5678', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Loves playing piano', ''),
    ('Victoria', 'Morris', '2005-07-17', '567 Cedar Lane, Hamletville, Districttown, 78901', '555-2345', 'victoria.morris@example.com', 'William Morris', '555-6789', 'Emily Morris', '555-8901', 8, 'Middle School D', '2023-09-05', 'Active', '', 'Interested in painting', ''),
    ('Madison', 'Wright', '2006-12-24', '789 Pine Street, Villagetown, Countyville, 67890', '555-5678', 'madison.wright@example.com', 'Matthew Wright', '555-7890', 'Laura Wright', '555-4567', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Enjoys playing basketball', ''),
    ('Luna', 'King', '2005-11-28', '901 Oak Street, Cityville, Stateville, 45678', '555-6789', 'luna.king@example.com', 'Jason King', '555-8901', 'Michelle King', '555-2345', 6, 'Kindergarten A', '2024-09-05', 'Active', '', 'Likes playing with LEGO', ''),
    ('Grace', 'Scott', '2006-09-10', '234 Maple Avenue, Townsville, Statetown, 56789', '555-7890', 'grace.scott@example.com', 'Brian Scott', '555-2345', 'Rachel Scott', '555-5678', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Enjoys drawing', ''),
    ('Zoe', 'Adams', '2005-08-02', '567 Cedar Lane, Hamletville, Districttown, 78901', '555-5678', 'zoe.adams@example.com', 'Steven Adams', '555-6789', 'Deborah Adams', '555-7890', 8, 'Middle School D', '2023-09-05', 'Active', '', 'Loves reading books', ''),
    ('Nora', 'Thomas', '2006-04-16', '890 Elm Street, Villagetown, Countyville, 67890', '555-1098', 'nora.thomas@example.com', 'Timothy Thomas', '555-2345', 'Angela Thomas', '555-4567', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Enjoys dancing', ''),
    ('Lily', 'Hernandez', '2005-12-04', '123 Pine Street, Cityville, Stateville, 45678', '555-4567', 'lily.hernandez@example.com', 'Antonio Hernandez', '555-6789', 'Sofia Hernandez', '555-8901', 6, 'Kindergarten A', '2024-09-05', 'Active', '', 'Likes playing with dolls', ''),
    ('Aurora', 'Martinez', '2006-09-07', '456 Maple Avenue, Townsville, Statetown, 56789', '555-7890', 'aurora.martinez@example.com', 'Jose Martinez', '555-2345', 'Ana Martinez', '555-5678', 9, 'Junior High School C', '2022-08-30', 'Active', '', 'Enjoys painting', ''),
    ('Hannah', 'Garcia', '2005-08-09', '789 Cedar Lane, Hamletville, Districttown, 78901', '555-5678', 'hannah.garcia@example.com', 'Christopher Garcia', '555-7890', 'Jessica Garcia', '555-1098', 8, 'Middle School D', '2023-09-05', 'Active', '', 'Interested in music', ''),
    ('Anna', 'Lopez', '2006-07-11', '890 Elm Street, Villagetown, Countyville, 67890', '555-6789', 'anna.lopez@example.com', 'David Lopez', '555-1098', 'Maria Lopez', '555-5678', 7, 'Primary School Y', '2023-08-30', 'Active', '', 'Enjoys drawing', ''),
    ('Elizabeth', 'Wilson', '2005-06-03', '123 Oak Street, Cityville, Stateville, 45678', '555-2345', 'elizabeth.wilson@example.com', 'Andrew Wilson', '555-5678', 'Emma Wilson', '555-7890', 6, 'Kindergarten A', '2024-09-05', 'Active', '', 'Likes playing with toys', '');

-- Insert sample data into StudentDemographics table for girls
INSERT INTO StudentDemographics (StudentID, Gender, Ethnicity, Race, Religion, SocioeconomicStatus, DisabilityStatus, LanguageSpoken, CitizenshipStatus)
VALUES
    (26, 'Female', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (27, 'Female', 'White', 'White', 'Christian', 'Upper class', '', 'English', 'US Citizen'),
    (28, 'Female', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (29, 'Female', 'Black/African American', 'Black', 'Christian', 'Lower class', '', 'English', 'US Citizen'),
    (30, 'Female', 'White', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (31, 'Female', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (32, 'Female', 'Black/African American', 'Black', 'Christian', 'Lower class', '', 'English', 'US Citizen'),
    (33, 'Female', 'White', 'White', 'Christian', 'Upper class', '', 'English', 'US Citizen'),
    (34, 'Female', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (35, 'Female', 'Asian', 'Asian', 'Buddhist', 'Middle class', '', 'English', 'US Citizen'),
    (36, 'Female', 'White', 'White', 'Christian', 'Upper class', '', 'English', 'US Citizen'),
    (37, 'Female', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (38, 'Female', 'Black/African American', 'Black', 'Christian', 'Lower class', '', 'English', 'US Citizen'),
    (39, 'Female', 'White', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (40, 'Female', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (41, 'Female', 'Black/African American', 'Black', 'Christian', 'Lower class', '', 'English', 'US Citizen'),
    (42, 'Female', 'White', 'White', 'Christian', 'Upper class', '', 'English', 'US Citizen'),
    (43, 'Female', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (44, 'Female', 'Asian', 'Asian', 'Hindu', 'Middle class', '', 'English', 'US Citizen'),
    (45, 'Female', 'White', 'White', 'Christian', 'Upper class', '', 'English', 'US Citizen'),
    (46, 'Female', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (47, 'Female', 'Black/African American', 'Black', 'Christian', 'Lower class', '', 'English', 'US Citizen'),
    (48, 'Female', 'Asian', 'Asian', 'Hindu', 'Upper class', '', 'English', 'US Citizen'),
    (49, 'Female', 'White', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen'),
    (50, 'Female', 'Hispanic/Latino', 'White', 'Christian', 'Middle class', '', 'English', 'US Citizen');
-- Selectin all from student demographics
select *
from studentdemographics;

-- Selectin all from student information
select *
from studentinformation;


-- Looking for the percentage of students for each religion
-- Calculate percentage per religion
SELECT Religion,
    COUNT(Religion) AS NumberOfStudents,
    ROUND((COUNT(Religion) * 100 ) / 50, 2) AS Percentage
FROM StudentDemographics
GROUP BY Religion;

-- looking for the number Socioeconomic Status
SELECT SocioeconomicStatus,
    COUNT(SocioeconomicStatus) AS StatusPerCatogory
FROM StudentDemographics
GROUP BY SocioeconomicStatus;

-- looking for Race per Category
SELECT Race,
    COUNT(Race) AS RacePerCatogory
FROM StudentDemographics
GROUP BY Race;

-- Last is joining two data for comparison using OUTER JOIN
-- Note: here we can see that one female is missing information in student information.
select sf.*, sd.*
from studentinformation as sf
left join studentdemographics as sd
	on sf.StudentID = sd.StudentID

union
select sf.*, sd.*
from studentinformation as sf
right join studentdemographics as sd
	on sf.StudentID = sd.StudentID;
