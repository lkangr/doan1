import {Foods} from './Foods';
import {Drinks} from './Drinks';
import Cart from './Cart';
import ReserveRoute from './component/router';
import {BrowserRouter, Route, Switch, NavLink} from 'react-router-dom';
import Footer from './Footer';
import React from 'react';
import { MasterForm } from "./Payment";

const Customer = () => {
  return (
    <BrowserRouter>
      <Switch>
        <Route path = "/payment" component = {MasterForm}/>
        <Route path = "/">
      <div className="App container">
          <div className="text-end">
            <a className="btn btn-light btn-outline-primary" href="/manage/login">
              Đăng nhập
            </a>
          </div>
        <h3 className = "d-flex justify-content-center m-3" href = "#">
          Nhà hàng của bạn
            </h3>
            <nav className="navbar navbar-expand-sm bg-light navbar-dark">
              
          <ul className = "navbar-nav">
            <li className = "nav-item- m-1">
              <NavLink className = "btn btn-light btn-outline-primary" to = "/foods">
                Đồ ăn
              </NavLink>
            </li>
            <li className = "nav-item- m-1">
              <NavLink className = "btn btn-light btn-outline-primary" to = "/drinks">
                Đồ uống
              </NavLink>
            </li>
            <li className = "nav-item- m-1">
              <NavLink className = "btn btn-light btn-outline-primary" to = "/cart">
                Giỏ hàng
              </NavLink>
            </li>
            <li className = "nav-item- m-1">
              <NavLink className = "btn btn-light btn-outline-primary" to = "/reservation">
                Đặt bàn
              </NavLink>
            </li>
            
            </ul>
        </nav>

        <Switch>
          <Route path = "/foods" component = {Foods}/>
          <Route path = "/drinks" component = {Drinks}/>
          <Route path = "/cart" component = {Cart}/>
          <Route path = "/reservation" component = {ReserveRoute}/>
        </Switch>
        <hr/>
        <Footer/>
      </div>
      </Route>
      </Switch>
    </BrowserRouter>
  );
}

export default Customer;
