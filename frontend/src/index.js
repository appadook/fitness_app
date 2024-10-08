import React from 'react';
import ReactDOM from 'react-dom/client'; // Import from 'react-dom/client'
import App from './App';
import './index.css';
// import './global.css';

const root = ReactDOM.createRoot(document.getElementById('root')); // Create root using the new API
root.render(
  <React.StrictMode>
    <App />
  </React.StrictMode>
);
