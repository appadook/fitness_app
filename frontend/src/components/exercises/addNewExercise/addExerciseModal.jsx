import React, { useState } from 'react';
import Modal from 'react-modal';
import AddExerciseForm from './addExerciseForm';


Modal.setAppElement('#root'); // Important for accessibility

const AddExerciseModal = ({ isOpen, onRequestClose, onAdd }) => {
    return (
      <Modal
        isOpen={isOpen}
        onRequestClose={onRequestClose}
        contentLabel="Add Exercise Modal"
        className="modal"
        overlayClassName="overlay"
      >
        <h2>Add Exercise</h2>
        <AddExerciseForm
        onAdd = {onAdd}
        onRequestClose = {onRequestClose}
        />
      </Modal>
    );
  };
  
  export default AddExerciseModal;