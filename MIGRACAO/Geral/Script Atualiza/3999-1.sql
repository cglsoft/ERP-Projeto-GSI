update declaracao
   set cfop = '3999', cd_operacao = 36
 where cfop in( '3.99', '399', '3999' )
   and ( cd_operacao in ( 35, 36, 1097 )
         or cd_operacao is null )
