-- CreateTable
CREATE TABLE "Paciente" (
    "Cedula" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Nombre" TEXT NOT NULL,
    "Apellido" TEXT NOT NULL,
    "FechaNacimiento" DATETIME NOT NULL,
    "Telefono" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "Medico" (
    "TarjetaProfesional" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Nombre" TEXT NOT NULL,
    "Apellido" TEXT NOT NULL,
    "Consultorio" TEXT NOT NULL,
    "Correo" TEXT NOT NULL,
    "idEspecilidad" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "Cita" (
    "idCita" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Fecha" DATETIME NOT NULL,
    "CedulaPaciente" INTEGER NOT NULL,
    "TarjetaProfesional" INTEGER NOT NULL
);

-- CreateTable
CREATE TABLE "Especialidad" (
    "idEspecilidad" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Nombre" TEXT NOT NULL
);
