-- Multiple columns index is best for AND operator
CREATE INDEX multiaddr ON addresses (street, city);