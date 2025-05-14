/* ---------------------------------------------------------------------- */
/* Script generated with: DeZign for Databases 14.6.4                     */
/* Target DBMS:           MS SQL Server 2022                              */
/* Project file:          ChooseCourse.dez                                */
/* Project name:          ChooseCourse                                    */
/* Author:                                                                */
/* Script type:           Database creation script                        */
/* Created on:            2025-05-14 13:44                                */
/* ---------------------------------------------------------------------- */


/* ---------------------------------------------------------------------- */
/* Add tables                                                             */
/* ---------------------------------------------------------------------- */

GO


/* ---------------------------------------------------------------------- */
/* Add table "Student"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Student] (
    [student_id] INTEGER NOT NULL,
    [student_name] VARCHAR(20),
    [email] VARCHAR(20),
    CONSTRAINT [PK_Student] PRIMARY KEY ([student_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Subject"                                                    */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Subject] (
    [subject_id] INTEGER NOT NULL,
    [subject_name] VARCHAR(20),
    [grade] DECIMAL,
    CONSTRAINT [PK_Subject] PRIMARY KEY ([subject_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Classroom"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Classroom] (
    [room_id] INTEGER NOT NULL,
    [room_name] VARCHAR(20),
    [floor_no] TINYINT,
    CONSTRAINT [PK_Classroom] PRIMARY KEY ([room_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "Professor"                                                  */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [Professor] (
    [professor_id] INTEGER NOT NULL,
    [professor_name] VARCHAR(20),
    CONSTRAINT [PK_Professor] PRIMARY KEY ([professor_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "dbo.Course"                                                 */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [dbo].[Course] (
    [course_id] INTEGER NOT NULL,
    [course_year] SMALLINT,
    [course_semister] TINYINT,
    [subject_id] INTEGER NOT NULL,
    [room_id] INTEGER NOT NULL,
    [professor_id] INTEGER NOT NULL,
    CONSTRAINT [PK_Course] PRIMARY KEY ([course_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add table "ChooseCourse"                                               */
/* ---------------------------------------------------------------------- */

GO


CREATE TABLE [ChooseCourse] (
    [choose_id] INTEGER NOT NULL,
    [choose_datetime] DATETIME,
    [student_id] INTEGER NOT NULL,
    [course_id] INTEGER NOT NULL,
    CONSTRAINT [PK_ChooseCourse] PRIMARY KEY ([choose_id])
)
GO


/* ---------------------------------------------------------------------- */
/* Add foreign key constraints                                            */
/* ---------------------------------------------------------------------- */

GO


ALTER TABLE [dbo].[Course] ADD CONSTRAINT [Subject_Course] 
    FOREIGN KEY ([subject_id]) REFERENCES [Subject] ([subject_id])
GO


ALTER TABLE [dbo].[Course] ADD CONSTRAINT [Classroom_Course] 
    FOREIGN KEY ([room_id]) REFERENCES [Classroom] ([room_id])
GO


ALTER TABLE [dbo].[Course] ADD CONSTRAINT [Professor_Course] 
    FOREIGN KEY ([professor_id]) REFERENCES [Professor] ([professor_id])
GO


ALTER TABLE [ChooseCourse] ADD CONSTRAINT [Student_ChooseCourse] 
    FOREIGN KEY ([student_id]) REFERENCES [Student] ([student_id])
GO


ALTER TABLE [ChooseCourse] ADD CONSTRAINT [Course_ChooseCourse] 
    FOREIGN KEY ([course_id]) REFERENCES [dbo].[Course] ([course_id])
GO

