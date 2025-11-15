===Count patients admitted==
select * from `workspace`.`patients`.`patient_readmission_raw_data_1` limit 100;
-- Initial assessment: summary statistics for key patient metrics
select
  count(*) as total_patients,
  avg(`Age`) as avg_age,
  min(`Age`) as min_age,
  max(`Age`) as max_age,
  count(distinct `Gender`) as gender_count,
  avg(`Length of Stay`) as avg_length_of_stay,
  avg(`Blood Pressure`) as avg_blood_pressure,
  avg(`Blood Sugar Levels`) as avg_blood_sugar_levels,
  sum(case when `Readmission` = 'Yes' then 1 else 0 end) as total_readmissions
from `workspace`.`patients`.`patient_readmission_raw_data_1`;
-- Initial assessment: summary statistics for key patient metrics, including discharged patients
select
  count(*) as total_patients,
  avg(`Age`) as avg_age,
  min(`Age`) as min_age,
  max(`Age`) as max_age,
  count(distinct `Gender`) as gender_count,
  avg(`Length of Stay`) as avg_length_of_stay,
  avg(`Blood Pressure`) as avg_blood_pressure,
  avg(`Blood Sugar Levels`) as avg_blood_sugar_levels,
  sum(case when `Readmission` = 'Yes' then 1 else 0 end) as total_readmissions,
  sum(case when `Length of Stay` > 0 then 1 else 0 end) as total_discharged_patients
from `workspace`.`patients`.`patient_readmission_raw_data_1`;
-- Initial assessment: summary statistics for key patient metrics, including patients who need continuous treatment
select
  count(*) as total_patients,
  avg(`Age`) as avg_age,
  min(`Age`) as min_age,
  max(`Age`) as max_age,
  count(distinct `Gender`) as gender_count,
  avg(`Length of Stay`) as avg_length_of_stay,
  avg(`Blood Pressure`) as avg_blood_pressure,
  avg(`Blood Sugar Levels`) as avg_blood_sugar_levels,
  sum(case when `Readmission` = 'Yes' then 1 else 0 end) as total_readmissions,
  sum(case when `Previous Admissions` > 0 or `Readmission` = 'Yes' then 1 else 0 end) as total_continuous_treatment_patients
from `workspace`.`patients`.`patient_readmission_raw_data_1`;
-- Initial assessment: summary statistics for key patient metrics, including patients who likely to be readmitted
select
  count(*) as total_patients,
  avg(`Age`) as avg_age,
  min(`Age`) as min_age,
  max(`Age`) as max_age,
  count(distinct `Gender`) as gender_count,
  avg(`Length of Stay`) as avg_length_of_stay,
  avg(`Blood Pressure`) as avg_blood_pressure,
  avg(`Blood Sugar Levels`) as avg_blood_sugar_levels,
  sum(case when `Readmission` = 'Yes' then 1 else 0 end) as total_readmissions,
  sum(case when `Previous Admissions` > 0 or `Readmission` = 'Yes' or `Number of Diagnoses` > 5 or `Length of Stay` > 7 then 1 else 0 end) as total_likely_readmitted_patients,
  count(case when `Readmission` = 'No' then 1 end) as total_discharged_patients
from `workspace`.`patients`.`patient_readmission_raw_data_1`;
-- Initial assessment: summary statistics for key patient metrics, including patients flagged for high risk
select
  count(*) as total_patients,
  avg(`Age`) as avg_age,
  min(`Age`) as min_age,
  max(`Age`) as max_age,
  count(distinct `Gender`) as gender_count,
  avg(`Length of Stay`) as avg_length_of_stay,
  avg(`Blood Pressure`) as avg_blood_pressure,
  avg(`Blood Sugar Levels`) as avg_blood_sugar_levels,
  sum(case when `Readmission` = 'Yes' then 1 else 0 end) as total_readmissions,
  sum(
    case
      when `Previous Admissions` > 2
        or `Number of Diagnoses` > 8
        or `Length of Stay` > 10
        or `Blood Pressure` > 160
        or `Blood Sugar Levels` > 200
      then 1 else 0
    end
  ) as total_high_risk_patients,
