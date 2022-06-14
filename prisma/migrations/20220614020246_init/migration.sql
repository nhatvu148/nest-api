-- CreateTable
CREATE TABLE "TitleAkas" (
    "titleId" TEXT NOT NULL,
    "ordering" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "region" TEXT NOT NULL,
    "language" TEXT NOT NULL,
    "types" TEXT[],
    "attributes" TEXT[],
    "isOriginalTitle" BOOLEAN NOT NULL,

    CONSTRAINT "TitleAkas_pkey" PRIMARY KEY ("titleId")
);

-- CreateTable
CREATE TABLE "TitleBasics" (
    "tconst" TEXT NOT NULL,
    "titleType" TEXT NOT NULL,
    "primaryTitle" TEXT NOT NULL,
    "originalTitle" TEXT NOT NULL,
    "isAdult" BOOLEAN NOT NULL,
    "startYear" INTEGER NOT NULL,
    "endYear" INTEGER NOT NULL,
    "runtimeMinutes" INTEGER NOT NULL,
    "genres" TEXT[],

    CONSTRAINT "TitleBasics_pkey" PRIMARY KEY ("tconst")
);

-- CreateTable
CREATE TABLE "TitleCrew" (
    "tconst" TEXT NOT NULL,
    "directors" TEXT[],
    "writers" TEXT[],

    CONSTRAINT "TitleCrew_pkey" PRIMARY KEY ("tconst")
);

-- CreateTable
CREATE TABLE "TitleEpisode" (
    "tconst" TEXT NOT NULL,
    "parentTconst" TEXT NOT NULL,
    "seasonNumber" INTEGER NOT NULL,
    "episodeNumber" INTEGER NOT NULL,

    CONSTRAINT "TitleEpisode_pkey" PRIMARY KEY ("tconst")
);

-- CreateTable
CREATE TABLE "TitlePrincipals" (
    "tconst" TEXT NOT NULL,
    "ordering" INTEGER NOT NULL,
    "nconst" TEXT NOT NULL,
    "category" TEXT NOT NULL,
    "job" TEXT NOT NULL,
    "characters" TEXT NOT NULL,

    CONSTRAINT "TitlePrincipals_pkey" PRIMARY KEY ("tconst")
);

-- CreateTable
CREATE TABLE "TitleRatings" (
    "tconst" TEXT NOT NULL,
    "averageRating" DOUBLE PRECISION NOT NULL,
    "numVotes" INTEGER NOT NULL,

    CONSTRAINT "TitleRatings_pkey" PRIMARY KEY ("tconst")
);

-- CreateTable
CREATE TABLE "NameBasics" (
    "nconst" TEXT NOT NULL,
    "primaryName" TEXT NOT NULL,
    "birthYear" INTEGER NOT NULL,
    "deathYear" INTEGER NOT NULL,
    "primaryProfession" TEXT[],
    "knownForTitles" TEXT[],

    CONSTRAINT "NameBasics_pkey" PRIMARY KEY ("nconst")
);
