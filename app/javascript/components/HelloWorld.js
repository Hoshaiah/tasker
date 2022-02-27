import React from "react"
import PropTypes from "prop-types"
import { useState, useEffect, useRef} from "react";
function HelloWorld (props) {
  const {greeting} = props
    return (
      <div className="text-red-500">
        {greeting}
      </div>
    );
}


HelloWorld.propTypes = {
  greeting: PropTypes.string
};
export default HelloWorld
