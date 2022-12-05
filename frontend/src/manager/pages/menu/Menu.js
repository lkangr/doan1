import React, { Component } from 'react';
import axios from 'axios';
import "./Menu.css";
import AddMenu from "./AddMenu.js";
import { Table } from "react-bootstrap"
class Menu extends Component {

  state = {
    name: "",
    info: "",
    qty_day: 0,
    image: null,
    category_id: 1,
    price: 0,
    cost: 0,
    dish: [],
    drink: []
  };
  componentDidMount() {
    this.getData();
  }
  getData() {
    axios
      .get("/api/food?type=1")
      .then((res) => this.setState({ dish: res.data }, () => console.log(res)))
      .catch(error => console.error(error));
    axios
      .get("/api/food?type=1")
      .then((res) => this.setState({ drink: res.data }, () => console.log(res)))
      .catch(error => console.error(error));
  }

  handleChange = (e) => {
    this.setState({
      [e.target.id]: e.target.value
    })
  };

  handleImageChange = (e) => {
    this.setState({
      image: e.target.files[0]
    })
  };

  handleSubmit = (e) => {
    e.preventDefault();
    if (!this.state.name || !this.state.qty_day || !this.state.image || !this.state.category_id || !this.state.cost || !this.state.price) {
      alert('Chưa điền đầy đủ thông tin');
    }
    else {
      let form_data = new FormData();
      form_data.append('name', this.state.name);
      form_data.append('info', this.state.info);
      form_data.append('qty_day', this.state.qty_day);
      form_data.append('image', this.state.image);
      form_data.append('category_id', this.state.category_id);
      form_data.append('price', this.state.price);
      form_data.append('cost', this.state.cost);
      let url = 'http://127.0.0.1:8000/api/food';
      axios.post(url, form_data, {
        headers: {
          'content-type': 'multipart/form-data'
        }
      })
        .then(() => {
          this.setState({
            name: "",
            info: "",
            qty_day: 0,
            image: null,
            category_id: 1,
            price: 0,
            cost: 0,
          });
          this.getData();
        })
        .catch(err => console.log(err))
    }
  };

  render() {
    return (
      <div className="App">

        <h1 className="fw-bold p-3" > Thêm món </h1>
        <form onSubmit={this.handleSubmit}>

          <div className="Menu_1"  >

            <div className="container-fluid">
              <div className="row">
                <div className="col-sm-6" >
                  <form>
                    <div className="input-group">
                      <span className="input-group-text"> Tên món </span>
                      <input id="name" name="name" className="form-control" type="text" value={this.state.name} onChange={this.handleChange} required />
                    </div>
                  </form>
                  <br />
                  <form>
                    <div className="input-group">
                      <span className="input-group-text"> Mã món </span>
                      <input type="number" min={1} className="form-control" name="id" value={this.state.id} onChange={this.handleChange} required />
                    </div>
                  </form >
                  <br />
                  <div className="row">
                    <div className="col-sm-6">
                      <form>
                        <div className="input-group">
                          <span className="input-group-text"> Phân loại </span>
                          <input type="number" min={1} max={2} id="category_id" name="category_id" className="form-control" value={this.state.category_id} onChange={this.handleChange} required />
                        </div>
                      </form>
                      <br />
                    </div>
                    <div className="col-sm-6">
                      <form>
                        <div className="input-group">
                          <span className="input-group-text"> Số lượng </span>
                          <input name="qty_day" id="qty_day" min={1} type="number" className="form-control" value={this.state.qty_day} onChange={this.handleChange} required />
                        </div>
                      </form >
                    </div>
                    <br />
                    <form>
                      <div className="input-group">
                        <span className="input-group-text"> Mô tả </span>
                        <input name="info" id="info" type="text" className="form-control" value={this.state.info} onChange={this.handleChange} required />
                      </div>
                      <br />
                    </form>
                    <div className="container-fluid">
                      <div className="row" >
                        <div className="col-sm-6">
                          <form>
                            <div className="input-group">
                              <span className="input-group-text"> Giá vốn </span>
                              <input type="number" id="cost" min={1000} step={1000} className="form-control" name="cost" value={this.state.cost} onChange={this.handleChange} required />
                            </div>
                          </form >
                          <br />
                        </div>
                        <div className="col-sm-6" >
                          <form >
                            <div className="input-group">
                              <span className="input-group-text"> Giá bán </span>
                              <input id="price" type="number" min={0} step={1000} className="form-control" value={this.state.price} name="price" onChange={this.handleChange} required />
                            </div>
                          </form >
                        </div>
                      </div>
                    </div>
                    <div className="container-fluid">
                      <div className="row" >
                        <div className="col-sm-6">
                        </div>
                      </div>
                    </div>
                  </div>
                  <br />
                </div>
                <div className="col-sm-6" >
                  <div className="menu_image" style={{ textAlign: 'center' }}>
                    {this.state.image && <i className='fa fa-minus' style={{ position: 'absolute', marginLeft: '30%', marginTop: '5%' }}></i>}
                    {!this.state.image && <input type="file" id="image" onChange={this.handleImageChange} required />}
                    <img src={this.state.image ? URL.createObjectURL(this.state.image) : ''} style={{ display: this.state.image ? 'block' : 'none', marginTop: '10%', marginLeft: '5%', width: '80%', height: '80%' }} alt={this.state.image} width='80%' height='80%' />

                  </div>
                </div>
              </div>
            </div>

          </div>
          <div className="container-fluid">
            <div className="row" >
              <div className="col-sm-8">
                <div className="type_button">
                  <button className="btn btn-primary" style={{ whiteSpace: 'nowrap' }} type="submit">Thêm vào</button>
                </div>
              </div>
              <div className="col-sm-4"> <AddMenu /></div>
            </div>
          </div>
          {this.state.dish && this.state.drink && <div className="container-fluid">
            <h6>Thực đơn đã có</h6>
            <Table striped bordered hover>
              <thead>
                <th style={{ with: 'auto', whiteSpace: 'nowrap' }}>ID</th>
                <th style={{ with: 'auto', whiteSpace: 'nowrap' }}>Tên món</th>
                <th style={{ with: 'auto', whiteSpace: 'nowrap' }}>Giá vốn</th>
                <th style={{ with: 'auto', whiteSpace: 'nowrap' }}>Giá bán</th>
                <th style={{ with: 'auto', whiteSpace: 'nowrap' }}>Thông tin</th>
                <th style={{ with: 'auto', whiteSpace: 'nowrap' }}>Hình ảnh</th>
                <th style={{ with: 'auto', whiteSpace: 'nowrap' }}>Số lượng</th>

              </thead>

              <tbody>
                {this.state.dish && this.state.dish.map((item, index) => {
                  return <tr key={index}>
                    <td style={{ width: 'auto', verticalAlign: "middle" }}> {item.id} </td>
                    <td style={{ width: '30%', textAlign: 'left', verticalAlign: "middle" }}> {item.name}</td>
                    <td style={{ width: 'auto', verticalAlign: "middle" }}>{item.cost} </td>
                    <td style={{ width: 'auto', verticalAlign: "middle" }}>{item.price} </td>
                    <td style={{ width: '30%', textAlign: 'left', verticalAlign: "middle" }}>{item.info} </td>
                    <td style={{ width: '30%', verticalAlign: "middle" }}><div className="product-img"><img src={item.image} alt="" /></div></td>
                    <td style={{ width: 'auto', verticalAlign: "middle" }}> {item.qty_day}</td>
                  </tr>
                })}
              </tbody>
            </Table>
          </div>}
        </form>
      </div>
    );
  }
}

export default Menu;
