CREATE TABLE [dbo].[Organisation] (
    [orgID]       INT          IDENTITY (1, 1) NOT NULL,
    [orgEmail]    VARCHAR (50) NOT NULL,
    [orgName]     VARCHAR (50) NOT NULL,
    [orgPassword] VARCHAR (50) NOT NULL,
    [orgDescription] VARCHAR (150) ,
    [orgLocation] VARCHAR (50) NOT NULL,
    [orgCategory] VARCHAR (50) NOT NULL,
    [isApproved]  BIT          NOT NULL,
    [orgDonated]  MONEY        NOT NULL,
    [pageVisits]  INT          NOT NULL,
    PRIMARY KEY CLUSTERED ([orgID] ASC)
);

