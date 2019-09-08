import React, { useState, useEffect } from "react";
import classes from "./Styles.module.scss";
import "./Styles.module.scss";
import { useVisualMode } from "../../hooks/useVisualMode";

import UserStatus from "../status_pill/UserStatus";

export default function Profile(props) {

  return (
    <section className={classes.profileSection}>
      <div className={classes.wrapper}>
        <UserStatus />

      </div>
    </section>
  );
};