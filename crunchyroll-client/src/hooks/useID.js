import { useState } from 'react';

export default function useID() {
  const getID = () => {
    const idString = sessionStorage.getItem('crid');
    const userID = JSON.parse(idString);
    return userID?.crid
  };

  const [crid, setID] = useState(getID());

  const saveID = userID => {
    sessionStorage.setItem('crid', JSON.stringify(userID));
    setID(userID.crid);
  };

  return {
    setID: saveID,
    crid
  }
}