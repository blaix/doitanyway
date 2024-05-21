-- CreateTable
CREATE TABLE "todo" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "title" TEXT NOT NULL DEFAULT '',
    "note" TEXT NOT NULL DEFAULT '',
    "start" INTEGER NOT NULL,
    "pause_until" INTEGER NOT NULL,
    "due" INTEGER,
    "do_when" INTEGER NOT NULL,
    "priority" INTEGER NOT NULL
) STRICT;
