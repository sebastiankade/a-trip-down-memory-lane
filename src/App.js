import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

class App extends Component {
  render() {
    return (
      <div className="App">
        <header className="App-header">
          <img src={logo} className="App-logo" alt="logo" />
          <h1 className="App-title">sebastian kade</h1>
        </header>
        <p className="App-intro">
          Never start, it is impossible.
        </p>
      </div>
    );
  }
}

export default App;
