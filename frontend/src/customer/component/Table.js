import React from "react";

const Table = ({ID, state}) => {
    return (
        <div className="col-sm-6 col-md-5 col-lg-3 item">
            <div className="box">
                <h3 className="name">Bàn số {ID}</h3>
                <div className="d-flex justify-content-around align-items-center">
                    <a href="/reservation/new">
                        <button className="btn btn-success" type="button" size="small" {...state}>
                            Đặt bàn
                        </button>
                    </a>
                </div>
            </div>
        </div>
    );
};

export default Table;
