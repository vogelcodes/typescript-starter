-- CreateTable
CREATE TABLE "NutritionNeed" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "groupID" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "male" REAL NOT NULL,
    "female" REAL NOT NULL,
    "unit" TEXT NOT NULL,
    CONSTRAINT "NutritionNeed_groupID_fkey" FOREIGN KEY ("groupID") REFERENCES "NutriGroup" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "NutriGroup" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL
);
