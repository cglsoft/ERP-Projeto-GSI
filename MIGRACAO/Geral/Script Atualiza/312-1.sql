update declaracao
   set cfop = '312', cd_operacao = 35
 where cfop in( '3.12', '312' )
   and ( cd_operacao is null
         or cd_operacao in ( 35, 36 ) )
