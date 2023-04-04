<?php

$id = $_GET['id'];
$book = new Book();
$object = $book->single_books($id);

?>

<div class="card shadow mb-4">
      <div class="card-header py-3"> 
        <div class="row">
           <div class="col-md-8"><h6 class="m-0 font-weight-bold text-primary">รายละเอียดครุภัณฑ์ที่ถูกยืมไป</h6></div>
             <div class="col-md-4">

               <form action="index.php?view=add&id=<?php echo $id;?>" method="POST">
               <div class="row"> 
                 <div class="col-md-3">
                   <label>ค้นหาชื่อครุภัณฑ์</label>
                 </div>
                 <div class="col-md-6">
                   <select class="form-control select2" id="SearchBorrowerId" name="SearchBorrowerId">
                     <option></option>
                     <?php
                      $borrower = new Borrower();
                      $cur = $borrower->listOfborrower();
                      foreach ($cur as $borrower) {
                        echo '<option value='.$borrower->BorrowerId.'>'.$borrower->Firstname.' '.$borrower->Lastname.'</option>';
                      }
                     ?>
                   </select>
                 </div>
                 <div class="col-md-3">
                   <button type="submit" class="btn btn-primary btn-sm " name="btnfindborrower"><i class="fa fa-search"></i>ค้นหา</button>
                 </div>  
               </div>
             </form>
            </div>
            
               
        </div>
      </div>
    <div class="card-body"> 

        <style type="text/css">
          .small {
            /*font-weight: bold; */

          }
          p{
            font-weight: bolder; 
          }
          .book-details{
            padding: 5px;
            font-size: 15px;
            font-weight: bold;
            border-bottom: 1px solid #ddd;
          }
        </style>
        <form class="form-horizontal well span4" action="controller.php?action=add" method="POST" autocomplete="off">
<!-- SELECT `BookID`, `IBSN`, `BookTitle`, `BookDesc`, `Author`, `PublishDate`, `BookPublisher`, `Category`, `BookPrice`, `BookQuantity`, `Status`, `BookType`, `DeweyDecimal`, `OverAllQty`, `Donate`, `Remarks` FROM `tblbooks` WHERE 1 -->
          <div class="row">
            <div class="col-md-6">  
                  <div class="book-details">รายละเอียดครุภัณฑ์</div> 
                <div class="form-row">
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="IBSN">เลขครุภัณฑ์</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  $object->IBSN ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="BookTitle">ชื่อครุภัณฑ์</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  $object->BookTitle ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="BookDesc">รายละเอียด</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  $object->BookDesc ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="Category">หมวดหมู่</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  $object->Category ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="DeweyDecimal">หน่วยนับ</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  $object->DeweyDecimal ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="BookType">ชนิด</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  $object->BookType ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="BookPrice">ราคา</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  $object->BookPrice ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="Author">เจ้าของ</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  $object->Author ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="BookPublisher">ผู้ยืม</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  $object->BookPublisher ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="PublishDate">วันที่เข้าระบบ</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  $object->PublishDate ?></p> 
                    </div>
                </div> 
            </div> 
            <!-- borrowers side -->
            <div class="col-md-6">
              <?php
              // SELECT `IDNO`, `BorrowerId`, `Firstname`, `Lastname`, `MiddleName`, `Address`, `Sex`, `ContactNo`, `CourseYear`, `BorrowerPhoto`, `BorrowerType`, `Stats`, `BUsername`, `BPassword` FROM `tblborrower` WHERE 1 
              if (isset($_POST['btnfindborrower'])) {
                  @$borrower = new Borrower();
                  @$res = $borrower->single_borrower($_POST['SearchBorrowerId']) ;
              }
              ?>
              <div class="book-details">รายละเอียดการยืม</div> 
                <div class="form-row">
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="BorrowerId">ID ผู้ยืมครุภัณฑ์</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  isset($res->BorrowerId) ? $res->BorrowerId: 'None'; ?></p> 
                          <input type="hidden" name="BorrowerId" value="<?php echo isset($res->BorrowerId) ? $res->BorrowerId: 'None'; ?>">
                          <input type="hidden" name="IBSN" value="<?php echo $id;?>">
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="Firstname">ชื่อ</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  isset($res->Firstname) ? $res->Firstname: 'None'; ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="MiddleName">ชื่อกลาง</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  isset($res->MiddleName) ? $res->MiddleName : 'None'; ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="Lastname">นามสกุล</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  isset($res->Lastname) ? $res->Lastname: 'None'; ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="Address">ที่อยู่</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  isset($res->Address) ? $res->Address: 'None'; ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="Sex">เพศ</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  isset($res->Sex) ? $res->Sex : 'None'; ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="ContactNo">เบอร์โทรติดต่อ</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  isset($res->ContactNo) ? $res->ContactNo : 'None'; ?></p> 
                    </div>
                    <div class="col-md-3"> 
                          <label class="small mb-1" for="CourseYear">ฝ่าย/หน่วยงาน</label>  
                     </div> 
                    <div class="col-md-9"> 
                          <p><?php echo  isset($res->CourseYear) ?$res->CourseYear : 'None'; ?></p> 
                    </div> 
                </div> 
            </div>
          </div>     

          <hr/>
                        <?php    if (isset($res->BorrowerId)) { ?>
                           <button class="btn btn-primary" name="save" type="submit" ><span class="fa fa-save fw-fa"></span> บันทึก</button> 
                         <?php } ?>
                         <a href="index.php?view=add&id=<?php echo $id;?>" class="btn btn-info"><i class="fa fa-refresh"></i>รีเฟรช</a>
                        <a href="index.php?view=filter" class="btn btn-success"><i class="fa fa-arrow-left"></i> ย้อนกลับ</a>
                     
 
          </form> 
 
    </div>
</div>