SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
create proc [dbo].[updatest_st_crs] @crs_id int,@st_id int
as
begin 
update st_crs set
St_id= @st_id
where Crs_id=@crs_id

end
GO