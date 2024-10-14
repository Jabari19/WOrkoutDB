DROP DATABASE IF EXISTS WorkoutDB;
CREATE DATABASE WorkoutDB;
USE WorkoutDB;

-- Users table
CREATE TABLE Users (
    user_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    age INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
);

-- Exercises table
CREATE TABLE Exercises (
    exercise_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    category VARCHAR(50)
);

-- Workouts table
CREATE TABLE Workouts (
    workout_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    date DATETIME,
    duration INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Workout_Exercises table
CREATE TABLE Workout_Exercises (
    workout_exercise_id INT PRIMARY KEY AUTO_INCREMENT,
    workout_id INT,
    exercise_id INT,
    sets INT,
    reps INT,
    FOREIGN KEY (workout_id) REFERENCES Workouts(workout_id),
    FOREIGN KEY (exercise_id) REFERENCES Exercises(exercise_id)
);

-- Nutrition table
CREATE TABLE Nutrition (
    nutrition_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    meal VARCHAR(100),
    calories INT,
    protein INT,
    fat INT,
    carbs INT,
    date DATETIME,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Equipment table
CREATE TABLE Equipment (
    equipment_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    type VARCHAR(50)
);

-- Goals table
CREATE TABLE Goals (
    goal_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT,
    goal_description TEXT,
    target_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

-- Trainers table
CREATE TABLE Trainers (
    trainer_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Certifications table
CREATE TABLE Certifications (
    certification_id INT PRIMARY KEY AUTO_INCREMENT,
    trainer_id INT,
    certification_name VARCHAR(100),
    issued_date DATE,
    FOREIGN KEY (trainer_id) REFERENCES Trainers(trainer_id)
);

-- Food table
CREATE TABLE Food (
    food_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    calories INT,
    protein INT,
    fat INT,
    carbs INT
);

-- Sample Data for Users
INSERT INTO Users (first_name, last_name, email, age) VALUES 
('Alice', 'Smith', 'alice@gmail.com', 25),
('Bob', 'Johnson', 'bob@yahoo.com', 30),
('Charlie', 'Brown', 'charlie@yahoo.com', 22),
('Diana', 'Prince', 'diana@gmail.com', 28);

-- Sample Data for Exercises
INSERT INTO Exercises (name, description, category) VALUES
('Push Up', 'A basic strength exercise targeting the chest.', 'Strength'),
('Running', 'A cardio exercise involving running.', 'Cardio'),
('Squat', 'A lower body strength exercise.', 'Strength'),
('Plank', 'Core stabilization exercise.', 'Core');

-- Sample Data for Workouts
INSERT INTO Workouts (user_id, date, duration) VALUES
(1, '2024-09-24 10:00:00', 30),
(2, '2024-09-24 11:00:00', 45),
(3, '2024-09-25 09:00:00', 40),
(4, '2024-09-25 12:00:00', 35);

-- Sample Data for Workout_Exercises
INSERT INTO Workout_Exercises (workout_id, exercise_id, sets, reps) VALUES
(1, 1, 3, 10),
(1, 3, 3, 15),
(2, 2, 1, 30),
(3, 4, 3, 45);

-- Sample Data for Nutrition
INSERT INTO Nutrition (user_id, meal, calories, protein, fat, carbs, date) VALUES
(1, 'Chicken Salad', 400, 30, 15, 35, '2024-09-24 12:30:00'),
(2, 'Protein Shake', 250, 20, 5, 30, '2024-09-24 08:30:00'),
(3, 'Grilled Salmon', 600, 40, 25, 10, '2024-09-25 13:00:00'),
(4, 'Pasta', 500, 15, 10, 80, '2024-09-25 19:00:00');

-- Sample Data for Equipment
INSERT INTO Equipment (name, description, type) VALUES
('Treadmill', 'Cardio equipment used for running.', 'Cardio'),
('Dumbbell', 'Strength training equipment for resistance exercises.', 'Strength'),
('Kettlebell', 'Weight training equipment.', 'Strength'),
('Rowing Machine', 'Cardio and strength equipment.', 'Cardio');

-- Sample Data for Goals
INSERT INTO Goals (user_id, goal_description, target_date) VALUES
(1, 'Run 5K in under 30 minutes', '2024-12-31'),
(2, 'Bench press 200 lbs', '2024-10-31'),
(3, 'Lose 10 lbs', '2024-11-15'),
(4, 'Complete a marathon', '2025-01-01');

-- Sample Data for Trainers
INSERT INTO Trainers (first_name, last_name) VALUES
('John', 'Doe'),
('Jane', 'Doe'),
('Mike', 'Tyson'),
('Bruce', 'Lee');

-- Sample Data for Certifications
INSERT INTO Certifications (trainer_id, certification_name, issued_date) VALUES
(1, 'Certified Personal Trainer', '2020-05-01'),
(2, 'Certified Strength and Conditioning Specialist', '2021-03-15'),
(3, 'Certified Nutritionist', '2022-01-10'),
(4, 'Certified Yoga Instructor', '2023-06-20');

-- Sample Data for Food
INSERT INTO Food (name, calories, protein, fat, carbs) VALUES
('Chicken Breast', 165, 31, 3.6, 0),
('Brown Rice', 216, 5, 1.8, 45),
('Broccoli', 55, 4, 0.5, 11),
('Egg', 70, 6, 5, 1);
