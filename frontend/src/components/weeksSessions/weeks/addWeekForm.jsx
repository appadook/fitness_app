import React, { useState } from 'react';

const AddWeekForm = ({ onAdd, onRequestClose , workoutId}) => {
  const [newWeek, setNewWeek] = useState({ week_number: '', workout_id: parseInt(workoutId) });

  const handleInputChange = (e) => {
    const { name, value } = e.target;
    setNewWeek({
      ...newWeek,
      [name]: value
    });
  };

  const handleSubmit = (e) => {
    e.preventDefault();
    onAdd(newWeek);
    setNewWeek({ week_number: '', workout_id: workoutId});
    onRequestClose(); // Close the modal after adding the workout
  };

  return (
    <form onSubmit={handleSubmit} className="add-week-form">
      <input
        type="text"
        name="week_number"
        value={newWeek.week_number}
        onChange={handleInputChange}
        placeholder="Week Number"
        required
      />
      <button type="submit" className="submit-btn">Add Week</button>
      <button type="button" className="delete-btn" onClick={onRequestClose}>Cancel</button>
    </form>
  );
};

export default AddWeekForm;