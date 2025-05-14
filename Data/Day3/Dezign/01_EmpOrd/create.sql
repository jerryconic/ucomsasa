/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 14.6.4                     */
/* Target DBMS:           MS SQL Server 2022                              */
/* Project file:          New project                                     */
/* Project name:          New project                                     */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2025-05-14 11:54                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "dbo.Employee"                                               */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [dbo].[Employee] (
    [emp_id] INTEGER NOT NULL,
    [emp_name] VARCHAR(40),
    [birth_date] DATE,
    [salary] INTEGER,
    CONSTRAINT [PK_Employee] PRIMARY KEY ([emp_id])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'���u�򥻸��', 'SCHEMA', N'dbo', 'TABLE', N'Employee', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'���u�s��', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'emp_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'���u�m�W', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'emp_name'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'�X�ͦ~���', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'birth_date'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'�~��', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'salary'
GO

