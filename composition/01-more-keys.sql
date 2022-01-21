CREATE TABLE projects (
    id SERIAL PRIMARY KEY, -- Postgresql
    title VARCHAR(300) NOT NULL,
    deadline DATE
);


CREATE TABLE buildings (
    id SERIAL PRIMARY KEY, -- Postgresql
    name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
    id SERIAL PRIMARY KEY, -- Postgresql
    name VARCHAR(300) NOT NULL,
    building_id INT REFERENCES buildings ON DELETE SET NULL
);

CREATE TABLE employees (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(300) NOT NULL,
    last_name VARCHAR(300) NOT NULL,
    birthdate DATE NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    team_id INT DEFAULT 1 REFERENCES teams ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
    -- id INT PRIMARY KEY AUTO_INCREMENT,
    d SERIAL PRIMARY KEY,
    email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);

-- Intermediate table => n:n
CREATE TABLE projects_employees (
    employee_id INT,
    -- employee_id INT REFERENCES employees ON DELETE CASCADE, -- foreign key column constraint declaration
    project_id INT REFERENCES projects ON DELETE CASCADE,
    PRIMARY KEY (employee_id, project_id), -- primary key table constraint declaration
    -- PRIMARY KEY (id) ...
    FOREIGN KEY (employee_id) REFERENCES employees ON DELETE CASCADE -- foreign key table constraints declaration
    -- FOREIGN KEY (employee_id, project_id) REFERENCES employees ON DELETE ...
);