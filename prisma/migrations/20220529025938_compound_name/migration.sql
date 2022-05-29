-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_NutritionNeed" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "groupID" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "male" REAL NOT NULL,
    "female" REAL NOT NULL,
    "unit" TEXT NOT NULL,
    "compoundName" TEXT NOT NULL DEFAULT '',
    CONSTRAINT "NutritionNeed_groupID_fkey" FOREIGN KEY ("groupID") REFERENCES "NutriGroup" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_NutritionNeed" ("female", "groupID", "id", "male", "name", "unit") SELECT "female", "groupID", "id", "male", "name", "unit" FROM "NutritionNeed";
DROP TABLE "NutritionNeed";
ALTER TABLE "new_NutritionNeed" RENAME TO "NutritionNeed";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;
