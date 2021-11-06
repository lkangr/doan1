import Item from "./Item";
import "../css/box.css"
const Menu = ({name, desc, menu, addItem}) => {
    return (
        <section className="features-boxed">
            <div className="container">
                <div className="intro">
                    <h2 className="text-center">{name}</h2>
                    <p className="text-center">{desc}</p>
                </div>
                <div className="row justify-content-center features">
                    <Item 
                        name="Chicken 1"
                        desc="Đây là một dòng mô tả về đồ ăn"
                    />
                    <Item 
                        name="Chicken 2"
                        desc="Đây là một dòng mô tả về đồ ăn"
                    />
                    <Item 
                        name="Chicken 3"
                        desc="Đây là một dòng mô tả về đồ ăn"
                    />
                    <Item 
                        name="Chicken 4"
                        desc="Đây là một dòng mô tả về đồ ăn"
                    />
                    <Item 
                        name="Chicken 5"
                        desc="Đây là một dòng mô tả về đồ ăn"
                    />
                    <Item 
                        name="Chicken 6"
                        desc="Đây là một dòng mô tả về đồ ăn"
                    />
                </div>
            </div>
        </section>
    );
};

export default Menu;
