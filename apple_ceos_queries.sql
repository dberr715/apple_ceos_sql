-- Find and display all ceo names and first year in ascending order
SELECT ceo_name, first_year_active 
FROM apple_ceos
ORDER BY first_year_active ASC





-- Add Dwight Schrute to table,  started work in 2023, then filter out all ceos that started after 2000
INSERT INTO apple_ceos
(ceo_name, slug, first_year_active)
VALUES ('Dwight Schrute', "dwightschrute", 2023 );

SELECT ceo_name, first_year_active FROM apple_ceos
WHERE first_year_active = ;





-- Create second data table and link it to apple_ceos
CREATE TABLE IF NOT EXISTS apple_cto (
    cto_name TEXT,
    st_year INTEGER,
    major_find TEXT
) ;


INSERT INTO apple_cto
(cto_name,  st_year, major_find)
VALUES ('Mr. Jones', 1996, 'Pluto'),
        ('Steve-O', 2011, 'iphone'),
        ('Andre3000', 1999, 'Hello sir'),
        ('Golden Calculator', 2023, 'to divide'),
        ('Rose', 1000, 'Smell like wooohoo hooo hoo');


SELECT * FROM apple_ceos 
INNER JOIN apple_cto
    ON apple_ceos.first_year_active = apple_cto.st_year;

SELECT * FROM apple_ceos 
LEFT JOIN apple_cto
    ON apple_ceos.first_year_active = apple_cto.st_year;

