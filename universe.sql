-- Galaxy table
CREATE TABLE galaxy (
  galaxy_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL,
  galaxy_type TEXT NOT NULL,
  distance_from_earth NUMERIC NOT NULL,
  age_in_millions_of_years INT NOT NULL
);

-- Star table
CREATE TABLE star (
  star_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL,
  galaxy_id INT NOT NULL REFERENCES galaxy(galaxy_id),
  is_spherical BOOLEAN NOT NULL,
  mass_in_solar_masses NUMERIC NOT NULL
);

-- Planet table
CREATE TABLE planet (
  planet_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL,
  star_id INT NOT NULL REFERENCES star(star_id),
  has_life BOOLEAN NOT NULL,
  planet_type TEXT NOT NULL,
  diameter_km INT NOT NULL
);

-- Moon table
CREATE TABLE moon (
  moon_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL,
  planet_id INT NOT NULL REFERENCES planet(planet_id),
  is_spherical BOOLEAN NOT NULL,
  diameter_km INT NOT NULL
);

-- Asteroid table
CREATE TABLE asteroid (
  asteroid_id SERIAL PRIMARY KEY,
  name VARCHAR(100) UNIQUE NOT NULL,
  description TEXT NOT NULL,
  distance_from_earth NUMERIC NOT NULL,
  is_spherical BOOLEAN NOT NULL
);


INSERT INTO galaxy (name, galaxy_type, distance_from_earth, age_in_millions_of_years)
VALUES
  ('Milky Way', 'Spiral', 0, 13600),
  ('Andromeda', 'Spiral', 2500000, 10000),
  ('Triangulum', 'Spiral', 3000000, 12000),
  ('Sombrero', 'Elliptical', 29000000, 13000),
  ('Whirlpool', 'Spiral', 23000000, 14000),
  ('Large Magellanic Cloud', 'Irregular', 163000, 11000);


INSERT INTO star (name, galaxy_id, is_spherical, mass_in_solar_masses)
VALUES
  ('Sun', 1, TRUE, 1.0),
  ('Proxima Centauri', 1, TRUE, 0.12),
  ('Sirius', 1, TRUE, 2.1),
  ('Betelgeuse', 1, TRUE, 20.0),
  ('Rigel', 1, TRUE, 21.0),
  ('Vega', 1, TRUE, 2.1);


INSERT INTO planet (name, star_id, has_life, planet_type, diameter_km)
VALUES
  ('Earth', 1, TRUE, 'Terrestrial', 12742),
  ('Mars', 1, FALSE, 'Terrestrial', 6779),
  ('Jupiter', 1, FALSE, 'Gas Giant', 139820),
  ('Saturn', 1, FALSE, 'Gas Giant', 116460),
  ('Neptune', 1, FALSE, 'Ice Giant', 49244),
  ('Venus', 1, FALSE, 'Terrestrial', 12104),
  ('Mercury', 1, FALSE, 'Terrestrial', 4879),
  ('Uranus', 1, FALSE, 'Ice Giant', 50724),
  ('Kepler-22b', 2, TRUE, 'Super-Earth', 24000),
  ('Gliese 581g', 2, TRUE, 'Super-Earth', 15000),
  ('HD 209458 b', 3, FALSE, 'Hot Jupiter', 143000),
  ('WASP-12b', 3, FALSE, 'Hot Jupiter', 180000);


INSERT INTO moon (name, planet_id, is_spherical, diameter_km)
VALUES
  ('Moon', 1, TRUE, 3474),
  ('Phobos', 2, FALSE, 22),
  ('Deimos', 2, FALSE, 12),
  ('Io', 3, TRUE, 3643),
  ('Europa', 3, TRUE, 3121),
  ('Ganymede', 3, TRUE, 5268),
  ('Callisto', 3, TRUE, 4821),
  ('Titan', 4, TRUE, 5150),
  ('Enceladus', 4, TRUE, 504),
  ('Mimas', 4, TRUE, 396),
  ('Triton', 5, TRUE, 2706),
  ('Oberon', 8, TRUE, 1523),
  ('Titania', 8, TRUE, 1578),
  ('Miranda', 8, TRUE, 471),
  ('Ariel', 8, TRUE, 1158),
  ('Umbriel', 8, TRUE, 1169),
  ('Charon', 9, TRUE, 1212),
  ('Nix', 9, FALSE, 49),
  ('Hydra', 9, FALSE, 61),
  ('Styx', 9, FALSE, 10);


INSERT INTO asteroid (name, description, distance_from_earth, is_spherical)
VALUES
  ('Ceres', 'Largest asteroid in the belt', 413000000, TRUE),
  ('Vesta', 'Second largest asteroid', 353000000, TRUE),
  ('Apophis', 'Near-Earth asteroid', 31000000, FALSE);
