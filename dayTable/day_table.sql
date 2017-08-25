-- Table creation

CREATE TABLE WOD.DAYS
(
  day_id         long    NOT NULL, -- 1, 2, 3
  day_code       varchar2(5)  NOT NULL, -- SUN, MON, TUES
  day_short_name varchar2(5)  NOT NULL, -- Sun, Mon, Tues
  day_name       varchar2(10) NOT NULL,  -- Sunday, Monday, Tuesday
  CONSTRAINT day_pk PRIMARY KEY (day_id),
  CONSTRAINT day_code_check CHECK (day_code IN ('SUN', 'MON', 'TUES', 'WED', 'THURS', 'FRI', 'SAT')),
  CONSTRAINT day_id_check CHECK (day_id BETWEEN 1 AND 7)
);
