 <h1 class="mt-4">Dashboard ระบบยืม-คืนครุภัณฑ์ สสจ.มุกดาหาร</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">Dashboard ระบบยืม-คืนครุภัณฑ์ สสจ.มุกดาหาร</li>
                        </ol>
                      <div class="row">
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-primary text-white mb-4">
                                    <div class="card-body">รายการครุภัณฑ์ที่มี</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="books/index.php">ดูรายละเอียด</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-warning text-white mb-4">
                                    <div class="card-body">ชื่อผู้ยืมครุภัณฑ์</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="borrower/index.php">ดูรายละเอียด</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-success text-white mb-4">
                                    <div class="card-body">รายการครุภัณฑ์ที่ถูกยืมไป</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="borrowed/index.php">ดูรายละเอียด</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3 col-md-6">
                                <div class="card bg-danger text-white mb-4">
                                    <div class="card-body">รายการครุภัณฑ์ที่คืน</div>
                                    <div class="card-footer d-flex align-items-center justify-content-between">
                                        <a class="small text-white stretched-link" href="returned/index.php">ดูรายละเอียด</a>
                                        <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header"><i class="fas fa-table mr-1"></i>รายการครุภัณฑ์ที่มี</div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-bordered" id="dataTable2" width="100%" cellspacing="0">
                                        <thead>
                                            <tr>
                                                <th>ชื่อครุภัณฑ์</th>
                                                <th>รายละเอียด</th>
                                                <th>หมวดหมู่</th>
                                                <th>จำนวน</th> 
                                            </tr>
                                        </thead> 
                                        <tbody>

                                            <?php 
                                                     $mydb->setQuery("SELECT *, sum(BookQuantity) as qty FROM `tblbooks` WHERE Status='Available' GROUP BY BookTitle");   
                                                    $cur = $mydb->loadResultlist();
                                                    foreach ($cur as $result) {
                                                        echo '<tr>';  
                                                        echo '<td >'. $result->BookTitle.'</td>';
                                                        echo '<td>'.  $result->BookDesc.'</td>'; 
                                                        echo '<td>'. $result->Category.'</td>';  
                                                        echo '<td>'. $result->qty.'</td>';


                                                        echo '</tr>';

                                                  
                                                }  
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xl-12">
                                <div class="card mb-4" style="" >
                                    <div class="card-header"><i class="fas fa-chart-area mr-1"></i>ประวัติการยืมครุภัณฑ์</div>
                                    <div class="card-body">
                                        <div class="table-responsive"> 
 
                                                <table id="dataTable" class="table table-bordered table-hover" cellspacing="0"  >
                                                
                                                  <thead>
                                                    <tr> 
                                                        <th>เลขครุภัณฑ์</th>
                                                        <th>ชื่อครุภัณฑ์</th> 
                                                        <th>ผู้ยืม</th> 
                                                        <th>วันที่ยืม</th>
                                                        <th>กำหนดวันที่คืน</th> 
                                                        <th>วันที่คืน</th>
                                                        <th>หมายเหตุ</th> 
                                                    </tr>   
                                                  </thead>
                                                  <tbody>
                                                    <?php 
                                                    $mydb->setQuery("SELECT * FROM `tblbooks` b, `tbltransaction` t ,`tblborrower` s
                                                                    WHERE b.IBSN=t.IBSN AND t.BorrowerId=s.BorrowerId"); 
                                                            $cur = $mydb->loadResultlist();
                                                            foreach ($cur as $result) {
                                                                echo '<tr>';  
                                                                echo '<td ><a href="'.web_root.'admin/borrowed/index.php?view=view&id='.$result->TransactionID.'">' . $result->IBSN.'</a></td>';
                                                                echo '<td >'. $result->BookTitle.'</td>'; 
                                                                echo '<td>'. $result->Firstname.' '. $result->MiddleName.' '. $result->Lastname.'</td>';
                                                                echo '<td>'. $result->DateBorrowed.'</td>';
                                                                echo '<td>'. $result->DueDate.'</td>'; 
                                                                echo '<td>'. $result->DateReturned.'</td>';
                                                                echo '<td>'. $result->Remarks.'</td>';  

                                                                 
                                                                echo '</tr>';
                                                            } 
                                                    ?>
                                                  </tbody>
                                                
                                                </table>

                                         
                             
                                            </div>

                                    </div>
                                </div>
                            </div>
                           

                                    </div> 
                       