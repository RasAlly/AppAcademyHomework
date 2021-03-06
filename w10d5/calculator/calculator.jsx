import React from "react";

class Calculator extends React.Component {
  constructor() {
    super();
    this.state = {result: 0, num1: "", num2: ""};
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.subtract = this.subtract.bind(this);
    this.reset = this.reset.bind(this);
  }

  setNum1(e) {
    const num1 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({num1});
  }

  setNum2(e) {
    const num2 = e.target.value ? parseInt(e.target.value) : "";
    this.setState({num2});
  }


  add(e) {
    e.preventDefault();
    const result = this.state.num1 + this.state.num2;
    this.setState({result})
  }

  multiply(e) {
    e.preventDefault();
    const result = this.state.num1 * this.state.num2;
    this.setState({result})
  }

  divide(e) {
    e.preventDefault();
    const result = this.state.num1 / this.state.num2;
    this.setState({result})
  }

  subtract(e) {
    e.preventDefault();
    const result = this.state.num1 - this.state.num2;
    this.setState({result});
  }

  reset(e) {
    e.preventDefault();
    const result = 0;
    this.setState({result})
  }

  render() {
    return (
      <div>
        <h1>{this.state.result}</h1> 
        <input onChange={this.setNum1} value={this.state.num1} />
        <input onChange={this.setNum2} value={this.state.num2} />
        <br />
        <button onClick={this.add}>add</button>
        <button onClick={this.multiply}>multiply</button>
        <button onClick={this.divide}>divide</button>
        <button onClick={this.subtract}>subtract</button>
        <br />
        <button onClick={this.reset}>RESET</button>
      </div>
    );
  }
}

export default Calculator;