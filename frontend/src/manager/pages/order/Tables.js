import { useState, useEffect } from "react";
import Data from "./Data"
import React from 'react';
import axios from 'axios';

import OrderInfo from "./OrderInfo";

const Tables = () => {
  const [data, setData] = useState([]);
  const [show, setShow] = useState(false);
  const [info, setInfo] = useState([]);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);

  const showInfo = (row) => {
    axios
      .get(`/api/order/${row}`)
      .then((res) => setInfo(res.data));
    handleShow();
  }

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
          {row.status === 'D' ? <td>Đang giao</td> : row.status === 'F' ? <td>Hoàn thành</td> : <td>Hủy đơn</td>}
          <td>
            <button type="button" className="btn btn-link" onClick={() => showInfo(row.id)}>Xem đơn hàng</button>
          </td>
        </tr>)}
      <OrderInfo data={info} show={show} handleClose={handleClose} />
    </>
  )
}

export default Tables