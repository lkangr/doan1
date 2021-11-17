import Data from "./Data"
import React from 'react';
import { NavLink } from 'react-router-dom';

const Tables = () => {
  return (
    <>
      {Data.map(row =>
        <tr>
          <td>{row.Id}</td>
          <td>{row.time}</td>
          <td>{row.length}</td>
          <td>{row.accompany}</td>
          <td>{row.Pay}</td>
          <td>{row.state}</td>
          <td><NavLink to="/manage/table/edit">Chỉnh sửa</NavLink></td>
        </tr>)}
    </>
  )
}

export default Tables