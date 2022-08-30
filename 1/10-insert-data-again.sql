INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring) 
VALUES ('Learing Inc', 'NY, 1st avenue', 1.25, true);

INSERT INTO employers (company_name, company_address, yearly_revenue) 
VALUES ('Big Oil Inc', 'London, 12st street', 172.15);

INSERT INTO employers (company_name, company_address, yearly_revenue, is_hiring) 
VALUES ('Food Corp', 'Mexico, 1st avenue, 2nd block', 8.27, true);

INSERT INTO conversation (user_name, employer_name, "message")
VALUES ('John Smith', 'Learing Inc', 'Hi this is my first message!');