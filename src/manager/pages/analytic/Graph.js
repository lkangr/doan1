import Paper from '@material-ui/core/Paper';
import React from 'react';

import {
  Chart,
  BarSeries,
  Title,
  ArgumentAxis,
  ValueAxis,
} from '@devexpress/dx-react-chart-material-ui';
import { Animation } from '@devexpress/dx-react-chart';
import Data from "./Data"



const Graph = () => {
  return (
    <>
      <div style={{padding: "20px 0"}}>
        <Paper>
          <Chart
            data={Data}
          >
            <ArgumentAxis />
            <ValueAxis max={31} />

            <BarSeries
              valueField="order"
              argumentField="date"
            />
            <Title text="Số đơn hàng trong tháng 10" />
            <Animation />
          </Chart>
        </Paper>
      </div>
      
      <div style={{padding: "20px 0"}}>
        <Paper>
          <Chart
            data={Data}
          >
            <ArgumentAxis />
            <ValueAxis max={31} />

            <BarSeries
              valueField="pay"
              argumentField="date"
            />
            <Title text="Doanh thu trong tháng 10" />
            <Animation />
          </Chart>
        </Paper>
      </div>
    </>
  )
}

export default Graph