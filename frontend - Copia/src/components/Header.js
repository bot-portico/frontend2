import React from 'react';
import '../styles/Header.css';

function Header({ title }) {
  return (
    <header className="header">
      <h1>{title}</h1>
    </header>
  );
}

export default Header;
