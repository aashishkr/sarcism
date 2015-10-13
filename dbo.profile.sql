CREATE TABLE [dbo].[profile] (
    [AdmissionNumber] NCHAR (20) NOT NULL,
    [Name]            NCHAR (50) NOT NULL,
    [Gender]          NCHAR (10) NOT NULL,
    [DOB]             DATE       NOT NULL,
    [ContactNumber]   INT        NOT NULL,
    [MotherName]      NCHAR (50) NOT NULL,
    [FatherName]      NCHAR (50) NOT NULL,
    [AddressL1]       NCHAR (20) NOT NULL,
    [AddressL2]       NCHAR (20) NOT NULL,
    [State]           NCHAR (10) NOT NULL,
    [Pincode]         NCHAR (23) NOT NULL,
    PRIMARY KEY CLUSTERED ([AdmissionNumber] ASC)
);

