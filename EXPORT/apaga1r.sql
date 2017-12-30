select p.vendedorid,
       v.nomefantasia,
       p.responsavelid,       
       r.nomefantasia
  from pp_vendedorsubordinado p, ef_entidade v, ef_entidade r
 where p.vendedorid = v.entidadeid
   and p.responsavelid = r.entidadeid
ORDER BY P.RESPONSAVELID   
