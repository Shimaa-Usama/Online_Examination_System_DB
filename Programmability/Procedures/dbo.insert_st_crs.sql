SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[insert_st_crs] @crs_id int,@st_id int
as
begin 
insert into st_crs values(@crs_id,@st_id)

end
GO