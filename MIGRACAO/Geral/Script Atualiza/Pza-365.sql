update PZA
   set cond_pagto = 'D/A 365 DAYS AFTER B/L DATE'
 where cond_pagto like '%365%'
