create database universidad;
use universidad;
drop database universidad;

create table universidad.rol (
    id_rol int(10) not null,
    nombre_rol varchar(25) not null,
    primary key (id_rol)
);

create table universidad.facultad (
    id_facultad int(10) not null,
    nombre_facultad varchar(150) not null,
    primary key (id_facultad)
);

create table universidad.programa (
    id_programa int(6) not null,
    nombre_programa varchar(150) not null,
    siglas varchar(8) not null,
    descripcion_programa text not null,
    fk_id_facultad int(10) not null,
    primary key (id_programa),
    constraint fk_id_facultad foreign key (fk_id_facultad) references universidad.facultad (id_facultad) on update cascade
);

create table universidad.estudiante (
    num_documento varchar(15) not null,
    tipo_documento varchar(20) not null,
    nombre_1 varchar(25) not null,
    nombre_2 varchar(25),
    apellido_1 varchar(25) not null,
    apellido_2 varchar(25),
    fecha_nacimiento date not null,
    direccion varchar(100) not null,
    tel_movil bigint(15) not null,
    tel_fijo int(11) not null,
    foto blob,
    correo varchar(100) not null,
    contraseña varchar(40) not null,
	fk_id_programa int(6) not null,
    fk_id_rol int(10) not null,
    primary key (num_documento),
    constraint fk_id_programa_est foreign key (fk_id_programa) references universidad.programa (id_programa) on update cascade,
    constraint fk_id_rol_estudiante foreign key (fk_id_rol) references universidad.rol (id_rol) on update cascade
);

create table universidad.profesor (
    num_documento varchar(15) not null,
    tipo_documento varchar(20) not null,
    nombre_1 varchar(25) not null,
    nombre_2 varchar(25),
    apellido_1 varchar(25) not null,
    apellido_2 varchar(25),
    fecha_nacimiento date not null,
    direccion varchar(100) not null,
    tel_movil bigint(15) not null,
    tel_fijo int(11) not null,
    foto blob,
    correo varchar(100) not null,
    contraseña varchar(40) not null,
	fk_id_programa int(6) not null,
    fk_id_rol int(10) not null,
    primary key (num_documento),
    constraint fk_id_programa_prof foreign key (fk_id_programa) references universidad.programa (id_programa) on update cascade,
    constraint fk_id_rol_profesor foreign key (fk_id_rol) references universidad.rol (id_rol) on update cascade
);

create table universidad.curso (
    id_curso int(10) not null,
    nombre_curso varchar(150) not null,
    fk_id_programa int(6) not null,
    primary key (id_curso),
    constraint fk_id_programa_curso foreign key (fk_id_programa) references universidad.programa (id_programa) on update cascade
);

create table universidad.clases (
    id_clase int(10) not null,
    nombre_clase varchar(150) not null,
    fk_id_curso int(10) not null,
    fk_num_documento_prof varchar(15) not null,
    primary key (id_clase),
    constraint fk_id_curso_clase foreign key (fk_id_curso) references universidad.curso (id_curso) on update cascade,
    constraint fk_num_documento_profesor foreign key (fk_num_documento_prof) references universidad.profesor (num_documento) on update cascade
);

create table universidad.matricula (
    id_matricula int(10) not null,
    fk_num_documento_est varchar(15) not null,
    fk_id_curso int(10) not null,
    fk_num_documento_prof varchar(15) not null,
    primary key (id_matricula),
    constraint fk_num_documento_estudiante foreign key (fk_num_documento_est) references universidad.estudiante (num_documento) on update cascade,
    constraint fk_id_curso_matricula foreign key (fk_id_curso) references universidad.curso (id_curso) on update cascade
);

