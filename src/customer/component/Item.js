import chicken from "../img/chicken.jpg"

const Item = ({name, desc, img, price}) => {
    return (
        <div className="col-sm-6 col-md-5 col-lg-4 item">
            <div className="box">
                <img className="rounded img-fluid pizza-img" src={chicken}/>
                <h3 className="name">{name}</h3>
                <p className="description">{desc}</p>
                <div className="d-flex justify-content-around align-items-center">
                    <button className="btn btn-success" type="button">
                        Thêm vào giỏ
                    </button>
                    <span className="badge rounded-pill bg-danger price">$999</span>
                </div>
            </div>
        </div>
    );
};

export default Item;
