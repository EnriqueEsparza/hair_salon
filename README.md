Hair Salon by Enrique Esparza

Heroku => Didn't make enough progress to Heroku

Unfortunately I didn't get anywhere close to finishing this.  I thought because my laptop ran postgres I was good, I didn't realize the pg gem wasn't on my machine and would give me so much trouble.  I lost a couple of hours getting that going. Either way this is what I have for now.  I will make my best effort to make this work this weekend.



# psql
username=# CREATE DATABASE hair_salon;
username=# \c hair_salon;
hair_salon=# CREATE TABLE clients (id serial PRIMARY KEY, client_name varchar);
hair_salon=# CREATE TABLE stylists (id serial PRIMARY KEY, stylist_name varchar, client_id int);
hair_salon=# CREATE DATABASE hair_salon_test WITH TEMPLATE hair_salon;


Please Bundle install the following Gems: 'sinatra' 'sinatra-contrib' 'rspec' 'capybara' 'pry' 'pg'

MIT License: Copyright (c) 2009-2015 Plataformatec http://plataformatec.com.br/

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
