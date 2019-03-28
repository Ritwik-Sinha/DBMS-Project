//Patients name where doctor id is 9.
select * from patient  where patient.doctor_id=9;

//Patients who have chicken pox
select * from patient  where patient.disease='Chicken Pox';

//Doctors in ENT Department
select * from doctor  where doctor.department_id='ENT';

//Assistants who salary is greater than 20000
select * from assistant where assistant.salary>20000;

//Find doctors patient who is also under a particular nurse
select Patient.Patient_ID,Patient.First_Name, Patient.Last_Name, Patient.Disease from patient, doctor where Patient.Doctor_Id=Doctor.Doctor_Id;

//Nurse’s name when doctor id is 9
select Nurse.First_Name, Nurse.Last_Name from Nurse,Assistant,Doctor where Assistant.Doctor_Id=Doctor.Doctor_Id and Nurse.Nurse_Id=Assistant.Nurse_ID and Doctor.Doctor_Id=9;
