-- Table creation

CREATE TABLE WOD.WORDS_OF_DAY
(
  day_id         int    NOT NULL, -- 1, 2, 3
  word_name      varchar2(126) NOT NULL, -- Excellent, Strength
  CONSTRAINT word_of_day_pk PRIMARY KEY (day_id, word_name),
  CONSTRAINT word_of_day_fk FOREIGN KEY (day_id) REFERENCES WOD.day_of_week(day_id),
  CONSTRAINT word_of_day_id_check CHECK (day_id BETWEEN 1 AND 7)
);