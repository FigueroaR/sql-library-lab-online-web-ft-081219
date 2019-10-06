def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year 
  FROM books 
  WHERE series_id = 1 
  ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto 
  FROM characters 
  ORDER BY LENGTH(motto) DESC 
  LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) 
  FROM characters 
  GROUP BY species 
  ORDER BY COUNT(species) DESC 
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM series
  INNER JOIN authors
  ON series.author_id = authors.id
  INNER JOIN subgenres
  ON series.subgenre_id = subgenres.id;"
end

def select_series_title_with_most_human_characters
<<<<<<< HEAD
  "SELECT series.title
  FROM series
  INNER JOIN characters
  ON series.author_id = characters.author_id
  GROUP BY series.title, species
  HAVING characters.species = 'human'
  ORDER BY COUNT(species) DESC
  LIMIT 1;"
=======
  "SELECT series.title, SUM(characters.species)
  FROM series
  INNER JOIN characters
  ON series.author_id = characters.author_id
  
  ;"
>>>>>>> 356f4f01db98e67236fa85475c22c8ccaf3b21fa


end



def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(name)
  FROM character_books
  INNER JOIN characters
  ON characters.id = character_books.character_id
  GROUP BY characters.name
  ORDER BY COUNT(name) DESC;"
end
