SELECT
  r.date,
  st.first_name,
  st.last_name,
  st.hourly_rate,
  sh.start_time,
  sh.end_time,

  -- jam kerja (dalam jam)
  TIMESTAMP_DIFF(
    TIMESTAMP(DATETIME(DATE(r.date), sh.end_time)),
    TIMESTAMP(DATETIME(DATE(r.date), sh.start_time)),
    MINUTE)
    / 60.0 AS hour_worked,

  -- salary
  (
    TIMESTAMP_DIFF(
      TIMESTAMP(DATETIME(DATE(r.date), sh.end_time)),
      TIMESTAMP(DATETIME(DATE(r.date), sh.start_time)),
      MINUTE)
    / 60.0)
    * st.hourly_rate AS salary
FROM `bens-pizza-490720.pizza_db.rota` r
LEFT JOIN `bens-pizza-490720.pizza_db.staff` st
  ON r.staff_id = st.staff_id
LEFT JOIN `bens-pizza-490720.pizza_db.shift` sh
  ON sh.shift_id = r.shift_id;
