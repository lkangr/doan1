import React, { Component, useState } from 'react';
import "./Menu.css";

const Menu = () => {
    return ( <
        >
        <
        h1 className = "fw-bold p-3" > Thêm món < /h1>

        <
        div >
        <
        div className = "container-fluid" >
        <
        div className = "row" >
        <
        div className = "col-sm-9" >
        <
        form >
        <
        div className = "input-group" >
        <
        span className = "input-group-text" > Tên món * < /span>  <
        input className = "form-control"
        placeholder = ""
        name = "firstName" / >
        <
        /div> < /
        form > <
        br / >
        <
        form >
        <
        div className = "input-group" >
        <
        span className = "input-group-text" > Mã món * < /span> <
        input className = "form-control"
        placeholder = ""
        name = "lastName" /
        >
        <
        /div> < /
        form > <
        br / >
        <
        div className = "row" >
        <
        div className = "col-sm-6" >
        <
        form >
        <
        div className = "input-group" >
        <
        span className = "input-group-text" > Phân loại < /span> <
        input type = "text"
        className = "form-control"
        placeholder / >
        <
        /div> < /
        form > < br / > < /
        div >
        <
        div className = "col-sm-6" >
        <
        form >
        <
        div className = "input-group" >
        <
        span className = "input-group-text" > Số lượng < /span> <
        input type = "number"
        className = "form-control"
        placeholder / >
        <
        /div> < /
        form > <
        /div> <
        br / >
        <
        form >
        <
        div className = "input-group" >
        <
        span className = "input-group-text" > Mô tả < /span> <
        input type = "text"
        className = "form-control"
        placeholder / >
        <
        /div> <
        br / >
        <
        /form> <
        div className = "container-fluid" >
        <
        div className = "row" >
        <
        div className = "col-sm-6" >
        <
        form >
        <
        div className = "input-group" >
        <
        span className = "input-group-text" > Giá vốn < /span> <
        input type = "text"
        className = "form-control"
        placeholder / >
        <
        /div> < /
        form >
        <
        br / >
        <
        /
        div > <
        div className = "col-sm-6" >
        <
        form >
        <
        div className = "input-group" >
        <
        span className = "input-group-text" > Giá bán < /span> <
        input type = "text"
        className = "form-control"
        placeholder / >
        <
        /div> < /
        form >


        <
        /div> < /
        div > <
        /div> <
        div className = "container-fluid" >
        <
        div className = "row" >
        <
        div className = "col-sm-6" >
        <
        /div>  < /
        div > < /
        div > <
        /div> <
        br / >
        <
        /div> <
        div className = "col-sm-3" >
        <
        img src = "https://tse1.mm.bing.net/th?id=OIP.P9Gss-Czh12A7WKadzx1gwHaE8&pid=Api&rs=1&c=1&qlt=95&w=156&h=104"
        alt = "icon"
        className = "img-fluid" /
        >
        <
        div className = "container-fluid" >
        <
        div className = "row" >
        <
        div className = "col-sm-6" >
        <
        ul className = "nav justify-content-center" >
        <
        li className = "nav-item" >
        <
        a className = "nav-link"
        href = "#" >
        <
        button type = "button"
        className = "btn btn-primary" >
        Sửa <
        /button> < /
        a > <
        /li></ul >
        <
        /div> <
        div className = "col-sm-6" >
        <
        ul className = "nav justify-content-center" >
        <
        li className = "nav-item" >
        <
        a className = "nav-link"
        href = "#" >
        <
        button type = "button"
        className = "btn btn-primary" >
        Xóa <
        /button> < /
        a > <
        /li></ul >

        <
        /div>

        <
        /div> < /
        div >
        <
        /div>  < /
        div > <
        /div>   <
        div className = "col-sm-10" >
        <
        div className = "space" >
        <
        ul className = "nav justify-content-end" >
        <
        li className = "nav-item" >
        <
        a className = "nav-link"
        href = "/food" >
        <
        button type = "button"
        className = "btn btn-primary 2" > Thêm vào < /button> < /
        a > <
        /li> <
        li className = "nav-item" >
        <
        a className = "nav-link"
        href = "/drink" >
        <
        button type = "button"
        className = "btn btn-primary 2" > Hủy bỏ < /button> < /
        a > <
        /li> < /
        ul > <
        /div>  < /
        div > < /
        div >
        <
        / >
    )
}

export default Menu
