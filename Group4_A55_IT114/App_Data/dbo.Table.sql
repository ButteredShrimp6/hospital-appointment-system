CREATE TABLE [dbo].[DoctorTBL] ([doctorID]NVARCHAR (10) NOT NULL,[password]NVARCHAR (20) NOT NULL,[doctorName]     NVARCHAR (50) NOT NULL,[specialization] NVARCHAR (20) NOT NULL,[affiliation]    NVARCHAR (30) NOT NULL,[contactNumber]  NVARCHAR (11)           NOT NULL,[roomNumber]     NVARCHAR (10) NOT NULL,[roomSchedule]   NVARCHAR (25) NOT NULL,PRIMARY KEY CLUSTERED ([doctorID] ASC));

INSERT INTO DoctorTBL VALUES ('DOC123', 'password1', 'Callie Torres','Dermatology','Sta. Rosa Hospital','09876543210','R201','July/2/2022');
select * from DoctorTBL;
drop table DoctorTBL;