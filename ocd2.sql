create database ocd;
use ocd;
/*data imported here*/

describe ocd_patient_dataset;
SET SQL_SAFE_UPDATES = 0;
/*now one can update the data*/
/*to add column*/
ALTER TABLE ocd_patient_dataset
ADD COLUMN age_group varchar(50);
/*to add values in that newly created or added column*/

UPDATE ocd_patient_dataset
SET age_group =
    CASE
        WHEN Age between 18 and 20 THEN '18-20'
        WHEN Age between 21 and 30 THEN '21-30'
        WHEN Age between 31 and 40 THEN '31-40'
        WHEN Age between 41 and 50 THEN '41-50'
        WHEN Age between 51 and 60 THEN '51-60'
        WHEN Age between 61 and 70 THEN '61-70'
        -- Add similar WHEN clauses for other categories
        ELSE '71-80'
    END;
    select * from ocd_patient_dataset;
    describe ocd_patient_dataset;

ALTER table ocd_patient_dataset
DROP Y_BOCS;

ALTER TABLE ocd_patient_dataset
ADD COLUMN Y_BOCS_O varchar(50);

UPDATE ocd_patient_dataset
SET Y_BOCS_O =
    CASE
        WHEN `Y-BOCS Score (Obsessions)` between 1 and 10 THEN '1-10'
        WHEN `Y-BOCS Score (Obsessions)` between 11 and 20 THEN '11-20'
        WHEN `Y-BOCS Score (Obsessions)` between 21 and 30 THEN '21-30'
        -- Add similar WHEN clauses for other categories
        ELSE '31-40'
    END;
    SELECT * FROM ocd_patient_dataset;
    
ALTER TABLE ocd_patient_dataset
ADD COLUMN Y_BOCS_C varchar(50);

UPDATE ocd_patient_dataset
SET Y_BOCS_C =
    CASE
        WHEN `Y-BOCS Score (Compulsions)` between 1 and 10 THEN '1-10'
        WHEN `Y-BOCS Score (Compulsions)` between 11 and 20 THEN '11-20'
        WHEN `Y-BOCS Score (Compulsions)` between 21 and 30 THEN '21-30'
        -- Add similar WHEN clauses for other categories
        ELSE '31-40'
    END;
    SELECT * FROM ocd_patient_dataset;
    
ALTER TABLE ocd_patient_dataset
ADD COLUMN Monthly_Duration_of_symptoms varchar(50);
/*data grouping*/

UPDATE ocd_patient_dataset
SET Monthly_Duration_of_symptoms =
    CASE
        WHEN `Duration of Symptoms (months)` between 1 and 50 THEN '1-50'
        WHEN `Duration of Symptoms (months)` between 51 and 100 THEN '51-100'
        -- Add similar WHEN clauses for other categories
        ELSE '101-250'
    END;

    
    
    
    



    


    


