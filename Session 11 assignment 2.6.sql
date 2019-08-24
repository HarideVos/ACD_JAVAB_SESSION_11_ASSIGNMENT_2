USE hospital;



SELECT 
    *
FROM
    patient_registration
WHERE
    registration_date BETWEEN '02-07-20' AND '08-08-20';



UPDATE patient_registration 
SET 
    name = 'Ram'
WHERE
    registration_number = 'PT011';



SELECT 
    name, test_name
FROM
    tests
        JOIN
    patient_registration ON patient_registration.registration_number = tests.patient_reg_number
WHERE
    tests.`date` = '08-07-20';


SELECT 
    *
FROM
    patient_registration
        JOIN
    doctors ON doctors.id = patient_registration.referral_doctor
WHERE
    doctors.name = 'ABC';
    

UPDATE beds
        JOIN
    patient_registration ON patient_registration.bed_number = beds.id 
SET 
    beds.bed_number = 456
WHERE
    registration_number = 'PT023';


UPDATE beds 
SET 
    status = 'not allotted'
WHERE
    bed_number = 123;

SELECT 
    *
FROM
    beds
WHERE
    ward_number = 10
        AND status = 'not allotted';

SELECT 
    patient_registration.name
FROM
    patient_registration
        JOIN
    beds ON beds.id = patient_registration.bed_number
        JOIN
    doctors ON doctors.id = patient_registration.referral_doctor
WHERE
    doctors.name = 'XYZ'
        AND ward_number = 13;

SELECT 
    *
FROM
    patient_registration
        JOIN
    doctors ON doctors.id = patient_registration.referral_doctor
WHERE
    doctors.name LIKE 'das%';