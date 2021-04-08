import React from "react";
import { Link } from 'react-router-dom';


export default function Header() {
    let header = (
        <div className="nav-right-menu">
          <ul>
            <li>
              <Link className="nav-text" to="/login">
                LOGIN
              </Link>
            </li>
            <li>
              <Link className="nav-text" to="/signup">
                SIGN UP
              </Link>
            </li>
          </ul>
        </div>
      );
    
    return (
     
        <div className="hero">
          <h1>CO-VENT</h1>
          <h4>A community to connect with people through virtual events</h4>
        </div>
      
    );
    }

