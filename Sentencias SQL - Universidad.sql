/* Identificar los programas por facultades: */

select f.nombre_facultad, p.nombre_programa
from universidad.facultad f
inner join universidad.programa p on f.id_facultad = p.fk_id_facultad;


/* Identificar los estudiantes matriculados en cursos del programa "Ingeniería de Software": */

select concat(e.nombre_1, ' ',e.nombre_2, ' ',e.apellido_1, ' ',e.apellido_2, ' ')as Estudiantes, p.nombre_programa,
c.nombre_curso from universidad.estudiante e
inner join universidad.programa p on e.fk_id_programa = p.id_programa
inner join universidad.matricula m on e.num_documento = m.fk_num_documento_est
inner join universidad.curso c on m.fk_id_curso = c.id_curso
where p.nombre_programa = 'Ingeniería de Software';


/* Identificar todos los cursos con estudiantes matriculados y relacionar el número de estudiantes por curso: */

select c.nombre_curso, COUNT(m.id_matricula)  numero_estudiantes
from universidad.curso c
left join universidad.matricula m on c.id_curso = m.fk_id_curso
group by c.id_curso, c.nombre_curso;


/* Identificar el número de materias matriculadas por cada estudiante: */

select concat(e.nombre_1, ' ',e.nombre_2, ' ', e.apellido_1, ' ', e.apellido_2) as Estudiantes,
e.num_documento, count(m.id_matricula) as numero_materias_matriculadas
from universidad.estudiante e
left join universidad.matricula m on e.num_documento = m.fk_num_documento_est
group by e.num_documento;


/* Identificar los estudiantes que no tienen materias matriculadas: */

select concat(e.nombre_1, ' ', e.nombre_2,' ', e.apellido_1,' ', e.apellido_2) as Estudiantes, e.num_documento
from universidad.estudiante e
left join universidad.matricula m on e.num_documento = m.fk_num_documento_est
where m.id_matricula is null;


/* Identificar el número de estudiantes a cargo de cada profesor en cada curso: */

select concat(p.nombre_1, ' ', p.apellido_1) as nombre_profesor, c.nombre_curso, count(e.num_documento) as numero_estudiantes
from universidad.profesor p
inner join universidad.clases cl on p.num_documento = cl.fk_num_documento_prof
inner join universidad.curso c on cl.fk_id_curso = c.id_curso
inner join universidad.matricula m on c.id_curso = m.fk_id_curso
inner join universidad.estudiante e on m.fk_num_documento_est = e.num_documento
group by nombre_profesor, c.nombre_curso;
