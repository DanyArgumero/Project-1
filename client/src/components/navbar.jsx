import React from 'react';
import PropTypes from 'prop-types';


const Navbar = () => {
  return (
    <div>
      <ul>
          <li><a>Alimentos</a></li>
          <li><a>Medicamentos</a></li>
          <li><a>Elementos Quirurgicos</a></li>
          <li><a>Insumos</a></li>
        </ul>
    </div>
  );
};


Navbar.propTypes = {

};


export default Navbar;
