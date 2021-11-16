import { ProductList } from "../Cart";
import chicken from "../img/chicken.jpg"

const Item = ({name, desc, img=chicken, price=999}) => {
    return (
        <div className="col-sm-6 col-md-5 col-lg-4 item">
            <div className="box">
                <img className="rounded img-fluid pizza-img" src={img}/>
                <h3 className="name">{name}</h3>
                <p className="description">{desc}</p>
                <div className="d-flex justify-content-around align-items-center">
                    <button className="btn btn-success" type="button" onClick={() => addItem(name, price, img)}>
                        Thêm vào giỏ
                    </button>
                    <span className="badge rounded-pill bg-danger price">${price}</span>
                </div>
            </div>
        </div>
    );
};


var id = 1;

function addItem(name, price, img) {
    var temp = {
        "id": id,
        "image": img,
        "name": name,
        "price": price,
        "qty": 1
    }

    if (ProductList.includes(temp)) {
        var index = ProductList.indexOf(temp);
        ProductList[index]["qty"] += 1;  
    }
    else {
        ProductList.push(temp);
        id = id + 1;
    }
}


export default Item;
