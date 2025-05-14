/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 14.6.4                     */
/* Target DBMS:           MS SQL Server 2022                              */
/* Project file:          EmpOrd.dez                                      */
/* Project name:          EmpOrd                                          */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2025-05-14 13:14                                */
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




EXECUTE sp_addextendedproperty N'MS_Description', N'員工基本資料', 'SCHEMA', N'dbo', 'TABLE', N'Employee', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'員工編號', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'emp_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'員工姓名', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'emp_name'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'出生年月日', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'birth_date'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'薪資', 'SCHEMA', N'dbo', 'TABLE', N'Employee', 'COLUMN', N'salary'
GO


/* ---------------------------------------------------------------------- */
/* Add table "dbo.SalesOrder"                                             */
/* ---------------------------------------------------------------------- */

GO




CREATE TABLE [dbo].[SalesOrder] (
    [order_id] INTEGER NOT NULL,
    [order_date] DATE,
    [emp_id] INTEGER NOT NULL,
    CONSTRAINT [PK_SalesOrder] PRIMARY KEY ([order_id])
)
GO




EXECUTE sp_addextendedproperty N'MS_Description', N'訂單基本資料', 'SCHEMA', N'dbo', 'TABLE', N'SalesOrder', NULL, NULL
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'訂單編號', 'SCHEMA', N'dbo', 'TABLE', N'SalesOrder', 'COLUMN', N'order_id'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'訂單日期', 'SCHEMA', N'dbo', 'TABLE', N'SalesOrder', 'COLUMN', N'order_date'
GO


EXECUTE sp_addextendedproperty N'MS_Description', N'員工編號', 'SCHEMA', N'dbo', 'TABLE', N'SalesOrder', 'COLUMN', N'emp_id'
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [dbo].[SalesOrder] ADD CONSTRAINT [Employee_SalesOrder] 
    FOREIGN KEY ([emp_id]) REFERENCES [dbo].[Employee] ([emp_id])
GO

