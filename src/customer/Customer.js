import {Home} from './Home';
import Cart from './Cart';
import {Reservation} from './Reservation';
import {BrowserRouter, Route, Switch, NavLink, Redirect} from 'react-router-dom';
import Footer from './Footer';
import { MasterForm } from './Payment';

const Customer = () => {
  return (
    <BrowserRouter>
        <Switch>
        <Route exact path="/">
          <Redirect to="/home" />
        </Route>
          <Route path = "/home" render={props =>
            <div>
              <DefaultContainer />
              <Home />
              <hr/>
              <Footer/>
            </div>
          } />
          <Route path = "/cart" render={props =>
            <div>
              <DefaultContainer />
              <Cart />
              <hr/>
              <Footer/>
            </div>
          } />
          <Route path = "/reservation" render={props =>
            <div>
              <DefaultContainer />
              <Reservation />
              <hr/>
              <Footer/>
            </div>
          } />
          <Route path = "/payment" component = {MasterForm}/>
        </Switch>
    </BrowserRouter>
  );
}

export default Customer;

function DefaultContainer() {
  return (
  <div className="default-container">
        <h3 className = "d-flex justify-content-center m-3" href = "#">
          Restaurant Name
        </h3>
        <nav className = "navbar navbar-expand-sm bg-light navbar-dark">
          <ul className = "navbar-nav">
            <li className = "nav-item- m-1">
              <NavLink className = "btn btn-light btn-outline-primary" to = "/home">
                Home
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

      </div>
  );
}
            
