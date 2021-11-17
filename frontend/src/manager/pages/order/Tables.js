import { useState, useEffect } from "react";
import Data from "./Data"
import React from 'react';
import axios from 'axios';

const Tables = () => {
  const [data, setData] = useState([])

  useEffect(() => {
    axios
      .get("/api/order")
      .then((res) => setData(res.data));
  }, [])

  return (
    <>
      {data.map(row =>
        <tr>
          <td>{row.id}</td>
          <td>{row.total}</td>
          <td>{row.time}</td>
          <td>{row.status}</td>
          <td>Xem đơn hàng</td>
        </tr>)}
    </>
  )
}

export default Tables