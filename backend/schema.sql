-- Drop tables if they exist (order matters due to FK relations)
DROP TABLE IF EXISTS exercise_details;
DROP TABLE IF EXISTS exercises;
DROP TABLE IF EXISTS sessions;
DROP TABLE IF EXISTS weeks;
DROP TABLE IF EXISTS workouts;
DROP TABLE IF EXISTS personal_records;

-- Create workouts table
CREATE TABLE workouts (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  purpose TEXT,
  active BOOLEAN DEFAULT true
);

-- Create weeks table with FK to workouts
CREATE TABLE weeks (
  id SERIAL PRIMARY KEY,
  workout_id INTEGER NOT NULL,
  week_number INTEGER NOT NULL,
  FOREIGN KEY (workout_id) REFERENCES workouts(id) ON DELETE CASCADE
);

-- Create sessions table with FK to weeks
CREATE TABLE sessions (
  id SERIAL PRIMARY KEY,
  week_id INTEGER NOT NULL,
  session_name VARCHAR(255) NOT NULL,
  FOREIGN KEY (week_id) REFERENCES weeks(id) ON DELETE CASCADE
);

-- Create exercises table with FK to sessions
CREATE TABLE exercises (
  id SERIAL PRIMARY KEY,
  session_id INTEGER NOT NULL,
  exercise_name VARCHAR(255) NOT NULL,
  FOREIGN KEY (session_id) REFERENCES sessions(id) ON DELETE CASCADE
);

-- Create exercise_details table with FK to exercises
CREATE TABLE exercise_details (
  id SERIAL PRIMARY KEY,
  exercise_id INTEGER NOT NULL,
  set_number INTEGER NOT NULL,
  reps INTEGER,
  weight NUMERIC,
  FOREIGN KEY (exercise_id) REFERENCES exercises(id) ON DELETE CASCADE
);

-- Create personal_records table
CREATE TABLE personal_records (
  id SERIAL PRIMARY KEY,
  weight NUMERIC,
  exercise VARCHAR(255)
);

-- Insert mock data for workouts
INSERT INTO workouts (name, purpose, active) VALUES 
  ('Full Body Blast', 'Build strength and endurance', true),
  ('Cardio Burn', 'Improve cardiovascular health', true);

-- Insert mock data for weeks (assuming workout IDs 1 and 2 exist)
INSERT INTO weeks (workout_id, week_number) VALUES
  (1, 1),
  (1, 2),
  (2, 1);

-- Insert mock data for sessions (use proper week IDs from above)
INSERT INTO sessions (week_id, session_name) VALUES
  (1, 'Monday Session'),
  (1, 'Wednesday Session'),
  (2, 'Friday Session'),
  (3, 'Weekend Session');

-- Insert mock data for exercises (using session IDs)
INSERT INTO exercises (session_id, exercise_name) VALUES
  (1, 'Squats'),
  (1, 'Bench Press'),
  (2, 'Deadlift'),
  (3, 'Running'),
  (4, 'Cycling');

-- Insert mock data for exercise_details (using exercise IDs)
INSERT INTO exercise_details (exercise_id, set_number, reps, weight) VALUES
  (1, 1, 10, 100),
  (1, 2, 8, 110),
  (2, 1, 12, 80),
  (3, 1, 5, 150);

-- Insert mock data for personal_records
INSERT INTO personal_records (weight, exercise) VALUES
  (200, 'Bench Press'),
  (300, 'Deadlift');
