<?php
include('connect.php');
                                      
                
              $sql="SELECT * FROM order WHERE todays_date=CURDATE()";
              $res=pg_query($sql);
              $num_rows = pg_num_rows($res);
         ?>