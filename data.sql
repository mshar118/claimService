CREATE TABLE invoices (
    invoice_id INT PRIMARY KEY,
    payment_total DECIMAL(8,2),
    payment_date DATE,
    client_id INT,
    invoice_total DECIMAL(8,2)
);

CREATE TABLE ExchangeRates (
  id INT PRIMARY KEY,
  currencyCode VARCHAR(10),
  exchangeRate DECIMAL(10, 2),
  effectiveDate DATE,
  expirationDate DATE,
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE CurrencyCodes (
  id INT PRIMARY KEY,
  currencyCode VARCHAR(10),
  currencyName VARCHAR(50),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO invoices (invoice_id, payment_total, payment_date, client_id, invoice_total) VALUES
(1, 0, '2022-01-01', 1, 100),
(2, 0, '2022-02-01', 1, 200),
(3, 0, '2022-03-01', 2, 300),
(4, 0, '2022-04-01', 2, 400),
(5, 0, '2022-05-01', 3, 500);

