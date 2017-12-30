update nx
   set cond_pagto = 'D/A 150 DAYS AFTER B/L DATE'
 where cond_pagto like '%150%'
    or cond_pagto like '%130%'   
