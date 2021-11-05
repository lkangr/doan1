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
                        name="Fucking chicken 1"
                        desc="Eat and then you die"
                    />
                    <Item 
                        name="Fucking chicken 2"
                        desc="Eat and then you cry"
                    />
                    <Item 
                        name="Fucking chicken 3"
                        desc="I'm tired :v"
                    />
                    <Item 
                        name="Fucking chicken 4"
                    />
                    <Item 
                        name="Fucking chicken 5"
                    />
                    <Item 
                        name="Fucking chicken 6"
                    />
                </div>
            </div>
        </section>
    );
};

export default Menu;
