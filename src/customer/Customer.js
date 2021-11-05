import {Foods} from './Foods';
import {Drinks} from './Drinks';
import {Cart} from './Cart';
import {Reservation} from './Reservation';
import {BrowserRouter, Route, Switch, NavLink, Redirect} from 'react-router-dom';
import Footer from './Footer';
import React from 'react';

const Customer = () => {
  return (
    <BrowserRouter>
      <div className="App container">
        <h3 className = "d-flex justify-content-center m-3" href = "#">
          Restaurant Name
        </h3>
        <nav className = "navbar navbar-expand-sm bg-light navbar-dark">
          <ul className = "navbar-nav">
            <li className = "nav-item- m-1">
              <NavLink className = "btn btn-light btn-outline-primary" to = "/foods">
                Foods
              </NavLink>
            </li>
            <li className = "nav-item- m-1">
              <NavLink className = "btn btn-light btn-outline-primary" to = "/drinks">
                Drinks
              </NavLink>
            </li>
            <li className = "nav-item- m-1">
              <NavLink className = "btn btn-light btn-outline-primary" to = "/cart">
                Cart
              </NavLink>
            </li>
            <li className = "nav-item- m-1">
              <NavLink className = "btn btn-light btn-outline-primary" to = "/reservation">
                Reservation
              </NavLink>
            </li>
            <li className="nav-item- m-1">
              <a className="btn btn-light btn-outline-primary" href="/manage">
                Quản lí
              </a>
            </li>
          </ul>
        </nav>

        <Switch>
          <Route path = "/foods" component = {Foods}/>
          <Route path = "/drinks" component = {Drinks}/>
          <Route path = "/cart" component = {Cart}/>
          <Route path = "/reservation" component = {Reservation}/>
          <Redirect from="/" to="/home" />
        </Switch>
        <hr/>
        <Footer/>
      </div>
    </BrowserRouter>
  );
}

export default Customer;
