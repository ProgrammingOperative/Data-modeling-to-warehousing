with cases as (

    select
        ipeds_id as college_id,
        cases as cases_number,
        cases_2021

    from dbt_college_covid.fact_covid_cases

),

college_details as (
    select
        ipeds_id as college_id,
        college as college_name,
        county

    from dbt_college_covid.fact_covid_cases
),

final as (
    select 
        cases.college_id,
        college_details.college_name,
        college_details.county,
        cases.cases_number,
        cases.cases_2021
    
    from cases 
    join college_details on cases.college_id=college_details.college_id
)

select * from final;