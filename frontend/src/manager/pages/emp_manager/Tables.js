import { useState, useEffect } from "react";
import React from 'react';
import axios from 'axios';


const Tables = ({pos}) => {
  const [data, setData] = useState([]);

  useEffect(() => {
    axios
      .get(`/api/staff?type=${pos}`)
      .then((res) => setData(res.data));
  }, [pos])

  return (
    <>
      {data.map(row =>
        <tr>
          <td>{row.id}</td>
          <td><img src={"http://127.0.0.1:8000" + row.avatar} width={100} height={100} alt="Không có ảnh"/></td>
          <td>{row.name}</td>
          <td>{row.email}</td>
          {row.staff_type === 'S' ? <td>Shipper</td> : row.staff_type === 'R' ? <td>Tiếp tân</td> : <td>Quản lý</td>}
        </tr>)}
    </>
  )
}

export default Tables