/*
  Warnings:

  - You are about to drop the column `due` on the `todo` table. All the data in the column will be lost.
  - You are about to drop the column `start` on the `todo` table. All the data in the column will be lost.
  - Added the required column `start_at` to the `todo` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_todo" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL DEFAULT '',
    "note" TEXT NOT NULL DEFAULT '',
    "start_at" INTEGER NOT NULL,
    "pause_until" INTEGER NOT NULL,
    "due_at" INTEGER,
    "do_when" INTEGER NOT NULL,
    "priority" INTEGER NOT NULL,
    "completed_at" INTEGER
);
INSERT INTO "new_todo" ("do_when", "id", "note", "pause_until", "priority", "title") SELECT "do_when", "id", "note", "pause_until", "priority", "title" FROM "todo";
DROP TABLE "todo";
ALTER TABLE "new_todo" RENAME TO "todo";
PRAGMA foreign_key_check("todo");
PRAGMA foreign_keys=ON;
