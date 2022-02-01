SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[updatecrs_st_crs] @crs_id int,@st_id int
as
begin 
update st_crs set
Crs_id= @crs_id
where St_id=@st_id

end
GO