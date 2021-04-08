import React from 'react'
import { Link } from 'react-router-dom';

function Header() {
    return (
        <div>

        
       <nav className="hero">
           <h1>stemtexts</h1>
           <ul class="menu">
                <li class="item"><Link to="/login">Log In</Link></li>
                <li class="item"><Link to="/textbooks">Textbooks</Link></li>
                <li class="item"><Link to="/genres">Genres</Link></li>
                <li class="item"><Link to="/cart">Cart</Link></li>
                
           </ul>
       </nav>
        <div className="header-text">
        <h3>Inexpensive textbooks for the poor college student</h3>
        <h4>Learn as much as you want for less money.</h4>
        <button className="shop-cta">Shop Now </button>
        </div>
        
        </div>
        
      );
}

export default Header
