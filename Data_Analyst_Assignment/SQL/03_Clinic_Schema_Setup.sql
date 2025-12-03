create database clinic_management_system;

use clinic_management_system;


CREATE TABLE clinics (
    cid VARCHAR(50) PRIMARY KEY,
    clinic_name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);

-- Create customer table
CREATE TABLE customer (
    uid VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    mobile VARCHAR(15)
);

-- Create clinic_sales table
CREATE TABLE clinic_sales (
    oid VARCHAR(20) PRIMARY KEY,
    uid VARCHAR(20),
    cid VARCHAR(20),
    amount DECIMAL(10, 2),
    datetime DATETIME,
    sales_channel VARCHAR(50),
    FOREIGN KEY (uid) REFERENCES customer(uid),
    FOREIGN KEY (cid) REFERENCES clinics(cid)
);

-- Create expenses table
CREATE TABLE expenses (
    eid VARCHAR(20) PRIMARY KEY,
    cid VARCHAR(20),
    description VARCHAR(255),
    amount DECIMAL(10, 2),
    datetime DATETIME,
    FOREIGN KEY (cid) REFERENCES clinics(cid)
);

INSERT INTO clinics (cid, clinic_name, city, state, country) VALUES
('cnc-0100001', 'XYZ Clinic', 'Hyderabad', 'Telangana', 'India'),
('cnc-0100002', 'Sunrise Care', 'Mumbai', 'Maharashtra', 'India'),
('cnc-0100003', 'Health First', 'Chennai', 'Tamil Nadu', 'India'),
('cnc-0100004', 'Wellness Center', 'Bengaluru', 'Karnataka', 'India'),
('cnc-0100005', 'CurePlus Clinic', 'Pune', 'Maharashtra', 'India'),
('cnc-0100006', 'City Health', 'Visakhapatnam', 'Andhra Pradesh', 'India'),
('cnc-0100007', 'Medicare Clinic', 'Coimbatore', 'Tamil Nadu', 'India'),
('cnc-0100008', 'Healing Touch', 'Hyderabad', 'Telangana', 'India'),
('cnc-0100009', 'Care & Cure', 'Mumbai', 'Maharashtra', 'India'),
('cnc-0100010', 'Happy Health', 'Chennai', 'Tamil Nadu', 'India'),
('cnc-0100011', 'Family Clinic', 'Bengaluru', 'Karnataka', 'India'),
('cnc-0100012', 'Prime Health', 'Pune', 'Maharashtra', 'India'),
('cnc-0100013', 'Life Care', 'Visakhapatnam', 'Andhra Pradesh', 'India'),
('cnc-0100014', 'Medplus', 'Coimbatore', 'Tamil Nadu', 'India'),
('cnc-0100015', 'CareClinic', 'Hyderabad', 'Telangana', 'India'),
('cnc-0100016', 'Wellbeing Center', 'Mumbai', 'Maharashtra', 'India'),
('cnc-0100017', 'Health Hub', 'Chennai', 'Tamil Nadu', 'India'),
('cnc-0100018', 'Healing Hands', 'Bengaluru', 'Karnataka', 'India'),
('cnc-0100019', 'Cure Clinic', 'Pune', 'Maharashtra', 'India'),
('cnc-0100020', 'Good Health', 'Visakhapatnam', 'Andhra Pradesh', 'India'),
('cnc-0100021', 'Bright Care', 'Coimbatore', 'Tamil Nadu', 'India'),
('cnc-0100022', 'Hope Clinic', 'Hyderabad', 'Telangana', 'India'),
('cnc-0100023', 'HealWell', 'Mumbai', 'Maharashtra', 'India'),
('cnc-0100024', 'Family Care', 'Chennai', 'Tamil Nadu', 'India'),
('cnc-0100025', 'City Clinic', 'Bengaluru', 'Karnataka', 'India'),
('cnc-0100026', 'Medicare Plus', 'Pune', 'Maharashtra', 'India'),
('cnc-0100027', 'Healthy Life', 'Visakhapatnam', 'Andhra Pradesh', 'India'),
('cnc-0100028', 'Happy Care', 'Coimbatore', 'Tamil Nadu', 'India'),
('cnc-0100029', 'Healing Heart', 'Hyderabad', 'Telangana', 'India'),
('cnc-0100030', 'CareFirst', 'Mumbai', 'Maharashtra', 'India');

-- Sample inserts for customer table
INSERT INTO customer (uid, name, mobile) VALUES
('bk-09f3e-95hj', 'Jon Doe', '9712345678'),
('bk-01a2b-45cd', 'Jane Smith', '9823456789'),
('bk-03efg-89hi', 'Alice Johnson', '9934567890'),
('bk-04xyz-12kl', 'Bob Brown', '9845678901'),
('bk-05qwe-34rt', 'Charlie Black', '9956789012'),
('bk-06asd-56ui', 'Diana Green', '9767890123'),
('bk-07zxc-78op', 'Evan White', '9878901234'),
('bk-08vbn-90mn', 'Fiona Blue', '9989012345'),
('bk-10ert-23ty', 'George King', '9790123456'),
('bk-11yui-45op', 'Holly Queen', '9801234567'),
('bk-12asd-67df', 'Ian Grey', '9812345678'),
('bk-13fgh-89jk', 'Jessica Day', '9823456789'),
('bk-14jkl-12qw', 'Kevin Hart', '9834567890'),
('bk-15mnb-34we', 'Laura Knight', '9845678901'),
('bk-16poi-56er', 'Mike Fox', '9856789012'),
('bk-17lkj-78ty', 'Nina Rose', '9867890123'),
('bk-18hgf-90ui', 'Oscar Lane', '9878901234'),
('bk-19edc-23pl', 'Paula King', '9889012345'),
('bk-20rfv-45mn', 'Quinn Bell', '9890123456'),
('bk-21tgb-67vc', 'Rita Fox', '9801234567'),
('bk-22yhn-89zx', 'Sam Duke', '9812345678'),
('bk-23ujm-12xc', 'Tina Wolf', '9823456789'),
('bk-24ikm-34op', 'Uma Perry', '9834567890'),
('bk-25olm-56wr', 'Victor Cole', '9845678901'),
('bk-26plk-78qt', 'Wendy Miles', '9856789012'),
('bk-27okl-90er', 'Xander Cruz', '9867890123'),
('bk-28mjn-23vc', 'Yara Snow', '9878901234'),
('bk-29bhu-45fg', 'Zane Hale', '9889012345'),
('bk-30nij-67rt', 'Amy Lynn', '9890123456'),
('bk-31ujm-89wy', 'Brian Cole', '9790123456');

-- Sample inserts for clinic_sales table
INSERT INTO clinic_sales (oid, uid, cid, amount, datetime, sales_channel) VALUES
('ord-00100-00100', 'bk-09f3e-95hj', 'cnc-0100001', 24999.00, '2021-09-23 12:03:22', 'sodat'),
('ord-00100-00101', 'bk-01a2b-45cd', 'cnc-0100002', 15000.00, '2021-10-10 11:45:00', 'Online Booking'),
('ord-00100-00102', 'bk-03efg-89hi', 'cnc-0100003', 18000.00, '2021-09-24 14:25:12', 'Walk-in'),
('ord-00100-00103', 'bk-04xyz-12kl', 'cnc-0100001', 22000.00, '2021-11-01 16:35:45', 'Referral'),
('ord-00100-00104', 'bk-05qwe-34rt', 'cnc-0100002', 21000.00, '2021-09-25 10:10:10', 'Insurance'),
('ord-00100-00105', 'bk-06asd-56ui', 'cnc-0100003', 30000.00, '2021-12-12 09:30:00', 'Corporate'),
('ord-00100-00106', 'bk-07zxc-78op', 'cnc-0100001', 19000.00, '2021-10-15 15:42:00', 'Walk-in'),
('ord-00100-00107', 'bk-08vbn-90mn', 'cnc-0100002', 25000.00, '2021-11-05 11:11:11', 'Online Booking'),
('ord-00100-00108', 'bk-10ert-23ty', 'cnc-0100003', 27000.00, '2021-09-30 18:00:00', 'Referral'),
('ord-00100-00109', 'bk-11yui-45op', 'cnc-0100001', 21000.00, '2021-12-01 10:10:10', 'sodat'),
('ord-00100-00110', 'bk-12asd-67df', 'cnc-0100002', 16000.00, '2021-10-20 13:30:00', 'Insurance'),
('ord-00100-00111', 'bk-13fgh-89jk', 'cnc-0100003', 18000.00, '2021-11-25 14:15:00', 'Corporate'),
('ord-00100-00112', 'bk-14jkl-12qw', 'cnc-0100001', 23000.00, '2021-09-22 09:00:00', 'Walk-in'),
('ord-00100-00113', 'bk-15mnb-34we', 'cnc-0100002', 20000.00, '2021-10-28 10:40:00', 'Online Booking'),
('ord-00100-00114', 'bk-16poi-56er', 'cnc-0100003', 25000.00, '2021-12-15 16:00:00', 'Referral'),
('ord-00100-00115', 'bk-17lkj-78ty', 'cnc-0100001', 21000.00, '2021-11-10 12:12:12', 'Insurance'),
('ord-00100-00116', 'bk-18hgf-90ui', 'cnc-0100002', 17500.00, '2021-09-15 11:11:11', 'Corporate'),
('ord-00100-00117', 'bk-19edc-23pl', 'cnc-0100003', 19000.00, '2021-10-05 15:25:00', 'Walk-in'),
('ord-00100-00118', 'bk-20rfv-45mn', 'cnc-0100001', 22000.00, '2021-12-20 17:45:00', 'Online Booking'),
('ord-00100-00119', 'bk-21tgb-67vc', 'cnc-0100002', 24000.00, '2021-11-18 14:10:00', 'Referral'),
('ord-00100-00120', 'bk-22yhn-89zx', 'cnc-0100003', 19500.00, '2021-09-12 13:33:00', 'Insurance'),
('ord-00100-00121', 'bk-23ujm-12xc', 'cnc-0100001', 26000.00, '2021-10-30 10:00:00', 'Corporate'),
('ord-00100-00122', 'bk-24ikm-34op', 'cnc-0100002', 23000.00, '2021-12-02 09:20:00', 'Walk-in'),
('ord-00100-00123', 'bk-25olm-56wr', 'cnc-0100003', 21000.00, '2021-09-29 12:45:00', 'Online Booking'),
('ord-00100-00124', 'bk-26plk-78qt', 'cnc-0100001', 17500.00, '2021-10-08 14:00:00', 'Referral'),
('ord-00100-00125', 'bk-27okl-90er', 'cnc-0100002', 19500.00, '2021-11-22 15:15:15', 'Insurance'),
('ord-00100-00126', 'bk-28mjn-23vc', 'cnc-0100003', 20250.00, '2021-12-29 18:30:00', 'Corporate'),
('ord-00100-00127', 'bk-29bhu-45fg', 'cnc-0100001', 24000.00, '2021-09-08 10:10:10', 'Walk-in'),
('ord-00100-00128', 'bk-30nij-67rt', 'cnc-0100002', 21000.00, '2021-10-17 11:05:00', 'Online Booking'),
('ord-00100-00129', 'bk-31ujm-89wy', 'cnc-0100003', 23000.00, '2021-11-26 14:44:44', 'Referral');

-- Sample inserts for expenses table
INSERT INTO expenses (eid, cid, description, amount, datetime) VALUES
('exp-0100-00100', 'cnc-0100001', 'first-aid supplies', 557.00, '2021-09-23 07:36:48'),
('exp-0100-00101', 'cnc-0100002', 'medical equipment maintenance', 1500.00, '2021-09-24 09:00:00'),
('exp-0100-00102', 'cnc-0100003', 'cleaning services', 700.00, '2021-09-25 08:30:00'),
('exp-0100-00103', 'cnc-0100001', 'staff salaries', 25000.00, '2021-09-26 17:00:00'),
('exp-0100-00104', 'cnc-0100002', 'utilities', 1200.00, '2021-09-27 07:45:00'),
('exp-0100-00105', 'cnc-0100003', 'office supplies', 400.00, '2021-09-28 10:15:00'),
('exp-0100-00106', 'cnc-0100001', 'insurance', 1800.00, '2021-09-29 13:20:00'),
('exp-0100-00107', 'cnc-0100002', 'marketing', 2200.00, '2021-09-30 11:30:00'),
('exp-0100-00108', 'cnc-0100003', 'software licenses', 900.00, '2021-09-30 15:25:00'),
('exp-0100-00109', 'cnc-0100001', 'cleaning services', 600.00, '2021-10-01 10:00:00'),
('exp-0100-00110', 'cnc-0100002', 'staff training', 1500.00, '2021-10-02 09:00:00'),
('exp-0100-00111', 'cnc-0100003', 'equipment rental', 1300.00, '2021-10-03 14:30:00'),
('exp-0100-00112', 'cnc-0100001', 'medical supplies', 2800.00, '2021-10-04 13:10:00'),
('exp-0100-00113', 'cnc-0100002', 'utilities', 1100.00, '2021-10-05 08:30:00'),
('exp-0100-00114', 'cnc-0100003', 'maintenance', 1400.00, '2021-10-06 16:45:00'),
('exp-0100-00115', 'cnc-0100001', 'insurance', 2000.00, '2021-10-07 12:15:00'),
('exp-0100-00116', 'cnc-0100002', 'marketing', 2300.00, '2021-10-08 11:50:00'),
('exp-0100-00117', 'cnc-0100003', 'cleaning supplies', 600.00, '2021-10-09 09:00:00'),
('exp-0100-00118', 'cnc-0100001', 'staff salaries', 26000.00, '2021-10-10 15:30:00'),
('exp-0100-00119', 'cnc-0100002', 'utilities', 1000.00, '2021-10-11 08:40:00'),
('exp-0100-00120', 'cnc-0100003', 'office supplies', 450.00, '2021-10-12 10:20:00'),
('exp-0100-00121', 'cnc-0100001', 'medical equipment', 3200.00, '2021-10-13 14:00:00'),
('exp-0100-00122', 'cnc-0100002', 'insurance', 1900.00, '2021-10-14 11:00:00'),
('exp-0100-00123', 'cnc-0100003', 'staff training', 1400.00, '2021-10-15 09:30:00'),
('exp-0100-00124', 'cnc-0100001', 'cleaning services', 550.00, '2021-10-16 08:20:00'),
('exp-0100-00125', 'cnc-0100002', 'marketing', 2100.00, '2021-10-17 11:40:00'),
('exp-0100-00126', 'cnc-0100003', 'software licenses', 920.00, '2021-10-18 13:50:00'),
('exp-0100-00127', 'cnc-0100001', 'utilities', 1250.00, '2021-10-19 07:30:00'),
('exp-0100-00128', 'cnc-0100002', 'equipment rental', 1350.00, '2021-10-20 16:10:00'),
('exp-0100-00129', 'cnc-0100003', 'medical supplies', 2900.00, '2021-10-21 12:30:00'),
('exp-0100-00130', 'cnc-0100001', 'office supplies', 430.00, '2021-10-22 14:45:00');


