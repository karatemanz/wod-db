-- Words of the Week: Sun - Sat | Changes Randomly Sunday 12:00 AM

CREATE TABLE WOD.WEEKS_WORDS (
  day_id       long  NOT NULL,
  word_id      long  NOT NULL,
  last_changed date NOT NULL,
  CONSTRAINT word_day_pk PRIMARY KEY (day_id, word_id),
  CONSTRAINT day_fk FOREIGN KEY(day_id) REFERENCES WOD.days(day_id),
  CONSTRAINT word_fk FOREIGN KEY(word_id) REFERENCES WOD.words(word_id)
);