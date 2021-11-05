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
    <div className="m-5">
      <Paper>
        <Chart
          data={Data}
        >
          <ArgumentAxis />
          <ValueAxis max={7} />

          <BarSeries
            valueField="NumOfOrder"
            argumentField="date"
          />
          <Title text="Số đơn hàng 7 ngày gần đây" />
          <Animation />
        </Chart>
      </Paper>
    </div>
  )
}

export default Graph