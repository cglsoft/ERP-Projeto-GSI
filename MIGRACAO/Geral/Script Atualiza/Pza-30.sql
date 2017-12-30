update pza
   set cond_pagto = 'D/A 30 DAYS AFTER B/L DATE'
 where cond_pagto like '%30%'
   and cond_pagto not like '%NET%'
