
--
-- Table structure for table `Students`
--

CREATE TABLE Students (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Major VARCHAR(50)
);

--
-- Dumping data for table `Students`
--

INSERT INTO Students (StudentID, Name, Major) VALUES
(1, 'Alice Smith', 'Computer Science'),
(2, 'Bob Johnson', 'Physics'),
(3, 'Charlie Brown', 'Mathematics');

--
-- Table structure for table `Courses`
--

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Credits INT
);

--
-- Dumping data for table `Courses`
--

INSERT INTO Courses (CourseID, Title, Credits) VALUES
(101, 'Introduction to Programming', 3),
(102, 'Calculus I', 4),
(103, 'Classical Mechanics', 3);

--
-- Table structure for table `Professors`
--

CREATE TABLE Professors (
    ProfessorID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Department VARCHAR(50)
);

--
-- Dumping data for table `Professors`
--

INSERT INTO Professors (ProfessorID, Name, Department) VALUES
(1001, 'Dr. Emily White', 'Computer Science'),
(1002, 'Dr. John Davis', 'Physics'),
(1003, 'Dr. Sarah Miller', 'Mathematics');

--
-- Table structure for table `Enrollments`
--

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    ProfessorID INT,
    Grade VARCHAR(2),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (ProfessorID) REFERENCES Professors(ProfessorID)
);

--
-- Dumping data for table `Enrollments`
--

INSERT INTO Enrollments (StudentID, CourseID, ProfessorID, Grade) VALUES
(1, 101, 1001, 'A'),
(1, 102, 1003, 'B+'),
(2, 103, 1002, 'A-'),
(3, 102, 1003, 'B');
