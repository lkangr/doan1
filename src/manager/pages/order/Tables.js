import Data from "./Data"

const Tables = () => {
  return (
    <>
      {Data.map(row =>
        <tr>
          <td>{row.Id}</td>
          <td>{row.Pay}</td>
          <td>{row.time}</td>
          <td>{row.state}</td>
          <td>Xem đơn hàng</td>
        </tr>)}
    </>
  )
}

export default Tables