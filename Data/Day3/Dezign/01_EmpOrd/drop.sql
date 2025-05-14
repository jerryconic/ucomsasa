/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 14.6.4                     */
/* Target DBMS:           MS SQL Server 2022                              */
/* Project file:          EmpOrd.dez                                      */
/* Project name:          EmpOrd                                          */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2025-05-14 13:14                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [dbo].[SalesOrder] DROP CONSTRAINT [Employee_SalesOrder]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "dbo.SalesOrder"                                            */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [dbo].[SalesOrder] DROP CONSTRAINT [PK_SalesOrder]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'SalesOrder', 'COLUMN', N'order_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'SalesOrder', 'COLUMN', N'order_date'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'SalesOrder', 'COLUMN', N'emp_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'SalesOrder', NULL, NULL
GO


DROP TABLE [dbo].[SalesOrder]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "dbo.Employee"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [dbo].[Employee] DROP CONSTRAINT [PK_Employee]
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'emp_id'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'emp_name'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'birth_date'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'salary'
GO


EXECUTE sp_dropextendedproperty N'MS_Description', 'SCHEMA', N'dbo', 'TABLE', N'Employee', NULL, NULL
GO


DROP TABLE [dbo].[Employee]
GO

