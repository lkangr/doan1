import Tables from "./Tables"
import { Table } from "react-bootstrap"
import React from 'react';

const Order = () => {
  return (
    <>
      <h1 className="fw-bold p-3">Danh sách đơn hàng</h1>
      <div className="p-5 text-center">
        <div className="float-right m-3">
          Từ <input type="date" style={{margin: "0 10px"}}></input>
          đến <input type="date" style={{margin: "0 10px"}}></input>
        </div>
        <Table striped bordered hover>
          <thead>
            <tr>
              <th>Mã đơn hàng</th>
              <th>Số tiền</th>
              <th>Thời gian</th>
              <th>Trạng thái</th>
              <th></th>
            </tr>
          </thead>
          <tbody>
            <Tables />
          </tbody>
        </Table>
      </div>
    </>
  )
}

export default Order