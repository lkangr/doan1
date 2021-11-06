import React from 'react';

import "./css/Payment.css";

export class MasterForm extends React.Component {
    constructor(props) {
      super(props)
      this.state = {
        currentStep: 1,
        fullname: '',
        email:  '',
        formality: '',
        address: '',
        cardNo: '',
        nameOnCard: '',
        expiryDate: '',
        CVC: ''
      }
    }
  
    handleChange = event => {
      const {name, value} = event.target
      this.setState({
        [name]: value
      })    
    }
     
    handleSubmit = event => {
      event.preventDefault()
      const { fullname, email, formality, address, cardNo, nameOnCard, expiryDate, CVC } = this.state
      alert(`Your Order detail: \n 
             Full name: ${fullname} \n
             Email: ${email} \n 
             Formality: ${formality} \n
             Address: ${address} \n
             Card Number: ${cardNo} \n
             Name On Card: ${nameOnCard} \n
             Expiry Date: ${expiryDate} \n
             CVC Code: ${CVC}`)
      this.props.history.push('/home');
    }
    
    _next = () => {
      let currentStep = this.state.currentStep
      currentStep = currentStep >= 2? 3: currentStep + 1
      this.setState({
        currentStep: currentStep
      })
    }
      
    _prev = () => {
      let currentStep = this.state.currentStep
      currentStep = currentStep <= 1? 1: currentStep - 1
      this.setState({
        currentStep: currentStep
      })
    }
  
  /*
  * the functions for our button
  */
  previousButton() {
    let currentStep = this.state.currentStep;
    if(currentStep !==1){
      return (
        <button 
          className="btn btn-secondary" 
          type="button" onClick={this._prev}>
        Previous
        </button>
      )
    }
    return null;
  }
  
  nextButton(){
    let currentStep = this.state.currentStep;
    if(currentStep <3){
      return (
        <button 
          className="btn btn-primary float-end" 
          type="button" onClick={this._next}>
        Next
        </button>        
      )
    }
    return null;
  }

  step1button(){
    let currentStep = this.state.currentStep;
    if(currentStep < 2){
      return (
        <div className = "stepnumber doing">1</div>      
      )
    }
    return (
      <div className = "stepnumber doing">✓</div>
    )
  }

  line1_2(){
    let currentStep = this.state.currentStep;
    if(currentStep > 1){
      return (
        <div className = "line completed"></div>      
      )
    }
    return (
      <div className = "line"></div>
    )
  }

  step2button(){
    let currentStep = this.state.currentStep;
    if(currentStep === 2){
      return (
        <div className = "stepnumber doing">2</div>      
      )
    } else if (currentStep === 3) {
      return (
        <div className = "stepnumber completed">✓</div>
      )
    } else if (currentStep === 1) {
      return (
        <div className = "stepnumber">2</div>
      )
    }
  }

  line2_3(){
    let currentStep = this.state.currentStep;
    if(currentStep > 2){
      return (
        <div className = "line completed"></div>      
      )
    }
    return (
      <div className = "line"></div>
    )
  }

  step3button(){
    let currentStep = this.state.currentStep;
    if(currentStep === 3){
      return (
        <div className = "stepnumber doing">3</div>      
      )
    } else if (currentStep < 3) {
      return (
        <div className = "stepnumber">3</div>
      )
    } else {
      return (
        <div className = "stepnumber completed">✓</div>
      )
    } 
  }
    
    render() {    
      return (
        <React.Fragment>
            <div className = "fragment">
                <div className = "orderform">
                    <form onSubmit={this.handleSubmit}>
                    {/* 
                    render the form steps and pass required props in
                    */}
                    <div className = "title">
                      {this.step1button()}
                      {this.line1_2()}
                      {this.step2button()}
                      {this.line2_3()}
                      {this.step3button()}
                    </div>
                    <Step1 
                        currentStep={this.state.currentStep} 
                        handleChange={this.handleChange}
                        fullname={this.state.fullname}
                        email={this.state.email}
                        formality={this.state.formality}
                        address={this.state.address}
                    />
                    <Step2 
                        currentStep={this.state.currentStep} 
                        handleChange={this.handleChange}
                        cardNo={this.state.cardNo}
                        nameOnCard={this.state.nameOnCard}
                        expiryDate={this.state.expiryDate}
                        CVC={this.state.CVC}
                    />
                    <Step3 
                        currentStep={this.state.currentStep} 
                    />
                    <div className = "button">
                        {this.previousButton()}
                        {this.nextButton()}
                    </div>
                    </form>
                </div>
            </div>
        </React.Fragment>
      );
    }
  }
  
  function Step1(props) {
    if (props.currentStep !== 1) {
      return null
    } 
    return(
      <div className="form-group">
        <label htmlFor="fullname">Fullname</label>
        <input
          className="form-control"
          id="fullname"
          name="fullname"
          type="text"
          placeholder="Enter your full name"
          value={props.fullname}
          onChange={props.handleChange}
          />
        <label htmlFor="email">Email</label>
        <input
          className="form-control"
          id="email"
          name="email"
          type="text"
          placeholder="Enter your email"
          value={props.email}
          onChange={props.handleChange}
          />
        <div>
          <label htmlFor="formality">Formality</label>
          <div className="ratio-control">
          <input 
            id="formality"
            type="radio" 
            value="Eat now" 
            name="formality" 
            onChange={props.handleChange}/> Eat now
          </div>
          <div className="ratio-control">
          <input 
            id="formality"
            type="radio" 
            value="Eat now" 
            name="formality" 
            onChange={props.handleChange}/> Take away
          </div>
        </div>
        <label htmlFor="address">Address</label>
        <input
          className="form-control"
          id="address"
          name="address"
          type="text"
          placeholder="Enter your address if you want to take away"
          value={props.address}
          onChange={props.handleChange}
          />        
      </div>
    );
  }

  function Step2(props) {
    if (props.currentStep !== 2) {
      return null
    } 
    return(
      <div className="form-group">
        <label htmlFor="cardNo">Card Number</label>
        <input
          className="form-control"
          id="cardNo"
          name="cardNo"
          type="text"
          placeholder="Enter your card number"
          value={props.cardNo}
          onChange={props.handleChange}
          />
        <label htmlFor="nameOnCard">Name On Card</label>
        <input
          className="form-control"
          id="nameOnCard"
          name="nameOnCard"
          type="text"
          placeholder="Enter name on card"
          value={props.nameOnCard}
          onChange={props.handleChange}
          />
        <label htmlFor="expiryDate">Expiry Date</label>
        <input
          className="form-control"
          id="expiryDate"
          name="expiryDate"
          type="text"
          placeholder="Enter expiry date"
          value={props.expiryDate}
          onChange={props.handleChange}
          />
        <label htmlFor="CVC">CVC Code</label>
        <input
          className="form-control"
          id="CVC"
          name="CVC"
          type="text"
          placeholder="Enter your CVC code"
          value={props.CVC}
          onChange={props.handleChange}
          />
      </div>
    );
  }
  
  function Step3(props) {
    if (props.currentStep !== 3) {
      return null
    } 
    return(
      <React.Fragment>
        <h3 style={{textAlign: 'center'}}>Your Order need to be confirmed!</h3>
        <p style={{textAlign: 'center'}}>
          Thanks for your order! You will recieve a recipient of your order on your email
        </p>
        <button className="btn btn-success btn-primary float-end">Confirm</button>
      </React.Fragment>
    );
  }
  