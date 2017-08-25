-- Table creation

CREATE TABLE WOD.WORDS
(
  word_id        long           NOT NULL, -- 1, 2, 3
  word_owner     varchar2(60)  NOT NULL, -- ADZ
  date_added     date          NOT NULL,
  word_name      varchar2(126) NOT NULL, -- Excellent, Strength
  CONSTRAINT word_pk PRIMARY KEY (word_id),
  CONSTRAINT word_unique UNIQUE (word_name)
);

DROP TABLE WOD.WORDS;