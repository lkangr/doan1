import React from "react";
import { Switch, Route, Redirect } from "react-router-dom";

import Dashboard from "./pages/dashboard/Dashboard"
import Order from "./pages/order/Order"
import Analytic from "./pages/analytic/Analytic"

const ManageRoute = () => {
  return (
    <Switch>
      <Route path="/manage/dashboard">
        <Dashboard />
      </Route>
      <Route path="/manage/order">
        <Order />
      </Route>
      <Route path="/manage/analytic">
        <Analytic />
      </Route>
      <Redirect from="/manage" to="/manage/dashboard" />
    </Switch>
  )
}

export default ManageRoute