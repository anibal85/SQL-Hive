Las características útiles de Hive: cargar datos en la tabla de la base de datos desde el archivo. 

Suponga que se encuentra en una situación en la que tiene 100 GB de archivo de datos y tiene que mover los datos dentro del archivo a una tabla de base de datos para ejecutar consultas SQL que recuperen los datos requeridos.

Sin 'CARGAR DATOS', la única opción para lograr esto es leer el archivo e insertarlo en la tabla de la base de datos utilizando cualquier lenguaje de programación compatible. Esta forma de manipular datos lleva mucho tiempo: 1) lleva tiempo desarrollar un código de trabajo que lea el archivo y lo empuje a la base de datos 2) La operación de movimiento de datos en sí misma toma tiempo para mover todos los datos del archivo a la base de datos.

Con el comando LOAD, podemos cargar datos en masa en la tabla sin escribir una sola línea de código, excepto que necesitamos escribir el comando SQL 'LOAD'. Las operaciones de carga son operaciones puras de copiar / mover que mueven archivos de datos a ubicaciones correspondientes a las tablas de Hive. Además, 'LOAD' no permite ninguna transformación de datos al cargar datos en tablas.
