import React, { useState } from "react";

export default function LeaderboardTableRow(props) {
  
  return (
    <tr>
      <td>{props.rank}</td>
      <td>{props.name}</td>
      <td>{props.commitmentScore}%</td>
    </tr> 
  );
};