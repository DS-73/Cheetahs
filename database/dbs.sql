CREATE DATABASE CHEETAH_BANK;


CREATE TABLE Account (
    account_no VARCHAR(255) PRIMARY KEY, 
    holder VARCHAR(255),
    bank_name VARCHAR(255) NOT NULL,     
    type ENUM('savings', 'current') NOT NULL, 
    minimum_balance DECIMAL(10, 2) NOT NULL,   
    rate_of_interest DECIMAL(5, 2),      
    
);

CREATE TABLE Customer (
    id VARCHAR(255) PRIMARY KEY,       
    name VARCHAR(255) NOT NULL,      
    date_of_birth DATETIME NOT NULL,  
    address VARCHAR(255),            
    account VARCHAR(255),
    transactions JSON,                

    FOREIGN KEY (account) REFERENCES Account(id),
    
);
