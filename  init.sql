CREATE TABLE test_table (
    name VARCHAR(10) CHECK (length(name) >= 4),
    surname TEXT,
    city TEXT,
    age INT CHECK (age > 0 AND age <= 150)
);

INSERT INTO test_table (name, surname, city, age) VALUES
('Anna', 'Smith', 'New York', 29),
('John', 'Doe', 'Los Angeles', 34),
('Jane', 'Taylor', 'San Francisco', 28),
('Mike', 'Wilson', 'Chicago', 19),
('Eli', 'Brown', 'Houston', 44),
('Ana', 'Thompson', 'Miami', 22),
('Leo', 'White', 'Boston', 33),
('Zoe', 'Martin', 'Denver', 40),
('Amy', 'Walker', 'Seattle', 25),
('Jim', 'Scott', 'Portland', 38),
('Max', 'Green', 'Philadelphia', 23),
('Tom', 'Hall', 'Phoenix', 30),
('Liz', 'Adams', 'Dallas', 45),
('Sam', 'Baker', 'Detroit', 36),
('Kai', 'Clark', 'Orlando', 24),
('Eva', 'Lopez', 'Austin', 29),
('Ria', 'Cox', 'Kansas City', 21),
('Ivy', 'Reed', 'Raleigh', 27),
('Roy', 'Kelly', 'Columbus', 31),
('Tia', 'Morgan', 'Baltimore', 50);