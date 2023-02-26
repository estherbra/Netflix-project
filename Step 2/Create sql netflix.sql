
CREATE SCHEMA DW_Esther_Andrade
GO

CREATE TABLE [DW_Esther_Andrade].[netflix_table]
(show_id VARCHAR (30),
type VARCHAR (30),
title VARCHAR(100),
director VARCHAR (80),
cast VARCHAR (200),
country VARCHAR(100),
date_added DATE,
release_year INTEGER,
rating VARCHAR(50),
duration VARCHAR(80),
listed_in (100),
description TEXT)