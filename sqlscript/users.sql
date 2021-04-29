tbl_users
tbl_users_attachments
tbl_roles
tbl_user_resorts
tbl_resorts
tbl_resorts_package
tbl_resorts_image
tbl_cottages
tbl_cottages_image
tbl_booking
tbl_booking_members
tbl_booking_transactions

-----------------------------------------------


CREATE TABLE tbl_users(
   id INT NOT NULL,
   username VARCHAR NOT NULL,
   user_code VARCHAR NOT NULL,
   first_name
   last_name
   full_name VARCHAR,
   email
   mobile1
   mobile2
   adress
   preferable_contact -- mobile, email-- dropdown
   fathers_name
   mothers_name
   marital_status
   spouse_name
   date_of_birth
   nid_no
   passport_no
   driving_liecense_no
   birth_certificate_no
   password
   role_name
   role_level

   PRIMARY KEY ( tutorial_id )
);

CREATE TABLE tbl_users_attachments(
   id INT NOT NULL, -- user_id
  image_nid VARCHAR NOT NULL,
   image_user VARCHAR NOT NULL,
   image_marriage_cert
   PRIMARY KEY ( tutorial_id )
);

CREATE TABLE tbl_roles(
   id INT NOT NULL, 
  role_name VARCHAR NOT NULL,
   role_level VARCHAR NOT NULL,
   PRIMARY KEY ( id )
);

CREATE TABLE tbl_user_resorts(
   id INT NOT NULL, 
   user_id VARCHAR NOT NULL,
   resort_id VARCHAR NOT NULL,
   role_name VARCHAR NOT NULL,
   role_level VARCHAR NOT NULL,
   PRIMARY KEY ( id )
);

CREATE TABLE tbl_resorts(
   id INT NOT NULL, -- resort_id
   resort_name VARCHAR NOT NULL,
   resort_code --SEEINN
   resort_short_name VARCHAR NOT NULL,
   resort_type -- table needed, 2 star, 3 star
   resort_address
   resort_latitude
   resort_longitude
   resort_email
   resort_mobile
   resort_phone
   resort_website
   primary_contact_person
   resort_reg_no
   is_generator_available
   is_bbq_allowed
   is_food_service_available

   PRIMARY KEY ( id )
);

CREATE TABLE tbl_resorts_package(
   id INT NOT NULL, -- resort_id
  
   
   PRIMARY KEY ( id )
);

CREATE TABLE tbl_resorts_image(
   id INT NOT NULL, -- resort_id
platinum_image1
platinum_image2
platinum_image3
platinum_image4
platinum_image5
diamond_image1
diamond_image2
diamond_image3
diamond_image4
diamond_image5
gold_image1
gold_image2
gold_image3
gold_image4
gold_image5
silver_image1
silver_image2
silver_image3
silver_image4
silver_image5
   PRIMARY KEY ( id )
);

CREATE TABLE tbl_cottages(
   id INT NOT NULL, -- resort_id
   cottage_name VARCHAR NOT NULL,
   cottage_code --SEEINN
   room_no
   floor_no VARCHAR NOT NULL,
   position --north south east west
   cottage_type -- table needed for cottage type like premium, delux, basic
   is_available
   front_facing
   back_facing
   capacity
   room_count
   is_bath_tub_abailable
   is_electricity_available
   is_tiles
   window_count
   is_swimming_pool_available

   
   PRIMARY KEY ( id )
);

CREATE TABLE tbl_cottages_image(
   id INT NOT NULL, -- resort_id
platinum_image1
platinum_image2
platinum_image3
platinum_image4
platinum_image5
diamond_image1
diamond_image2
diamond_image3
diamond_image4
diamond_image5
gold_image1
gold_image2
gold_image3
gold_image4
gold_image5
silver_image1
silver_image2
silver_image3
silver_image4
silver_image5
   PRIMARY KEY ( id )
);

CREATE TABLE tbl_booking(
   id INT NOT NULL, -- resort_id

   PRIMARY KEY ( id )
);
CREATE TABLE tbl_booking_members(
   id INT NOT NULL, -- resort_id

   PRIMARY KEY ( id )
);
CREATE TABLE tbl_booking_transactions(
   id INT NOT NULL, -- resort_id

   PRIMARY KEY ( id )
);




