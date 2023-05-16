/*
  Warnings:

  - You are about to drop the column `CedulaPaciente` on the `Cita` table. All the data in the column will be lost.
  - You are about to drop the column `TarjetaProfesional` on the `Cita` table. All the data in the column will be lost.
  - You are about to drop the column `idEspecilidad` on the `Medico` table. All the data in the column will be lost.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Cita" (
    "idCita" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Fecha" DATETIME NOT NULL,
    "pacienteCedula" INTEGER,
    "medicoTarjetaProfesional" INTEGER,
    CONSTRAINT "Cita_pacienteCedula_fkey" FOREIGN KEY ("pacienteCedula") REFERENCES "Paciente" ("Cedula") ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT "Cita_medicoTarjetaProfesional_fkey" FOREIGN KEY ("medicoTarjetaProfesional") REFERENCES "Medico" ("TarjetaProfesional") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_Cita" ("Fecha", "idCita") SELECT "Fecha", "idCita" FROM "Cita";
DROP TABLE "Cita";
ALTER TABLE "new_Cita" RENAME TO "Cita";
CREATE TABLE "new_Medico" (
    "TarjetaProfesional" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Nombre" TEXT NOT NULL,
    "Apellido" TEXT NOT NULL,
    "Consultorio" TEXT NOT NULL,
    "Correo" TEXT NOT NULL,
    "especialidadIdEspecilidad" INTEGER,
    CONSTRAINT "Medico_especialidadIdEspecilidad_fkey" FOREIGN KEY ("especialidadIdEspecilidad") REFERENCES "Especialidad" ("idEspecilidad") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_Medico" ("Apellido", "Consultorio", "Correo", "Nombre", "TarjetaProfesional") SELECT "Apellido", "Consultorio", "Correo", "Nombre", "TarjetaProfesional" FROM "Medico";
DROP TABLE "Medico";
ALTER TABLE "new_Medico" RENAME TO "Medico";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
