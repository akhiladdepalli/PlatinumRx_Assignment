create database Hotel_System_Analysis;

use Hotel_System_Analysis;

CREATE TABLE users (
    user_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100),
    phone_number VARCHAR(20),
    mail_id VARCHAR(100),
    billing_address TEXT
);

CREATE TABLE bookings (
    booking_id VARCHAR(50) PRIMARY KEY,
    booking_date DATETIME,
    room_no VARCHAR(50),
    user_id VARCHAR(50)
);

CREATE TABLE booking_commercials (
    id VARCHAR(50) PRIMARY KEY,
    booking_id VARCHAR(50),
    bill_id VARCHAR(50),
    bill_date DATETIME,
    item_id VARCHAR(50),
    item_quantity DECIMAL(10,2)
);

CREATE TABLE items (
    item_id VARCHAR(50) PRIMARY KEY,
    item_name VARCHAR(100),
    item_rate DECIMAL(10,2)
);

INSERT INTO users (user_id, name, phone_number, mail_id, billing_address) VALUES
('21wrcxuy-67erfn', 'John Doe', '9712345678', 'john.doe@example.com', '123 Main St, Hyderabad'),
('21wrcxuy-67erfo', 'Jane Smith', '9723456789', 'jane.smith@example.com', '456 Oak Ave, Secunderabad'),
('21wrcxuy-67erfp', 'Raj Patel', '9734567890', 'raj.patel@example.com', '789 Elm Rd, Banjara Hills'),
('21wrcxuy-67erfq', 'Priya Sharma', '9745678901', 'priya.sharma@example.com', '101 Pine St, Jubilee Hills'),
('21wrcxuy-67erfr', 'Amit Kumar', '9756789012', 'amit.kumar@example.com', '202 Maple Dr, Gachibowli'),
('21wrcxuy-67erfs', 'Sita Reddy', '9767890123', 'sita.reddy@example.com', '303 Cedar Ln, Hitech City'),
('21wrcxuy-67erft', 'Vikram Singh', '9778901234', 'vikram.singh@example.com', '404 Birch Pl, Madhapur'),
('21wrcxuy-67erfu', 'Neha Gupta', '9789012345', 'neha.gupta@example.com', '505 Walnut St, Kondapur'),
('21wrcxuy-67erfv', 'Rahul Joshi', '9790123456', 'rahul.joshi@example.com', '606 Spruce Ave, Miyapur'),
('21wrcxuy-67erfw', 'Lakshmi Nair', '9710123456', 'lakshmi.nair@example.com', '707 Ashok Rd, Kukatpally'),
('21wrcxuy-67erfx', 'Karan Mehra', '9711234567', 'karan.mehra@example.com', '808 Banyan St, Uppal'),
('21wrcxuy-67erfy', 'Anita Desai', '9712345670', 'anita.desai@example.com', '909 Teak Dr, LB Nagar'),
('21wrcxuy-67erfz', 'Suresh Babu', '9713456780', 'suresh.babu@example.com', '1010 Neem Ln, Dilsukhnagar'),
('21wrcxuy-67erga', 'Meera Iyer', '9714567890', 'meera.iyer@example.com', '1111 Tamarind Pl, Malakpet'),
('21wrcxuy-67ergb', 'Deepak Rao', '9715678901', 'deepak.rao@example.com', '1212 Sandalwood St, Mehdipatnam'),
('21wrcxuy-67ergc', 'Ritu Verma', '9716789012', 'ritu.verma@example.com', '1313 Rosewood Ave, Tolichowki'),
('21wrcxuy-67ergd', 'Arjun Menon', '9717890123', 'arjun.menon@example.com', '1414 Mahogany Rd, Attapur'),
('21wrcxuy-67erge', 'Pooja Das', '9718901234', 'pooja.das@example.com', '1515 Teakwood Dr, Rajendranagar'),
('21wrcxuy-67ergf', 'Naveen Pillai', '9719012345', 'naveen.pillai@example.com', '1616 Ebony St, Hayathnagar'),
('21wrcxuy-67ergg', 'Swati Bose', '9720123456', 'swati.bose@example.com', '1717 Acacia Ln, Vanasthalipuram'),
('21wrcxuy-67ergh', 'Ravi Shankar', '9721234567', 'ravi.shankar@example.com', '1818 Gulmohar Pl, Saroornagar'),
('21wrcxuy-67ergi', 'Divya Sen', '9722345678', 'divya.sen@example.com', '1919 Jamun Ave, L.B. Nagar'),
('21wrcxuy-67ergj', 'Manish Roy', '9723456789', 'manish.roy@example.com', '2020 Mango St, Dilsukhnagar'),
('21wrcxuy-67ergk', 'Kavya Malik', '9724567890', 'kavya.malik@example.com', '2121 Pomegranate Rd, Malakpet'),
('21wrcxuy-67ergl', 'Sanjay Bhat', '9725678901', 'sanjay.bhat@example.com', '2222 Guava Dr, Mehdipatnam'),
('21wrcxuy-67ergm', 'Tara Khan', '9726789012', 'tara.khan@example.com', '2323 Papaya Ln, Tolichowki'),
('21wrcxuy-67ergn', 'Vishal Yadav', '9727890123', 'vishal.yadav@example.com', '2424 Custard Apple St, Attapur'),
('21wrcxuy-67ergo', 'Rhea Pinto', '9728901234', 'rhea.pinto@example.com', '2525 Jackfruit Ave, Rajendranagar'),
('21wrcxuy-67ergp', 'Gopal Mishra', '9729012345', 'gopal.mishra@example.com', '2626 Fig Rd, Hayathnagar');

INSERT INTO bookings (booking_id, booking_date, room_no, user_id) VALUES
('bk-09f3e-95hj', '2021-09-23 07:36:48', 'rm-bhf9-aerjn', '21wrcxuy-67erfn'),
('bk-09f3e-95hk', '2021-09-24 09:15:22', 'rm-bhf9-aerjo', '21wrcxuy-67erfo'),
('bk-09f3e-95hl', '2021-09-25 11:30:45', 'rm-bhf9-aerjp', '21wrcxuy-67erfp'),
('bk-09f3e-95hm', '2021-09-26 14:20:11', 'rm-bhf9-aerjq', '21wrcxuy-67erfq'),
('bk-09f3e-95hn', '2021-09-27 16:45:33', 'rm-bhf9-aerjr', '21wrcxuy-67erfr'),
('bk-09f3e-95ho', '2021-09-28 10:12:07', 'rm-bhf9-aerjs', '21wrcxuy-67erfs'),
('bk-09f3e-95hp', '2021-09-29 13:25:19', 'rm-bhf9-aerjt', '21wrcxuy-67erft'),
('bk-09f3e-95hq', '2021-09-30 18:40:52', 'rm-bhf9-aerju', '21wrcxuy-67erfu'),
('bk-09f3e-95hr', '2021-10-01 08:55:14', 'rm-bhf9-aerjv', '21wrcxuy-67erfv'),
('bk-09f3e-95hs', '2021-10-02 12:08:36', 'rm-bhf9-aerjw', '21wrcxuy-67erfw'),
('bk-09f3e-95ht', '2021-10-03 15:22:48', 'rm-bhf9-aerjx', '21wrcxuy-67erfx'),
('bk-09f3e-95hu', '2021-10-04 17:33:21', 'rm-bhf9-aerjy', '21wrcxuy-67erfy'),
('bk-09f3e-95hv', '2021-10-05 09:47:03', 'rm-bhf9-aerjz', '21wrcxuy-67erfz'),
('bk-09f3e-95hw', '2021-10-06 11:59:27', 'rm-bhf9-aerka', '21wrcxuy-67erga'),
('bk-09f3e-95hx', '2021-10-07 14:13:49', 'rm-bhf9-aerkb', '21wrcxuy-67ergb'),
('bk-09f3e-95hy', '2021-10-08 19:28:15', 'rm-bhf9-aerkc', '21wrcxuy-67ergc'),
('bk-09f3e-95hz', '2021-10-09 07:42:37', 'rm-bhf9-aerkd', '21wrcxuy-67ergd'),
('bk-09f3e-95ia', '2021-10-10 10:56:59', 'rm-bhf9-aerke', '21wrcxuy-67erge'),
('bk-09f3e-95ib', '2021-10-11 13:11:22', 'rm-bhf9-aerkf', '21wrcxuy-67ergf'),
('bk-09f3e-95ic', '2021-10-12 16:25:44', 'rm-bhf9-aerkg', '21wrcxuy-67ergg'),
('bk-09f3e-95id', '2021-10-13 18:39:06', 'rm-bhf9-aerkh', '21wrcxuy-67ergh'),
('bk-09f3e-95ie', '2021-10-14 08:53:28', 'rm-bhf9-aerki', '21wrcxuy-67ergi'),
('bk-09f3e-95if', '2021-10-15 12:07:50', 'rm-bhf9-aerkj', '21wrcxuy-67ergj'),
('bk-09f3e-95ig', '2021-10-16 15:22:12', 'rm-bhf9-aerkk', '21wrcxuy-67ergk'),
('bk-09f3e-95ih', '2021-10-17 17:36:34', 'rm-bhf9-aerkl', '21wrcxuy-67ergl'),
('bk-09f3e-95ii', '2021-10-18 09:50:56', 'rm-bhf9-aerkm', '21wrcxuy-67ergm'),
('bk-09f3e-95ij', '2021-10-19 12:05:18', 'rm-bhf9-aerkn', '21wrcxuy-67ergn'),
('bk-09f3e-95ik', '2021-10-20 14:19:40', 'rm-bhf9-aerko', '21wrcxuy-67ergo'),
('bk-09f3e-95il', '2021-10-21 16:34:02', 'rm-bhf9-aerkp', '21wrcxuy-67ergp');

INSERT INTO items (item_id, item_name, item_rate) VALUES
('itm-a9e8-q8fu', 'Tawa Paratha', 18.00),
('itm-a07vh-aer8', 'Mix Veg', 89.00),
('itm-b12xh-bfs9', 'Chicken Biryani', 220.00),
('itm-c34yi-cgt0', 'Mutton Curry', 350.00),
('itm-d56zk-dhu1', 'Paneer Tikka', 199.00),
('itm-e78al-ewv2', 'Dal Makhani', 149.00),
('itm-f90bm-fxy3', 'Naan Bread', 45.00),
('itm-g12cn-gyz4', 'Raita', 35.00),
('itm-h34do-hza5', 'Gulab Jamun', 60.00),
('itm-i56ep-ib6', 'Butter Chicken', 280.00),
('itm-j78fq-jc7', 'Aloo Gobi', 129.00),
('itm-k90gr-kd8', 'Jeera Rice', 95.00),
('itm-l12hs-le9', 'Pulao Rice', 110.00),
('itm-m34it-mf0', 'Fish Fry', 240.00),
('itm-n56ju-ng1', 'Rasmalai', 75.00),
('itm-o78kv-oh2', 'Palak Paneer', 175.00),
('itm-p90lw-pi3', 'Roomali Roti', 55.00),
('itm-q12mx-qj4', 'Seekh Kebab', 210.00),
('itm-r34ny-rk5', 'Kaju Katli', 450.00),
('itm-s56oz-sl6', 'Malai Kofta', 195.00),
('itm-t78p0-tm7', 'Garlic Naan', 65.00),
('itm-u90q1-un8', 'Egg Curry', 140.00),
('itm-v12r2-vo9', 'Lassi Sweet', 50.00),
('itm-w34s3-wp0', 'Prawn Masala', 380.00),
('itm-x56t4-xq1', 'Kesari Bhat', 85.00),
('itm-y78u5-ys2', 'Mango Lassi', 55.00),
('itm-z90v6-zt3', 'Onion Kulcha', 70.00),
('itm-a12w7-av4', 'Chole Bhature', 160.00),
('itm-b34x8-bw5', 'Shahi Paneer', 225.00),
('itm-c56y9-cx6', 'Ice Cream', 90.00);

INSERT INTO booking_commercials (id, booking_id, bill_id, bill_date, item_id, item_quantity) VALUES
('q34r-3q4o8-q34u', 'bk-09f3e-95hj', 'bl-0a87y-q340', '2021-09-23 12:03:22', 'itm-a9e8-q8fu', 3),
('q3o4-ahf32-o2u4', 'bk-09f3e-95hj', 'bl-0a87y-q340', '2021-09-23 12:03:22', 'itm-a07vh-aer8', 1),
('134lr-oyfo8-3qk4', 'bk-09f3e-95hk', 'bl-34qhd-r7h8', '2021-09-24 12:05:37', 'itm-b12xh-bfs9', 0.5),
('q56s-4r5p9-r45v', 'bk-09f3e-95hl', 'bl-1b98z-s8i9', '2021-09-25 12:08:14', 'itm-c34yi-cgt0', 2),
('q78t-5s6q0-s56w', 'bk-09f3e-95hm', 'bl-2c09a-t9j0', '2021-09-26 12:11:25', 'itm-d56zk-dhu1', 1.5),
('q90u-6t7r1-t67x', 'bk-09f3e-95hn', 'bl-3d1ab-u0k1', '2021-09-27 12:14:36', 'itm-e78al-ewv2', 4),
('r12v-7u8s2-u78y', 'bk-09f3e-95ho', 'bl-4e2bc-v1l2', '2021-09-28 12:17:47', 'itm-f90bm-fxy3', 6),
('r34w-8v9t3-v89z', 'bk-09f3e-95hp', 'bl-5f3cd-w2m3', '2021-09-29 12:20:58', 'itm-g12cn-gyz4', 2),
('r56x-9w0u4-w90a', 'bk-09f3e-95hq', 'bl-6g4de-x3n4', '2021-09-30 12:24:09', 'itm-h34do-hza5', 3),
('r78y-a1v5-x01b', 'bk-09f3e-95hr', 'bl-7h5ef-y4o5', '2021-10-01 12:27:20', 'itm-i56ep-ib6', 1),
('s90z-b2w6-y12c', 'bk-09f3e-95hs', 'bl-8i6fg-z5p6', '2021-10-02 12:30:31', 'itm-j78fq-jc7', 2.5),
('s12a-c3x7-z23d', 'bk-09f3e-95ht', 'bl-9j7gh-a6q7', '2021-10-03 12:33:42', 'itm-k90gr-kd8', 3),
('s34b-d4y8-a34e', 'bk-09f3e-95hu', 'bl-0k8hi-b7r8', '2021-10-04 12:36:53', 'itm-l12hs-le9', 4),
('s56c-e5z9-b45f', 'bk-09f3e-95hv', 'bl-1l9ij-c8s9', '2021-10-05 12:40:04', 'itm-m34it-mf0', 1.5),
('s78d-f6a0-c56g', 'bk-09f3e-95hw', 'bl-2m0jk-d9t0', '2021-10-06 12:43:15', 'itm-n56ju-ng1', 5),
('t90e-g7b1-d67h', 'bk-09f3e-95hx', 'bl-3n1kl-e0u1', '2021-10-07 12:46:26', 'itm-o78kv-oh2', 2),
('t12f-h8c2-e78i', 'bk-09f3e-95hy', 'bl-4o2lm-f1v2', '2021-10-08 12:49:37', 'itm-p90lw-pi3', 8),
('t34g-i9d3-f89j', 'bk-09f3e-95hz', 'bl-5p3mn-g2w3', '2021-10-09 12:52:48', 'itm-q12mx-qj4', 1),
('t56h-j0e4-g90k', 'bk-09f3e-95ia', 'bl-6q4no-h3x4', '2021-10-10 12:55:59', 'itm-r34ny-rk5', 0.5),
('t78i-k1f5-h01l', 'bk-09f3e-95ib', 'bl-7r5op-i4y5', '2021-10-11 12:59:10', 'itm-s56oz-sl6', 3),
('u90j-l2g6-i12m', 'bk-09f3e-95ic', 'bl-8s6pq-j5z6', '2021-10-12 13:02:21', 'itm-t78p0-tm7', 4),
('u12k-m3h7-j23n', 'bk-09f3e-95id', 'bl-9t7qr-k6a7', '2021-10-13 13:05:32', 'itm-u90q1-un8', 2),
('u34l-n4i8-k34o', 'bk-09f3e-95ie', 'bl-0u8rs-l7b8', '2021-10-14 13:08:43', 'itm-v12r2-vo9', 6),
('u56m-o5j9-l45p', 'bk-09f3e-95if', 'bl-1v9st-m8c9', '2021-10-15 13:11:54', 'itm-w34s3-wp0', 1.5),
('u78n-p6k0-m56q', 'bk-09f3e-95ig', 'bl-2w0tu-n9d0', '2021-10-16 13:15:05', 'itm-x56t4-xq1', 3),
('v90o-q7l1-n67r', 'bk-09f3e-95ih', 'bl-3x1uv-o0e1', '2021-10-17 13:18:16', 'itm-y78u5-ys2', 2),
('v12p-r8m2-o78s', 'bk-09f3e-95ii', 'bl-4y2vw-p1f2', '2021-10-18 13:21:27', 'itm-z90v6-zt3', 5),
('v34q-s9n3-p89t', 'bk-09f3e-95ij', 'bl-5z3wx-q2g3', '2021-10-19 13:24:38', 'itm-a12w7-av4', 1),
('v56r-t0o4-q90u', 'bk-09f3e-95ik', 'bl-6a4xy-r3h4', '2021-10-20 13:27:49', 'itm-b34x8-bw5', 2.5),
('v78s-u1p5-r01v', 'bk-09f3e-95il', 'bl-7b5yz-s4i5', '2021-10-21 13:31:00', 'itm-c56y9-cx6', 4);



