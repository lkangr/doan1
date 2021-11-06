const Menu = () => {
    return (
        <div>
            <nav className="navbar navbar-default">
              <div className="container-fluid">
                <div className="navbar-header">
                  <h2 className="navbar-brand" href="#">Thêm món</h2>
                </div>
              </div>
            </nav>
            <br />
            <div className="container-fluid">
              <div className="row">
                <div className="col-sm-9">
                  <form>
                    <div className="input-group">
                      <span className="input-group-text">Tên món*</span>
                      <input type="text" className="form-control" placeholder />
                    </div>
                  </form>
                  <br />
                  <form>
                    <div className="input-group">
                      <span className="input-group-text">Mã món* </span>
                      <input type="text" className="form-control" placeholder />
                    </div>
                  </form>
                  <br />
                  <div className="row">
                    <div className="col-sm-6">
                      <div className="input-group mb-3">
                        <div className="input-group-prepend">
                          <label className="input-group-text m-0" htmlFor="inputGroupSelect01">Số lượng*</label>
                        </div>
                        <select className="custom-select" id="inputGroupSelect01">
                          <option selected>Chọn...</option>
                          <option value={1}>1</option>
                          <option value={2}>2</option>
                          <option value={3}>3</option>
                          <option value={4}>.....@@.....</option>
                        </select>
                      </div>
                    </div>
                    <div className="col-sm-6">
                      <form>
                        <div className="input-group">
                          <span className="input-group-text">Giá bán </span>
                          <input type="text" className="form-control" placeholder />
                        </div>
                      </form>
                    </div>
                    <br />
                    <form>
                      <div className="input-group">
                        <span className="input-group-text">Mô tả</span>
                        <input type="text" className="form-control" placeholder />
                      </div>
                      <br />
                    </form>
                    <div className="col-sm-6">
                      <div className="input-group mb-3">
                        <div className="input-group-prepend">
                          <label className="input-group-text m-0" htmlFor="inputGroupSelect01">Loại</label>
                        </div>
                        <select className="custom-select" id="inputGroupSelect01">
                          <option selected>Chọn...</option>
                          <option value={1}>Bò</option>
                          <option value={2}>Lợn</option>
                          <option value={3}>Gà</option>
                          <option value={4}>.........@@........</option>
                        </select>
                      </div>
                    </div>
                    <div className="col-sm-6">
                      <div className="input-group mb-3">
                        <div className="input-group-prepend">
                          <label className="input-group-text m-0" htmlFor="inputGroupSelect01">Thứ tự món</label>
                        </div>
                        <select className="custom-select" id="inputGroupSelect01">
                          <option selected>Chọn...</option>
                          <option value={1}>Món chính</option>
                          <option value={2}>Món canh</option>
                          <option value={3}>Món tráng miệng</option>
                        </select>
                      </div>
                    </div>
                    <div className="container-fluid">
                      <div className="row">
                        <div className="col-sm-6">
                          <div className="input-group mb-3">
                            <div className="input-group-prepend">
                              <label className="input-group-text m-0" htmlFor="inputGroupSelect01">Nhóm thực đơn</label>
                            </div>
                            <select className="custom-select" id="inputGroupSelect01">
                              <option selected>Chọn...</option>
                              <option value={1}>Món chính</option>
                              <option value={2}>Món canh</option>
                              <option value={3}>Món tráng miệng</option>
                              <option value={4}>........@@...........</option>
                            </select>
                          </div>
                        </div>
                        <div className="col-sm-6">
                          <div className="form-check mb-3">
                            <input className="form-check-input" type="checkbox" id="myCheck" name="remember" required />
                            <label className="form-check-label m-0" htmlFor="myCheck">Là món ăn đặc trưng</label>
                            <div className="valid-feedback">Là món ăn đặc trưng</div>
                            <div className="invalid-feedback">
                              Check this checkbox to continue.
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                    <div className="container-fluid">
                      <div className="row">
                        <div className="col-sm-6">
                          <form>
                            <div className="input-group">
                              <span className="input-group-text">Giá vốn</span>
                              <input type="text" className="form-control" placeholder />
                            </div>
                          </form>
                        </div>
                        <div className="col-sm-6" />
                      </div>
                    </div>
                  </div>
                  <br />
                  <div className="col-sm-6">
                    <div className="input-group mb-3">
                      <div className="input-group-prepend">
                        <label className="input-group-text m-0" htmlFor="inputGroupSelect01">Chế biến tại</label>
                      </div>
                      <select className="custom-select" id="inputGroupSelect01">
                        <option selected>Chọn...</option>
                        <option value={1}>Bếp</option>
                        <option value={2}>........@@.........</option>
                      </select>
                    </div>
                  </div>
                </div>
                <div className="col-sm-3">
                  <div className="row">
                    <div className="col-sm-12">
                      <div className="card">
                        <center>
                          <img src="https://tse1.mm.bing.net/th?id=OIP.P9Gss-Czh12A7WKadzx1gwHaE8&pid=Api&rs=1&c=1&qlt=95&w=156&h=104" alt="icon" className="img-fluid" width={245} height={230} />
                        </center>
                      </div>
                      <ul className="nav justify-content-center">
                        <li className="nav-item">
                          <a className="nav-link" href="#">
                            <button type="button" className="btn btn-primary">
                              Đổi ảnh
                            </button>
                          </a>
                        </li>
                        <li className="nav-item">
                          <a className="nav-link" href="#">
                            <button type="button" className="btn btn-primary">
                              Xóa ảnh
                            </button>
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div className="col-sm-9">
              <ul className="nav justify-content-end">
                <li className="nav-item">
                  <a className="nav-link" href="#">
                    <button type="button" className="btn btn-primary">Thêm vào</button>
                  </a>
                </li>
                <li className="nav-item">
                  <a className="nav-link" href="#">
                    <button type="button" className="btn btn-primary">Hủy bỏ</button>
                  </a>
                </li>
              </ul>
            </div>
        </div>
  )
}

export default Menu