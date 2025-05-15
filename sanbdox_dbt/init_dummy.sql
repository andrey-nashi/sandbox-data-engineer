-- Drop tables if they already exist
DROP TABLE IF EXISTS engagement;
DROP TABLE IF EXISTS customer;
DROP TABLE IF EXISTS employee;

-- Employee table
CREATE TABLE employee (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department VARCHAR(50),
    email VARCHAR(100)
);

-- Customer table
CREATE TABLE customer (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    industry VARCHAR(50),
    email VARCHAR(100)
);

-- Engagement table
CREATE TABLE engagement (
    id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES employee(id),
    customer_id INT REFERENCES customer(id),
    date DATE,
    notes TEXT
);

-- Insert sample employees
INSERT INTO employee (name, department, email) VALUES
('Alice Johnson', 'Sales', 'alice.j@example.com'),
('Bob Smith', 'Marketing', 'bob.s@example.com'),
('Carol Lee', 'Support', 'carol.l@example.com'),
('David Kim', 'Engineering', 'david.k@example.com'),
('Eva Brown', 'Sales', 'eva.b@example.com'),
('Frank Green', 'Support', 'frank.g@example.com'),
('Grace Chen', 'Engineering', 'grace.c@example.com'),
('Henry Wang', 'Marketing', 'henry.w@example.com'),
('Ivy Zhang', 'Sales', 'ivy.z@example.com'),
('Jake White', 'Support', 'jake.w@example.com'),
('Karen Black', 'Engineering', 'karen.b@example.com'),
('Leo Davis', 'Sales', 'leo.d@example.com'),
('Mia Turner', 'Support', 'mia.t@example.com'),
('Nathan Hall', 'Engineering', 'nathan.h@example.com'),
('Olivia Young', 'Marketing', 'olivia.y@example.com'),
('Paul Allen', 'Sales', 'paul.a@example.com'),
('Quinn Baker', 'Support', 'quinn.b@example.com'),
('Rachel Scott', 'Engineering', 'rachel.s@example.com'),
('Steve Adams', 'Marketing', 'steve.a@example.com'),
('Tina Morris', 'Sales', 'tina.m@example.com');

-- Insert sample customers
INSERT INTO customer (name, industry, email) VALUES
('Acme Corp', 'Finance', 'contact@acme.com'),
('Beta LLC', 'Healthcare', 'hello@beta.com'),
('Cygnus Inc', 'Retail', 'info@cygnus.com'),
('Delta Co', 'Education', 'support@delta.com'),
('Epsilon Ltd', 'Tech', 'contact@epsilon.com'),
('Futura Systems', 'Healthcare', 'team@futura.com'),
('Gamma Holdings', 'Retail', 'gamma@gamma.com'),
('Helix Group', 'Finance', 'hello@helix.com'),
('Innova Tech', 'Tech', 'info@innova.com'),
('Jupiter Solutions', 'Education', 'contact@jupiter.com'),
('Kappa Ventures', 'Retail', 'sales@kappa.com'),
('Lambda Labs', 'Healthcare', 'help@lambda.com'),
('Matrix Corp', 'Finance', 'matrix@matrix.com'),
('Nova Partners', 'Tech', 'team@nova.com'),
('Omicron Industries', 'Education', 'support@omicron.com'),
('Praxis Ltd', 'Retail', 'praxis@praxis.com'),
('Quantum Health', 'Healthcare', 'care@quantum.com'),
('Radix Tech', 'Tech', 'radix@radix.com'),
('Sigma Co', 'Finance', 'info@sigma.com'),
('Theta Systems', 'Education', 'hello@theta.com');

-- Insert sample engagements (randomized)
INSERT INTO engagement (employee_id, customer_id, date, notes) VALUES
(1, 3, '2024-01-10', 'Initial meeting about pricing.'),
(2, 5, '2024-02-12', 'Discussed product roadmap.'),
(3, 1, '2024-03-15', 'Customer requested support escalation.'),
(4, 6, '2024-04-20', 'Technical onboarding complete.'),
(5, 2, '2024-05-01', 'Product demo delivered.'),
(6, 4, '2024-01-21', 'Customer training session held.'),
(7, 7, '2024-03-30', 'Quarterly review.'),
(8, 8, '2024-02-28', 'Marketing campaign feedback.'),
(9, 10, '2024-03-05', 'Security audit follow-up.'),
(10, 9, '2024-04-12', 'Resolved billing issues.'),
(11, 11, '2024-05-03', 'Feature request discussion.'),
(12, 12, '2024-05-07', 'New contract negotiation.'),
(13, 13, '2024-03-25', 'Support ticket backlog cleared.'),
(14, 14, '2024-02-11', 'POC completed successfully.'),
(15, 15, '2024-01-18', 'Customer health check.'),
(16, 16, '2024-02-22', 'Renewal planning session.'),
(17, 17, '2024-04-03', 'Integration with third-party.'),
(18, 18, '2024-04-14', 'Discussed scaling strategy.'),
(19, 19, '2024-05-08', 'Legal compliance check.'),
(20, 20, '2024-03-19', 'Account strategy alignment.');