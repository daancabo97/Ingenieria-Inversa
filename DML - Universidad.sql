/* DML UNIVERSIDAD */

insert into universidad.rol (id_rol, nombre_rol) values
(1, 'Estudiante'),
(2, 'Profesor');


insert into universidad.facultad (id_facultad, nombre_facultad) values
(1, 'Ingenierías'),
(2, 'Bilingüismo'),
(3, 'Matemáticas'),
(4, 'Psicología'),
(5, 'Artes Visuales'),
(6, 'Topografía'),
(7, 'Administración'),
(8, 'Derecho');


insert into universidad.programa (id_programa, nombre_programa, siglas, descripcion_programa, fk_id_facultad) values
(1, 'Ingeniería de Software', 'SOFT', 'En este programa nuestros estudiantes se enfocan en el desarrollo y mantenimiento de software, preparándolos para diseñar y construir aplicaciones informáticas de alta calidad.', 1),
(2, 'Ingeniería Industrial', 'INDU', 'El ingeniero industrial está orientado a optimizar procesos y sistemas en diversas industrias, buscando eficiencia y productividad a través de la gestión de recursos.', 1),
(3, 'Ingeniería en Ciencia de Datos', 'CIEN', 'Esta disciplina se centra en el análisis y la interpretación de datos para tomar decisiones informadas, utilizando herramientas y técnicas avanzadas.', 1),
(4, 'Ingeniería Civil', 'CIV', 'Este programa forma a futuros ingenieros para diseñar y construir infraestructuras esenciales, como carreteras y edificios, mejorando la calidad de vida de la sociedad.', 1),
(5, 'Licenciatura en Inglés', 'ENG', 'Ofrece una formación en el idioma inglés, tanto en su aspecto lingüístico como cultural, y prepara a los estudiantes para enseñar o trabajar en contextos internacionales.', 2),
(6, 'Licenciatura en Matemáticas', 'MAT', 'La licenciatura en Matemáticas prepara a los estudiantes para explorar conceptos matemáticos profundos y aplicar su conocimiento en la resolución de problemas en diversas disciplinas.', 3),
(7, 'Licenciatura en Psicología', 'PSIC', 'El estudio de la mente y el comportamiento humano, preparando a los estudiantes para comprender y ayudar a las personas en sus aspectos emocionales y cognitivos.', 4),
(8, 'Diseño Gráfico', 'DGRA', 'Prepara a los estudiantes para crear comunicaciones visuales efectivas, abarcando áreas como diseño web, publicidad y branding.', 5),
(9, 'Licenciatura en Topografía', 'TOPO', 'Se enfoca en la medición y representación de la superficie terrestre, esencial en la planificación y diseño de proyectos de construcción y geoespaciales.', 6),
(10, 'Administración de Empresas', 'ADMI', 'Ofrece una formación amplia en la gestión y dirección de empresas, abarcando temas como finanzas, recursos humanos y estrategia empresarial.', 7),
(11, 'Licenciatura en Derecho', 'DERE', 'El programa de Derecho forma a estudiantes para comprender, interpretar y aplicar las leyes y regulaciones en la sociedad, preparándolos para carreras en el campo legal y la defensa de los derechos y la justicia.', 8);


insert into universidad.estudiante (num_documento, tipo_documento, nombre_1, nombre_2, apellido_1, apellido_2, fecha_nacimiento, direccion, tel_movil, tel_fijo, correo, contraseña, fk_id_programa, fk_id_rol) values
('CED123456', 'CEDULA', 'Daniel', 'Andrés', 'Caicedo', 'Bohorquez', '1997-01-01', 'CRA 1 no 11 14', 123456789, 987654321, 'abc-11@gmail.com', 'ASDF321', 1, 1),
('CED982704', 'CEDULA', 'Camila', 'Cecilia', 'Alvarez', 'Useche', '1997-02-02', 'CRA 2 no 12 24', 987654321, 123456789, 'def-12@gmail.com', 'REWQ321', 2, 1),
('CED24010', 'CEDULA', 'Juan', 'Guillermo', 'Lopez', 'Lopez', '2000-03-03', 'CRA 3 no 13 34', 111111111, 222222222, 'ghi-12@gmail', 'YTRE543', 3, 1),
('CED130792', 'CEDULA', 'Nicolas', 'Alfredo', 'Quintero', 'Sanchez', '2000-04-04', 'CRA 4 no 14 44', 222222222, 111111111, 'jkl-14@gmail.com', 'HJKL124', 4, 1),
('CED123790', 'CEDULA', 'Jeyson', 'Alejandro', 'Ospina', 'Martinez', '1990-05-05', 'CRA 5 no 15 54', 333333333, 444444444, 'mno-15@gmail.com', 'JKLL543', 5, 1),
('CED987654', 'CEDULA', 'Camilo', 'Esteban', 'Santana', 'Novoa', '1995-06-06', 'CRA 6 no 16 64', 444444444, 333333333, 'pqr-16@gmail.com', 'POIN678', 6, 1),
('CED246810', 'CEDULA', 'Juan', 'Guillermo', 'Lopez', 'Lopez', '1993-03-03', 'CRA 7 no 17 74', 555555555, 10101010, 'stu-17@gmail.com', 'BVJU432', 7, 1),
('CED135792', 'CEDULA', 'Nicolas', 'Alfredo', 'Quintero', 'Sanchez', '1998-04-04', 'CRA 8 no 18 84', 666666666, 111122223, 'vwx-18@gmail.com', 'BGTY760', 8, 1),
('CED123791', 'CEDULA', 'Jeyson', 'Alejandro', 'Ospina', 'Martinez', '1998-05-05', 'CRA 9 no 19 94', 777777777, 878787878, 'yzz-19@gmail.com', 'CNPS6524', 9, 1),
('CED957653', 'CEDULA', 'Camilo', 'Esteban', 'Santana', 'Novoa', '1997-06-06', 'CRA 10 no 20 104', 888888888, 959595959, 'zab-20@gmail.com', 'CPSH678', 10, 1);


insert into universidad.profesor (num_documento, tipo_documento, nombre_1, nombre_2, apellido_1, apellido_2, fecha_nacimiento, direccion, tel_movil, tel_fijo, correo, contraseña, fk_id_programa, fk_id_rol) values
('1032488904', 'CEDULA', 'Dario', 'Felipe', 'Gomez', 'Santos', '1990-01-01', 'CLL 1 no 11 11', 123456789, 987654321, 'vwx-33@gmail.com', 'CPSH867', 1, 2),
('1073985763', 'CEDULA', 'Jose', 'Alejandro', 'Uribe', 'Borre', '1981-02-02', 'CLL 2 no 11 12', 987654321, 123456789, 'vwx-34@gmail.com', 'CPSH368', 2, 2),
('51935326', 'CEDULA', 'Pedro', 'Jose', 'Petro', 'Fernandez', '1972-03-03', 'CLL 3 no 11 13', 111111111, 222222222, 'vwx-35@gmail.com', 'CPSH569', 3, 2),
('1000902876', 'CEDULA', 'Marta', 'Cecilia', 'Rodriguez', 'Voldemort', '1972-02-02', 'CLL 4 no 11 14', 187634321, 123456789, 'vwx-36@gmail.com', 'CPSH470', 2, 2),
('1031564526', 'CEDULA', 'Cecilia', 'Cecilia', 'Garcia', 'Potter', '1990-03-03', 'CLL 5 no 11 15', 111122323, 225432222, 'vwx-37@gmail.com', 'CPSH371', 3, 2),
('1054739742', 'CEDULA', 'Karla', 'Valeria', 'Mora', 'Rodriguez', '1971-02-02', 'CLL 6 no 11 16', 9879830321, 126456789, 'vwx-38@gmail.com', 'CPSH972', 2, 2),
('1020165654', 'CEDULA', 'Patricio', 'Ricardo', 'Perez', 'Diaz', '1972-03-03', 'CLL 7 no 11 17', 111100000, 222256422, 'vwx-39@gmail.com', 'CPSH173', 3, 2),
('1073475431', 'CEDULA', 'Luis', 'Fernando', 'Castro', 'Mayorga', '1981-02-02', 'CLL 8 no 11 18', 987650930, 129864789, 'vwx-40@gmail.com', 'CPSH074', 2, 2),
('1030859833', 'CEDULA', 'Jean', 'Paul', 'Moreno', 'Suarez', '1992-03-03', 'CLL 9 no 11 19', 111152311, 222000222, 'vwx-41@gmail.com', 'CPSH275', 3, 2),
('1033448877', 'CEDULA', 'Jessica', 'Natalia', 'Santa', 'Hernandez', '1973-04-04', 'CLL 10 no 11 110', 290002222, 113561111, 'vwx-142@gmail.com', 'CPSH176', 4, 2);


insert into universidad.curso (id_curso, nombre_curso, fk_id_programa) values
(101, 'Curso SOFT - MAÑANA', 1),
(202, 'Curso SOFT - NOCHE', 1),
(303, 'Curso INDU - MAÑANA', 2),
(404, 'Curso INDU - NOCHE', 2),
(505, 'Curso CIEN - MAÑANA', 3),
(606, 'Curso CIEN - NOCHE', 3),
(707, 'Curso CIVI - MAÑANA', 4),
(808, 'Curso CIVI - NOCHE', 4),
(909, 'Curso ENG', 5),
(1010, 'Curso MAT', 6),
(1111, 'Curso PSIC', 7),
(1212, 'Curso DGRA - MAÑANA', 8),
(1313, 'Curso DGRA - NOCHE', 8),
(1414, 'Curso TOPO', 9),
(1515, 'Curso ADMI', 10),
(1616, 'Curso DERE', 11);


insert into universidad.clases (id_clase, nombre_clase, fk_id_curso, fk_num_documento_prof) values
(1, 'Clase SOFT A', 101, '1032488904'),
(2, 'Clase SOFT B', 202, '1032488904'),
(3, 'Clase INDU A', 303, '1073985763'),
(4, 'Clase INDU B', 404, '1073985763'),
(5, 'Clase CIEN A', 505, '51935326'),
(6, 'Clase CIEN B', 606, '51935326'),
(7, 'Clase CIVI A', 707, '1000902876'),
(8, 'Clase CIVI B', 808, '1000902876'),
(9, 'Clase ENG A', 909, '1031564526'),
(10, 'Clase TOPO A', 1414, '1073475431'),
(11, 'Clase ADMI A', 1515, '1030859833'),
(12, 'Clase DERE A', 1616, '1033448877');


INSERT INTO universidad.matricula (id_matricula, fk_num_documento_est, fk_id_curso, fk_num_documento_prof)
VALUES
    (1, 'CED123456', 101, '1032488904'), 
    (2, 'CED987654', 202, '1032488904'), 
    (3, 'CED246810', 303, '1073985763'), 
    (4, 'CED135792', 404, '1073985763'), 
    (5, 'CED123790', 505, '51935326'),  
    (6, 'CED987654', 606, '51935326'),  
    (7, 'CED135792', 707, '1000902876'), 
    (8, 'CED987654', 808, '1000902876'), 
    (9, 'CED246810', 909, '1031564526'), 
    (10, 'CED135792', 1010, '1031564526'),
    (11, 'CED123790', 1111, '1054739742'), 
    (12, 'CED987654', 1212, '1020165654'), 
    (13, 'CED123790', 1313, '1020165654'), 
    (14, 'CED135792', 1414, '1073475431'),
    (15, 'CED123790', 1515, '1030859833'),
    (16, 'CED123790', 1616, '1033448877'); 


    
    
    
