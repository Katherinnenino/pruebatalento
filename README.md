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
git add .
git commit -m "scaffold ok"

10.-Observar el resultado 
rails s -b 0

11.-Agregar cdn boostrap al proyecto en application.html.erb

12.- Modificar la vista de mantenciones en index agregar tabla y modificar la vista parcial de mantenimiento
  
13.- Agregar navbar 

14.- Modificar routes.rb para la vista de mantenimiento como index

15.- Agregar Roles:
    administrador@correo.cl clave 123456
    operador1@gmail.com  clave: 123456
rails g migration AddRoleToUsers role:integer
modificar : /_add_role_to_users.rb
rails db:migrate
modificamos user.rb con enum role
en 1 : usuario normal sólo crear
en 2: usuario administrador crear, editar, borrar, mostar, subir
En rails c hacemos la configuración asignando un rol a un id

16.- Agregar las restriciiones a usuario normal
configurar application_controller , mantenimiento_controler y motors_controller

18.- Cambiar a español las palabras de las vistas de usuario, motor y mantenimiento.

Pendiente:
agregar a mantenimiento el id del usuario que esta ejecutando el registro...
filtrar el show por id motor

GEMA FAKER PARA COMPLETAR DATOS de las tablas


me falto mucho tiempo, y eso que dormí con suerte tres horas :C
