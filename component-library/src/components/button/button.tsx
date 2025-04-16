import React from 'react';

export const Button: React.FC<ButtonProps> = ({ label, onClick }) => {
    return (
      <button onClick={onClick} style={{ padding: "14px 28px", backgroundColor: "#ffeb3b" }}>
        🚀 {label}
      </button>
    );
  };