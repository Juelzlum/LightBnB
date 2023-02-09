CREATE TABLE properties ( 
  id  SERIAL PRIMARY KEY,
  owner_id   guest_id INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  title VARCHAR(255) NOT NULL,
  description TEXT, 
  thumbnail_photo_url VARCHAR(255) NOT NULL, 
  cover_photo_url VARCHAR(255) NOT NULL, 
  cost_per_night INTEGER  NOT NULL DEFAULT 0,
  parking_spaces INTEGER  NOT NULL DEFAULT 0,
  number_of_bathrooms INTEGER  NOT NULL DEFAULT 0,
  number_of_bedrooms INTEGER  NOT NULL DEFAULT 0,
  country VARCHAR(255) NOT NULL, 
  street VARCHAR(255) NOT NULL, 
  city VARCHAR(255) NOT NULL, 
  province VARCHAR(255) NOT NULL, 
  post_code VARCHAR(255) NOT NULL, 
  active BOOLEAN NOT NULL DEFAULT TRUE
)

INSERT INTO properties(guest_id, title ,description, thumbnail_photo_url,cover_photo_url, cost_per_night, parking_spaces, number_of_bathrooms,number_of_bedrooms, country, street, city, province, post_code, active)
VALUES(1,'Speedlamp', 'Very nice place view', ' https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg?auto=compress&cs=tinysrgb&h=350', 'https://images.pexels.com/photos/2086676/pexels-photo-2086676.jpeg',900.00, 6, 4,8,'Canada','536 Namsub Highway', 'Sotboske','Quebec' , 28142, 'true' ),

(1,'Blank corner ',  'beautiful view and location', 'https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg?auto=compress&cs=tinysrgb&h=350','https://images.pexels.com/photos/2121121/pexels-photo-2121121.jpeg', 835.35,2,3,2,'Canada', '651 Nami Road ','Bohbatev  ','Alberta', 83680, 'true'),

(2,' Habit mix', 'good location', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg?auto=compress&cs=tinysrgb&h=350 ', 'https://images.pexels.com/photos/2080018/pexels-photo-2080018.jpeg ',550.34, 1, 3, 4, 'Canada' ,'1650 Hejto Center ','Genwezuj ','Newfoundland And Labrador',44583,'true')

INSERT INTO users(name, email, password)
VALUES('julian', 'lumjulia@gmail.com','$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u')
('daryl', 'dar123@gmail,com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u')
('jess', 'jess456@hotmail.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u')



INSERT INTO reservations (start_date, end_date, property_id, guest_id)
VALUES ('2018-09-11', '2018-09-26', 1, 1),
('2019-01-04', '2019-02-01', 2, 2),
('2021-10-01', '2021-10-14', 3, 3);

INSERT INTO property_reviews(guest_id, property_id, reservation_id, rating, message)
VALUES(3, 2, 1, 3, 'Decent spot, close to food'),
(3, 2, 2, 4, 'nice view!'),
(3,1, 3, 4, 'Not bad.')
