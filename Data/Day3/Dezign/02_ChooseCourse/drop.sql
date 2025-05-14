/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 14.6.4                     */
/* Target DBMS:           MS SQL Server 2022                              */
/* Project file:          ChooseCourse.dez                                */
/* Project name:          ChooseCourse                                    */
/* Author:                                                                */
/* Script type:           Database drop script                            */
/* Created on:            2025-05-14 13:44                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Drop foreign key constraints                                           */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [dbo].[Course] DROP CONSTRAINT [Subject_Course]
GO


ALTER TABLE [dbo].[Course] DROP CONSTRAINT [Classroom_Course]
GO


ALTER TABLE [dbo].[Course] DROP CONSTRAINT [Professor_Course]
GO


ALTER TABLE [ChooseCourse] DROP CONSTRAINT [Student_ChooseCourse]
GO


ALTER TABLE [ChooseCourse] DROP CONSTRAINT [Course_ChooseCourse]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "ChooseCourse"                                              */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [ChooseCourse] DROP CONSTRAINT [PK_ChooseCourse]
GO


DROP TABLE [ChooseCourse]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "dbo.Course"                                                */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [dbo].[Course] DROP CONSTRAINT [PK_Course]
GO


DROP TABLE [dbo].[Course]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Professor"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Professor] DROP CONSTRAINT [PK_Professor]
GO


DROP TABLE [Professor]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Classroom"                                                 */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Classroom] DROP CONSTRAINT [PK_Classroom]
GO


DROP TABLE [Classroom]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Subject"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Subject] DROP CONSTRAINT [PK_Subject]
GO


DROP TABLE [Subject]
GO


/* ---------------------------------------------------------------------- */
/* Drop table "Student"                                                   */
/* ---------------------------------------------------------------------- */

GO


/* Drop constraints */

ALTER TABLE [Student] DROP CONSTRAINT [PK_Student]
GO


DROP TABLE [Student]
GO

