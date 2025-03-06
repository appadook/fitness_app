# Fitness Web Application

A comprehensive fitness tracking application built with React, Node.js, and MongoDB. This application allows users to track workouts, manage exercises, and view their fitness progress.

## Prerequisites

- Node.js (v14 or higher)
- npm or yarn
- Git

## Installation

1. Clone the repository
```bash
git clone https://github.com/yourusername/fitness_web_app.git
cd fitness_web_app
```

2. Install dependencies for both frontend and backend
```bash
# Install backend dependencies
cd backend
npm install

# Install frontend dependencies
cd ../frontend
npm install
```

3. Environment Setup

Create `.env` files in both server and client directories:

For backend (.env):
```
PGUSER=postgres
PGHOST=localhost
PGDATABASE=postgres
PGPASSWORD=Neelelite10$
PGPORT=5432
DATABASE_URL=postgres://postgres:Neelelite10$@localhost:5432/postgres
```

For frontend (.env):
```
REACT_APP_SUPABASE_URL=https://hesajzenawctbeixkaaa.supabase.co
REACT_APP_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imhlc2FqemVuYXdjdGJlaXhrYWFhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDEwMDQxOTgsImV4cCI6MjA1NjU4MDE5OH0.cBm6cBMdQ18A-9X7YTHESezhYUN5cueVCM_GQzRC5GY
DATABASE_URL=postgresql://postgres:[Neelelite10$]@db.hesajzenawctbeixkaaa.supabase.co:5432/postgres
```

## Running the Application

1. simply run the project from the root directory
```
npm start
```


## Features

- User authentication
- Exercise tracking
- Workout planning
- Progress monitoring
- Exercise library
- Exercise library

