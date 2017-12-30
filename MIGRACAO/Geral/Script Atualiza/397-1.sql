update declaracao
   set cfop = '397', cd_operacao = 717
 where cfop in( '3.97', '397' )
   and ( cd_operacao is null or
         cd_operacao = 36 )
   
