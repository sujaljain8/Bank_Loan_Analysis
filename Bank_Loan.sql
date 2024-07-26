select * from bank_loan_data
select count(id) from bank_loan_data
select count(id) from bank_loan_data where month(issue_date)=12
select count(id) from bank_loan_data where month(issue_date)=11
select sum(loan_amount) from bank_loan_data
select sum(loan_amount) from bank_loan_data where month(issue_date)=12
select sum(loan_amount) from bank_loan_data where month(issue_date)=11
select sum(total_payment) from bank_loan_data
select sum(total_payment) from bank_loan_data where month(issue_date)=12
select sum(total_payment) from bank_loan_data where month(issue_date)=11
select avg(int_rate)*100 from bank_loan_data
select round(avg(int_rate),4)*100 from bank_loan_data where month(issue_date)=12
select cast(avg(int_rate)*100 as decimal(10,2)) from bank_loan_data where month(issue_date)=11
select avg(dti)*100 from bank_loan_data
select round(avg(dti),4)*100 from bank_loan_data where month(issue_date)=12
select cast(avg(dti)*100 as decimal(10,2)) from bank_loan_data where month(issue_date)=11
select (count(case when loan_status='Fully Paid' OR loan_status='Current' then id end)*100.0)/count(loan_status) from bank_loan_data
select count(case when loan_status='Fully Paid' OR loan_status='Current' then id end) from bank_loan_data
select sum(loan_amount) from bank_loan_data where loan_status='Fully Paid' OR loan_status='Current'
select sum(total_payment) from bank_loan_data where loan_status='Fully Paid' OR loan_status='Current'
select (count(case when loan_status='Charged off' then id end)*100.0)/count(loan_status) from bank_loan_data
select count(case when loan_status='Charged off' then id end) from bank_loan_data
select sum(loan_amount) from bank_loan_data where loan_status='Charged off'
select sum(total_payment) from bank_loan_data where loan_status='Charged off' 
select loan_status,count(id),sum(loan_amount),sum(total_payment) from bank_loan_data group by loan_status
select month(issue_date),datename(month,issue_date),count(id),sum(loan_amount),sum(total_payment) from bank_loan_data group by month(issue_date),datename(month,issue_date) order by month(issue_date)
select address_state,count(id),sum(loan_amount),sum(total_payment) from bank_loan_data group by address_state order by address_state
select term,count(id),sum(loan_amount),sum(total_payment) from bank_loan_data group by term order by term
select emp_length,count(id),sum(loan_amount),sum(total_payment) from bank_loan_data group by emp_length order by count(id)
select purpose,count(id),sum(loan_amount),sum(total_payment) from bank_loan_data group by purpose order by count(id) desc
select home_ownership,count(id),sum(loan_amount),sum(total_payment) from bank_loan_data group by home_ownership order by count(id) desc