CREATE TABLE employers (
    company_name VARCHAR(250),
    company_address VARCHAR(300),
    -- yearly_revenue FLOAT(5,2) -- Approximation, Allowed: 123.12, 12.1 Not allowed: 1234.12, 1.123
    yearly_revenue NUMERIC(5,2), -- Exact value, Allowed: 123.12, Not allowed: 12345.123, 5 represent total digits accepted and 2 total digits after decimal point
    is_hiring BOOLEAN
);