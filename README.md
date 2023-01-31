# Data-modeling-to-warehousing
The goal of this project is to create an ELT data pipeline for released counts of Covid-19 cases reported on college and university campuses in the United States during the 2020-21 academic year. Data modeling would emphasize on the STAR schema for query efficiency.

# Data
- The Data source is provided here ``` https://github.com/nytimes/covid-19-data/tree/master/colleges ```

### The fields have the following definitions:
- date: The date of the last update.
- state: The state where the college is located.
- county: The county where the college is located.
- city: The city where the college is located.
- ipeds_id: The Integrated Postsecondary Education Data System (IPEDS) ID number for the college.
- college: The name of the college or university.
- cases: The total number of reported Covid-19 cases among university students and employees in all fields, including those whose roles as doctors, nurses, pharmacists or medical students put them 
at higher risk of contracting the virus, since the beginning of the pandemic.
- cases_2021: The total number of newly reported Covid-19 cases since Jan. 1, 2021 only. notes: Specific methodological notes that apply to the institution, for example if the count includes cases from a medical unit, and if there is a possibility that duplicate cases have been counted due to the manner in which the institution reports data.

Colleges and universities that have reported zero cases will be listed with a zero for cases, while colleges which have not reported data will have a blank in the cases field.