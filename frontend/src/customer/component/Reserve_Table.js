import Table from "./Table";
import "../css/box.css"

const Menu = () => {
    return (
        <section className="features-boxed">
            <div className="container">
                <div className="intro">
                    <h2 className="text-center">Đặt bàn</h2>
                    <p className="text-center">Vui lòng chọn bàn cần đặt</p>
                </div>
                <div className="row justify-content-center features">
                    <Table 
                        ID="1"
                        state={1}
                    />
                    <Table 
                        ID="2"
                        state={0}
                    />
                    <Table 
                        ID="3"
                        state={1}
                    />
                    <Table 
                        ID="4"
                        state={1}
                    />
                </div>
            </div>
        </section>
    );
};

export default Menu;
