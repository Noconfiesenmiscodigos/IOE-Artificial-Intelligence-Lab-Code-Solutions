% employee(name,department number, scale)
% department(department number, department name)
% salary(scale, amount)

employee(mcardon,1,5).
employee(treeman,2,3).
employee(cheapman,1,2).
employee(claessen,1,5).
employee(petersen,1,5).
employee(cohn,1,5).
employee(duffy,1,5).
department(1,board).
department(2,human_resource).
department(3,production).
department(4,technical_service).
department(5,adminstration).
salary(1,1000).
salary(2,1500).
salary(3,2000).
salary(4,2500).
salary(5,3000).
salary(6,3500).
salary(7,4000).
salary(8,4500).
salary(9,5000).

salaryof(Name,Value):- employee(Name,_,X), salary(X,Value).