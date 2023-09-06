Definir modelo entidad relacóin del proyecto

1.- Crear app.
rails new pruebatalento -d postgresql

2.- Crar base de datos
 modificar archivo database.yml 
 rails db:create

3.- Instalar gemas : faker, devise, pg_search, pagy.
bundle add devise pg_search pagy faker
rails generate devise:install
rails g devise:views
rails generate devise user

4.- Correr migración.
rails db:migrate

5.- Guardar proyecto en git y realizar primer commit, subir a mi repositorio github modo privado por seguridad.
git add .
git commit -m " gemas ok"

6.-  Crear Scaffolding para :Motor
rails g scaffold Motor tipo name description photo

7.- Crear Scaffolding para :Mantenimiento
rails g scaffold Maintenance tipo name city materials fecha:date operatorname motor:references
8.-Correr migración.
rails db:migrate
9.-  Realizar segundo commit.
10.-Observar el resultado 
rails s -b 0


11.- Agregar Roles:
rails g migration AddRoleToUsers role:integer
modificar : /_add_role_to_users.rb
rails db:migrate


12.- 
