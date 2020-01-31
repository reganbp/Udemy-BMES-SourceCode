--
-- File generated with SQLiteStudio v3.2.1 on Fri Jan 31 15:28:05 2020
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Categories
CREATE TABLE "Categories" (
    "Id" INTEGER NOT NULL CONSTRAINT "PK_Categories" PRIMARY KEY AUTOINCREMENT,
    "CreateDate" TEXT NOT NULL,
    "ModifiedDate" TEXT NOT NULL,
    "IsDeleted" INTEGER NOT NULL,
    "Name" TEXT NULL,
    "Slug" TEXT NULL,
    "Description" TEXT NULL,
    "MetaDescription" TEXT NULL,
    "MetaKeywords" TEXT NULL,
    "CategoryStatus" INTEGER NOT NULL
);
INSERT INTO Categories (Id, CreateDate, ModifiedDate, IsDeleted, Name, Slug, Description, MetaDescription, MetaKeywords, CategoryStatus) VALUES (1, '2019-09-05 12:19:31.2151155+01:00', '2019-09-05 12:19:31.2193723+01:00', 0, 'Basins', 'Basins', 'Basins', 'Basins', '0', 'basins');
INSERT INTO Categories (Id, CreateDate, ModifiedDate, IsDeleted, Name, Slug, Description, MetaDescription, MetaKeywords, CategoryStatus) VALUES (2, '2019-09-05 12:19:35.3914241+01:00', '2019-09-05 12:19:35.3914351+01:00', 0, 'Baths', 'Baths', 'Baths', 'Baths', '0', 'baths');
INSERT INTO Categories (Id, CreateDate, ModifiedDate, IsDeleted, Name, Slug, Description, MetaDescription, MetaKeywords, CategoryStatus) VALUES (3, '2019-09-05 12:19:36.4270588+01:00', '2019-09-05 12:19:36.4270806+01:00', 0, 'Ceiling Works', 'Ceiling Works', 'Ceiling Works', 'Ceiling Works', '0', 'ceiling-works');
INSERT INTO Categories (Id, CreateDate, ModifiedDate, IsDeleted, Name, Slug, Description, MetaDescription, MetaKeywords, CategoryStatus) VALUES (4, '2019-09-05 12:19:37.3761237+01:00', '2019-09-05 12:19:37.3761351+01:00', 0, 'Doors and Windows', 'Doors and Windows', 'Doors and Windows', 'Doors and Windows', '0', 'doors-and-windows');
INSERT INTO Categories (Id, CreateDate, ModifiedDate, IsDeleted, Name, Slug, Description, MetaDescription, MetaKeywords, CategoryStatus) VALUES (5, '2019-09-05 12:19:38.5843523+01:00', '2019-09-05 12:19:38.5843629+01:00', 0, 'Electrical Works', 'Electrical Works', 'Electrical Works', 'Electrical Works', '0', 'electrical-works');
INSERT INTO Categories (Id, CreateDate, ModifiedDate, IsDeleted, Name, Slug, Description, MetaDescription, MetaKeywords, CategoryStatus) VALUES (6, '2019-09-05 12:19:39.598841+01:00', '2019-09-05 12:19:39.598852+01:00', 0, 'Painting Works', 'Painting Works', 'Painting Works', 'Painting Works', '0', 'painting-works');
INSERT INTO Categories (Id, CreateDate, ModifiedDate, IsDeleted, Name, Slug, Description, MetaDescription, MetaKeywords, CategoryStatus) VALUES (7, '2019-09-05 12:19:41.0836632+01:00', '2019-09-05 12:19:41.0836742+01:00', 0, 'Pipes and Fittings', 'Pipes and Fittings', 'Pipes and Fittings', 'Pipes and Fittings', '0', 'pipes-and-fittings');
INSERT INTO Categories (Id, CreateDate, ModifiedDate, IsDeleted, Name, Slug, Description, MetaDescription, MetaKeywords, CategoryStatus) VALUES (8, '2019-09-05 12:19:42.165861+01:00', '2019-09-05 12:19:42.1658817+01:00', 0, 'Tile Works', 'Tile Works', 'Tile Works', 'Tile Works', '0', 'tile-works');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
