CREATE TABLE tbl_image_type (
    image_type_id TINYINT(3) NOT NULL,
    image_type_name VARCHAR(100) NOT NULL,
    auth_status VARCHAR(1) NOT NULL DEFAULT 'A',
    PRIMARY KEY (image_type_id)
);

CREATE TABLE tbl_resort_type (
    resort_type_id TINYINT(3) NOT NULL,
    resort_type_name VARCHAR(100) NOT NULL,
    auth_status VARCHAR(1) NOT NULL DEFAULT 'A',
    PRIMARY KEY (resort_type_id)
);

CREATE TABLE tbl_resorts (
    resort_id INT NOT NULL,
    resort_type_id TINYINT(3),
    resort_name VARCHAR(250) NOT NULL,
    resort_code VARCHAR(50),
    resort_short_name VARCHAR(100),
    resort_address VARCHAR(500),
    resort_latitude VARCHAR(50),
    resort_longitude VARCHAR(50),
    resort_email1 VARCHAR(100),
    resort_email2 VARCHAR(100),
    resort_mobile1 VARCHAR(20),
    resort_mobile2 VARCHAR(20),
    resort_phone VARCHAR(20),
    resort_website VARCHAR(100),
    primary_contact_person VARCHAR(50),
    resort_reg_no VARCHAR(100),
    is_generator_available INT(1) DEFAULT 0,
    is_swimming_pool_available INT(1) DEFAULT 0,
    is_bbq_allowed INT(1) DEFAULT 0,
    is_food_service_available INT(1) DEFAULT 0,
    auth_status VARCHAR(1) NOT NULL DEFAULT 'A',
    PRIMARY KEY (resort_id),
    FOREIGN KEY (resort_type_id)
        REFERENCES tbl_resort_type (resort_type_id)
);

CREATE TABLE tbl_resort_images (
    resort_image_id INT NOT NULL,
    resort_id INT,
    image_type_id TINYINT(3),
    image_name VARCHAR(100),
    image TEXT,
    auth_status VARCHAR(1) NOT NULL DEFAULT 'A',
    PRIMARY KEY (resort_image_id),
    FOREIGN KEY (resort_id)
        REFERENCES tbl_resorts (resort_id),
    FOREIGN KEY (image_type_id)
        REFERENCES tbl_image_type (image_type_id)
);

CREATE TABLE tbl_cottage_type (
    cottage_type_id TINYINT(3) NOT NULL,
    cottage_type_name VARCHAR(100) NOT NULL,
    auth_status VARCHAR(1) NOT NULL DEFAULT 'A',
    PRIMARY KEY (cottage_type_id)
);

CREATE TABLE tbl_cottages (
    cottage_id INT NOT NULL,
    cottage_type_id TINYINT(3),
    cottage_name VARCHAR(250) NOT NULL,
    cottage_code VARCHAR(100),
    room_no VARCHAR(50),
    floor_no VARCHAR(50),
    position VARCHAR(250),
    is_available INT(1) DEFAULT 0,
    booking_from DATE,
    booking_to DATE,
    front_facing VARCHAR(50),
    back_facing VARCHAR(50),
    capacity VARCHAR(100),
    is_bath_tub_abailable INT(1) DEFAULT 0,
    is_electricity_available INT(1) DEFAULT 0,
    is_tiles INT(1) DEFAULT 0,
    window_count VARCHAR(50),
    auth_status VARCHAR(1) NOT NULL DEFAULT 'A',
    PRIMARY KEY (cottage_id),
    FOREIGN KEY (cottage_type_id)
        REFERENCES tbl_cottage_type (cottage_type_id)
);

CREATE TABLE tbl_cottage_images (
    cottage_image_id INT NOT NULL,
    cottage_id INT,
    image_type_id TINYINT(3),
    image_name VARCHAR(100),
    image TEXT,
    auth_status VARCHAR(1) NOT NULL DEFAULT 'A',
    PRIMARY KEY (cottage_image_id),
    FOREIGN KEY (cottage_id)
        REFERENCES tbl_cottages (cottage_id),
    FOREIGN KEY (image_type_id)
        REFERENCES tbl_image_type (image_type_id)
);

CREATE TABLE tbl_roles (
    role_id TINYINT(3) NOT NULL,
    role_name VARCHAR(50) NOT NULL,
    role_level VARCHAR(50) NOT NULL,
    auth_status VARCHAR(1) NOT NULL DEFAULT 'A',
    PRIMARY KEY (role_id)
);

CREATE TABLE tbl_users (
    user_id INT NOT NULL,
    username VARCHAR(100) NOT NULL,
    user_code VARCHAR(100),
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    full_name VARCHAR(100),
    gender VARCHAR(20),
    email1 VARCHAR(100),
    email2 VARCHAR(100),
    mobile1 VARCHAR(20),
    mobile2 VARCHAR(20),
    address VARCHAR(500),
    preferable_contact VARCHAR(50),
    fathers_name VARCHAR(100),
    mothers_name VARCHAR(100),
    marital_status VARCHAR(20),
    spouse_name VARCHAR(100),
    date_of_birth DATE,
    nid_no VARCHAR(50),
    passport_no VARCHAR(50),
    driving_liecense_no VARCHAR(50),
    birth_certificate_no VARCHAR(50),
    password VARCHAR(100) NOT NULL,
    role_name VARCHAR(50),
    role_level VARCHAR(5),
    auth_status VARCHAR(1) NOT NULL DEFAULT 'A',
    PRIMARY KEY (username)
);

CREATE INDEX idx_user_id
ON tbl_users (user_id);