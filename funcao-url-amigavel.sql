USE [nomeBancoDados]
GO

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[func_urlamigavel](@Texto varchar(8000))
returns varchar(8000) 
AS 
BEGIN
         declare @SemAcento varchar(300) 
 
         select @SemAcento = replace(LOWER(@Texto),'á','a')  
         select @SemAcento = replace(@SemAcento,'à','a')  
         select @SemAcento = replace(@SemAcento,'ã','a')  
         select @SemAcento = replace(@SemAcento,'â','a')  
         select @SemAcento = replace(@SemAcento,'é','e')  
         select @SemAcento = replace(@SemAcento,'è','e')  
         select @SemAcento = replace(@SemAcento,'ê','e')  
         select @SemAcento = replace(@SemAcento,'í','i')  
         select @SemAcento = replace(@SemAcento,'ì','i')  
         select @SemAcento = replace(@SemAcento,'î','i')  
         select @SemAcento = replace(@SemAcento,'ó','o')  
         select @SemAcento = replace(@SemAcento,'ò','o')  
         select @SemAcento = replace(@SemAcento,'ô','o')  
         select @SemAcento = replace(@SemAcento,'õ','o')  
         select @SemAcento = replace(@SemAcento,'ú','u')  
         select @SemAcento = replace(@SemAcento,'ù','u')  
         select @SemAcento = replace(@SemAcento,'û','u')  
         select @SemAcento = replace(@SemAcento,'ü','u')  
         select @SemAcento = replace(@SemAcento,'ç','c')
         select @SemAcento = replace(@SemAcento,'º','')
         select @SemAcento = replace(@SemAcento,'$','')
         select @SemAcento = replace(@SemAcento,'&','')
         select @SemAcento = replace(@SemAcento,'*','')
         select @SemAcento = replace(@SemAcento,'(','')
         select @SemAcento = replace(@SemAcento,')','')
         select @SemAcento = replace(@SemAcento,'+','')
         select @SemAcento = replace(@SemAcento,'''','')
         select @SemAcento = replace(@SemAcento,'%','')
         select @SemAcento = replace(@SemAcento,'°','')         
         select @SemAcento = replace(@SemAcento,',','') 
         select @SemAcento = replace(@SemAcento,':','')
         select @SemAcento = replace(@SemAcento,'.','-')
         select @SemAcento = replace(@SemAcento,'/','-')
         
         select @SemAcento = replace(@SemAcento,CHAR(1),'')
         select @SemAcento = replace(@SemAcento,CHAR(2),'')
         select @SemAcento = replace(@SemAcento,CHAR(3),'')
         select @SemAcento = replace(@SemAcento,CHAR(4),'')
         select @SemAcento = replace(@SemAcento,CHAR(5),'')
         select @SemAcento = replace(@SemAcento,CHAR(6),'')
         select @SemAcento = replace(@SemAcento,CHAR(7),'')
         select @SemAcento = replace(@SemAcento,CHAR(8),'')
         select @SemAcento = replace(@SemAcento,CHAR(9),'')
         select @SemAcento = replace(@SemAcento,CHAR(10),'')
         select @SemAcento = replace(@SemAcento,CHAR(11),'')
         select @SemAcento = replace(@SemAcento,CHAR(12),'')
         select @SemAcento = replace(@SemAcento,CHAR(13),'')
         select @SemAcento = replace(@SemAcento,CHAR(14),'')
         select @SemAcento = replace(@SemAcento,CHAR(15),'')
         select @SemAcento = replace(@SemAcento,CHAR(16),'')
         select @SemAcento = replace(@SemAcento,CHAR(17),'')
         select @SemAcento = replace(@SemAcento,CHAR(18),'')
         select @SemAcento = replace(@SemAcento,CHAR(19),'')
         select @SemAcento = replace(@SemAcento,CHAR(20),'')
         select @SemAcento = replace(@SemAcento,CHAR(21),'')
         select @SemAcento = replace(@SemAcento,CHAR(22),'')
         select @SemAcento = replace(@SemAcento,CHAR(23),'')
         select @SemAcento = replace(@SemAcento,CHAR(24),'')
         select @SemAcento = replace(@SemAcento,CHAR(25),'')
         select @SemAcento = replace(@SemAcento,CHAR(26),'')
         select @SemAcento = replace(@SemAcento,CHAR(27),'')
         select @SemAcento = replace(@SemAcento,CHAR(28),'')
         select @SemAcento = replace(@SemAcento,CHAR(29),'')
         select @SemAcento = replace(@SemAcento,CHAR(30),'')         
         select @SemAcento = replace(@SemAcento,CHAR(31),'')  
         select @SemAcento = replace(@SemAcento,CHAR(127),'')  
                  
         select @SemAcento = replace(@SemAcento,' ','-')
         select @SemAcento = replace(@SemAcento,'--','')
 
         return (LOWER(@SemAcento)) 
END
GO


