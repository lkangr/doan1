import Select from "react-select"
import Graph from "./Graph"

const Month = [
  { value: 'Select', label: 'Select' }
]

const Year = []

for (let i = 1; i <= 12; i++) {
  Month.push({value: i, label: i})
}

for (let i = 2015; i <= new Date().getFullYear(); i++) {
  Year.push({value: i, label: i})
}

const Analytic = () => {
  return (
    <>
      <h1 className="fw-bold p-3">Thống kê</h1>
      <div className="p-5">
        Tháng <Select options={Month} defaultValue={Month[0]} className="d-inline-block m-2"/>
        Năm <Select options={Year} defaultValue={Year[Year.length-1]} className="d-inline-block"/>
        <Graph />
      </div>
    </>
  )
}

export default Analytic