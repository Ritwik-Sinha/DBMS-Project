//Nurse’s name when doctor id is 9
select Nurse.First_Name, Nurse.Last_Name from Nurse,Assistant,Doctor where Assistant.Doctor_Id=Doctor.Doctor_Id and Nurse.Nurse_Id=Assistant.Nurse_ID and Doctor.Doctor_Id=9;

//Names and Departments  of doctors who have age over 40 and salary over 100000 
select First_Name, Last_Name, department_id from Doctor where(age,salary) in (select age,salary from doctor where age>30 and salary>100000);

//Names and disease of Patients who have doctor_id = 18, nurse_id =18 and age greater than 30
select First_Name, Last_Name, disease from Patient where(age,doctor_id,nurse_id) in (select age,doctor_id,nurse_id from patient where age>30 and doctor_id = '18' and nurse_id = '18');

//Names of nurses who treat patients with doctor_id = 14 and have chicken pox as disease 
select First_Name, Last_Name from Nurse where(Patient_ID) in (select Patient_ID from patient where disease='Chicken Pox'and doctor_id = '14');

//Names and salaries of assistants who have patients with doctor_id = 18, nurse_id = 18, age greater than 30 and salary greater than 30000
select First_Name, Last_Name,salary from assistant where(doctor_id) in (select doctor_id from patient where age>30 and doctor_id = '18' and nurse_id = '18' and salary>30000);

//Names and salaries of nurses who have patients whose age is below 20 and have salary less than 10000
select First_Name, Last_Name,salary from nurse where(nurse_id) in (select nurse_id from patient where age<20 and disease='Pneumonia' and salary<10000);
