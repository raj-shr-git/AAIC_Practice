select * from imdb.actors;
describe imdb.actors;
select count(*) from imdb.actors;
select * from imdb.actors limit 11 offset 50;
select * from imdb.roles;
describe imdb.roles;
select * from imdb.roles where role = '';
select count(*) from (select distinct actor_id from imdb.roles) a;
select * from imdb.roles where actor_id < 50 order by actor_id desc;
select count(a.actor_id)
from (select actor_id, sum(movie_id) as sm_movie 
from imdb.roles
group by actor_id
having sm_movie > 47000000
order by actor_id asc) a;
select count(*) from (select distinct movie_id from imdb.roles) x;
describe imdb.movies;
describe imdb.movies_genres;
select genres.movie_id, genres.genre, movies.max_rank from imdb.movies_genres genres right outer join (select id, max(rankscore) as max_rank from imdb.movies group by id having max_rank is not null) movies
on genres.movie_id = movies.id;
describe imdb.movies_directors;
describe imdb.movies;
describe imdb.directors;
select movies.name,mv_directors.*, directors.*#, directors.first_name, directors.last_name 
from imdb.movies movies
join imdb.movies_directors mv_directors
on movies.id = mv_directors.movie_id
join imdb.directors directors
on mv_directors.director_id = directors.id;