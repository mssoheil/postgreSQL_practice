
CREATE TABLE projects (
    id SERIAL PRIMARY KEY,
    title VARCHAR(300) NOT NULL,
    deadline DATE
);

CREATE TABLE company_buildings (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL
);

CREATE TABLE teams (
    id SERIAL PRIMARY KEY,
    name VARCHAR(300) NOT NULL,
    building_id SERIAL REFERENCES company_buildings ON DELETE SET NULL
);

CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(200) NOT NULL,
    last_name VARCHAR(200) NOT NULL,
    birthdate DATE NOT NULL,
    -- intranet_email VARCHAR(200) REFERENCES intranet_accounts ON DELETE 
    email VARCHAR(200) UNIQUE NOT NULL,
    team_id SERIAL REFERENCES teams ON DELETE SET DEFAULT
);

CREATE TABLE intranet_accounts (
    id SERIAL PRIMARY KEY,
    email VARCHAR(200) REFERENCES employees (email) ON DELETE CASCADE,
    password VARCHAR(200) NOT NULL
);

-- intermediate table => n:n
CREATE TABLE projects_employees (
    employee_id SERIAL,
    project_id SERIAL REFERENCES projects ON DELETE CASCADE,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES employees (id) ON DELETE CASCADE
    -- just an example
    -- FOREIGN KEY (employee_id, project_id) REFERENCES employees (eid, pid) ON DELETE ...
);