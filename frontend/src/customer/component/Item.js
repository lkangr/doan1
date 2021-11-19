import { ProductList } from "../Cart";
// import MEDIA_URL from "C:/Users/PC/Downloads/HK211/CNPM/ProjectCNPM/UPDATING VERSION/doan1/backend/backend/settings"

const Item = ({name, desc, img, price}) => {
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
    var exist =  false;

    ProductList.forEach(function(item) {
        if (item["name"] == name) {
            item["qty"] += 1;
        }
        exist = true;
    });
    
    if (!exist) {
        ProductList.push(temp);
        id = id + 1;
    }
}


export default Item;
