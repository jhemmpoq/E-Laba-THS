<?php
include('connect.php');
                                      
                
              $sql="SELECT * FROM orders WHERE todays_date = CURRENT_DATE";
              $res=pg_query($sql);
              $num_rows = pg_num_rows($res);
         ?>