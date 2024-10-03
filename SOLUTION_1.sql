CREATE TABLE Doctors ( id INT PRIMARY KEY,
                                      name VARCHAR(255),
                                           specialization VARCHAR(255),
                                                          contact_info VARCHAR(255));


CREATE TABLE Patients ( id INT PRIMARY KEY,
                                       name VARCHAR(255),
                                            dob DATE, gender VARCHAR(10));


CREATE TABLE Diseases ( id INT PRIMARY KEY,
                                       name VARCHAR(255));


CREATE TABLE Doctor_Patient ( doctor_id INT, patient_id INT, date_of_visit DATE, diagnosis VARCHAR(255),
                             FOREIGN KEY (doctor_id) REFERENCES Doctors(id),
                             FOREIGN KEY (patient_id) REFERENCES Patients(id),
                                                                 PRIMARY KEY (doctor_id,
                                                                              patient_id));

CREATE TABLE Visits ( id INT PRIMARY KEY,
                                     doctor_id INT, patient_id INT, date DATE,
                     FOREIGN KEY (doctor_id) REFERENCES Doctors(id),
                     FOREIGN KEY (patient_id) REFERENCES Patients(id));
