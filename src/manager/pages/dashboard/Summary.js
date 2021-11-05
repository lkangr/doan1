import { Container, Row, Col } from "react-bootstrap"

const Summary = () => {
  return (
    <Container>
      <Row>
        <Col>
          <Row className="bg-info bg-gradient m-5">
            <Col xs={12}>
              <h3 className="p-2">Tổng đơn hàng</h3>
            </Col>
            <Col xs={12}>
              <h1 className="p-4 display-4 fw-bold text-center">123456 Đơn</h1>
            </Col>
          </Row>
        </Col>
        <Col>
          <Row className="bg-info bg-gradient m-5">
            <Col xs={12}>
              <h3 className="p-2">Tổng doanh thu</h3>
            </Col>
            <Col xs={12}>
              <h1 className="p-4 display-4 fw-bold text-center">123456 $</h1>
            </Col>
          </Row>
        </Col>
      </Row>
    </Container>
  )
}

export default Summary