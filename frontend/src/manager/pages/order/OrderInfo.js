import { useState, useEffect } from "react";
import { Modal } from "react-bootstrap";

const OrderInfo = ({ data, show, handleClose }) => {

  return (
    <Modal
        size="lg"
        aria-labelledby="contained-modal-title-vcenter"
        centered
        show={show}
        onHide={handleClose}
      >
      <Modal.Header closeButton>
        <Modal.Title>Chi tiết đơn hàng</Modal.Title>
      </Modal.Header>
      <Modal.Body>
        <div className="container">
          <div className="row">
            <div className="col-4 fw-bold">
              <p>Mã đơn hàng: </p>
            </div>
            <div className="col-8">
              <p>{data.id}</p>
            </div>
            <div className="col-4 fw-bold">
              <p>Tên khách hàng: </p>
            </div>
            <div className="col-8">
              <p>{data.c_name}</p>
            </div>
            <div className="col-4 fw-bold">
              <p>Số điện thoại khách hàng: </p>
            </div>
            <div className="col-8">
              <p>{data.c_tele}</p>
            </div>
            <div className="col-4 fw-bold">
              <p>Email khách hàng: </p>
            </div>
            <div className="col-8">
              <p>{data.c_email}</p>
            </div>
            <div className="col-4 fw-bold">
              <p>Hình thức: </p>
            </div>
            <div className="col-8">
              {data.formality === 'E' ? <p>Ăn ngay</p> : <p>Mang đi</p>}
            </div>
            <div className="col-4 fw-bold">
              <p>Địa chỉ khách hàng: </p>
            </div>
            <div className="col-8">
              <p>{data.c_address}</p>
            </div>
            <div className="col-4 fw-bold">
              <p>Tổng tiền đơn hàng: </p>
            </div>
            <div className="col-8">
              <p>{data.total}</p>
            </div>
            <div className="col-4 fw-bold">
              <p>Thời gian: </p>
            </div>
            <div className="col-8">
              <p>{data.time}</p>
            </div>
            <div className="col-4 fw-bold">
              <p>Trạng thái: </p>
            </div>
            <div className="col-8">
              {data.status === 'D' ? <p>Đang giao</p> : data.status === 'F' ? <p>Hoàn thành</p> : <p>Hủy đơn</p>}
            </div>
          </div>
        </div>
      </Modal.Body>
      <Modal.Footer>
        <button className="btn btn-secondary" onClick={handleClose}>
          Đóng
        </button>
      </Modal.Footer>
    </Modal>
  )
}

export default OrderInfo;