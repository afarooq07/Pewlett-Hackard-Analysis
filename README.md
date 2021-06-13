# Pewlett-Hackard-Analysis

## Overview of the analysis:
The purpose of this analysis to help Pewlett-Hackard future proof the company by identifying how many people will be retiring in near future to determine which positions will need to be filled and how many of those retiring are eligible for retirement package.
</br>

The scope of this week's challenge is use employee database to determine:
- The number of retiring employees per title
- Identify employees eligible to participate in a mentorship program
</br>

## Resources:
- Deliverable 1 Data Files: 
    - Data\retiring_titles.csv
    - Data\unique_titles.csv
    - Data\retirement_titles.csv
    
</br>

- Deliverable 2 Data Files:
    -  Data\mentorship_eligibilty.csv
</br>
 
- SQL file: Employee_Database_challenge.sql
</br>

## Results:
Main take aways from the analysis are below:
1) Total number of employee eligible for retirement in near future is 90398
<img src="Images\retiring_employee_count.png" width=300 align=center>
</br>

2) Total of 43,378 employees identified to be retiring in near future have held more than one title during their tenure at the company
    - retirement_titles table count = 133776
    - unique_titles table count = 90398
    - Employees who held multiple titles = 43378
</br>

3) Software Engineer title has the highest upcoming retirements with Senior Staff coming in a close second
<img src="Images\Total_retirements_by_titles.png" width=300 align=center>
</br>

4) Count of employees identified to be eligible for mentorship program are 1549
<img src="Images\mentorship_eligibility.png" width=300 align=center>
</br>


5) Senior Staff and Software Enginerr rank the highest in the need for mentorship programs
<img src="Images\mentorship_eligibility_by_title.png" width=300 align=center>
</br>

</br>

## Summary:
- How many roles will need to be filled as the "silver tsunami" begins to make an impact?
The following roles will need to be filled:
  - "Senior Engineer"
  - "Senior Staff"
  - "Engineer"
  - "Staff"
  - "Technique Leader"
  - "Assistant Engineer"
  - "Manager"
  
</br>

- Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
  - not enough - number of employees identified for memtorship program (1549) are 1.71% of the number of employee retiring (90398)

</br>
