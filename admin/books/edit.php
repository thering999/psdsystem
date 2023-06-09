<?php

$id = $_GET['id'];
$book = new Book();
$object = $book->single_books($id);

?>


 
  <div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">แก้ไขครุภัณฑ์</h6>
  </div>
  <div class="card-body">
    <div class="table-responsive">

        <form class="form-horizontal well span4" action="controller.php?action=edit&id=<?php echo $id;?>" method="POST"> 

          <div class="col-md-12"> 
    <div class="form-row">
        <div class="col-md-6">
            <div class="form-group"><label class="small mb-1" for="AccessionNo">เลขครุภัณฑ์</label><input class="form-control " id="IBSN" name="IBSN" type="text" placeholder="Enter IBSN" readonly="off" value="<?php echo $object->IBSN;?>" /></div>
        </div> 
    </div>
    <div class="form-row">
        <div class="col-md-6">
            <div class="form-group"><label class="small mb-1" for="BookTitle">ชื่อครุภัณฑ์</label><input class="form-control " id="BookTitle" name="BookTitle" type="text" placeholder="Enter Title" value="<?php echo $object->BookTitle;?>"/></div>
        </div>
        <div class="col-md-6">
            <div class="form-group"><label class="small mb-1" for="BookDesc">รายละเอียด</label><input class="form-control " id="BookDesc" name="BookDesc" type="text" placeholder="Enter Description" value="<?php echo $object->BookDesc;?>"/></div>
        </div>
    </div>  
    <div class="form-row">
        <div class="col-md-6">
            <div class="form-group"><label class="small mb-1" for="Author">เจ้าของ</label><input class="form-control " id="Author" name="Author" type="text" placeholder="Enter Author" value="<?php echo $object->Author;?>"/></div>
        </div>
        <div class="col-md-6">
            <div class="form-group"><label class="small mb-1" for="PublishDate">วันที่เข้าระบบ</label><input class="form-control " id="datepicker" name="PublishDate" type="text" placeholder="Select Date" value="<?php echo $object->PublishDate;?>" readonly /></div>
        </div>
    </div>  
    <div class="form-row">
        <div class="col-md-6">
            <div class="form-group"><label class="small mb-1" for="BookPublisher">ผู้ยืม</label><input class="form-control " id="BookPublisher" name="BookPublisher" type="text" placeholder="Enter Publisher" value="<?php echo $object->BookPublisher;?>"/></div>
        </div>
        <div class="col-md-6">
            <div class="form-group"><label class="small mb-1" for="Category">หมวดหมู่</label>
                 <select class="form-control " name="Category" id="Category">
                      <?php
                      $categ = new Category();
                      $cur = $categ->listofcategory(); 
                      foreach ($cur as $category) {
                        if ($category->Category == $object->Category) {
                          # code...
                          echo '<option SELECTED>'.$category->Category.' </option>';
                        }else{
                          echo '<option>'.$category->Category.' </option>';
                        }
                      }

                   ?>
              
            </select> 
          </div>
        </div>
    </div> 
    <div class="form-row">
        <div class="col-md-6">
            <div class="form-group"><label class="small mb-1" for="DDecimal">หน่วยนับ</label><input class="form-control " id="DDecimal" name="DDecimal" type="text" placeholder="Enter Dewey Decimal" readonly="true" value="<?php echo $object->DDecimal;?>"/></div>
        </div>
        <div class="col-md-6">
            <div class="form-group"><label class="small mb-1" for="inputConfirmPassword">ชนิด</label> 
             <select class="form-control input-sm" name="BookType" id="BookType">
              <option <?php echo ($object->BookType=='Fiction') ? 'SELECTED': '' ?>>Fiction</option>
              <option <?php echo ($object->BookType=='Non-Fiction') ? 'SELECTED': '' ?>>Non-Fiction</option>  
              <option <?php echo ($object->BookType=='Unknown') ? 'SELECTED': '' ?>>Unknown</option>  
          </select> </div>
        </div>
    </div>   
    <div class="form-row">
        <div class="col-md-6">
            <div class="form-group"><label class="small mb-1" for="BookPrice">ราคา</label><input class="form-control " id="BookPrice" name="BookPrice" type="text" placeholder="Enter Price" value="<?php echo $object->BookPrice;?>"/></div>
        </div>
        <div class="col-md-6">
            <div class="form-group"><label class="small mb-1" for="Remarks">หมายเหตุ</label><input class="form-control " id="Remarks" name="Remarks" type="text" aria-describedby="emailHelp" placeholder="Enter Remarks" value="<?php echo $object->Remarks;?>" /></div>
        </div>   
    </div>   
</div>



       <div class="form-group">
              <div class="col-md-8">
                <label class="col-md-4 control-label" for=
                "idno"></label>

                <div class="col-md-8">
                  <button class="btn btn-primary" name="savecourse" type="submit" ><span class="fa fa-save"></span> Save</button>
                  
                </div>
              </div>
            </div>
</form> 

</div>
</div>
</div>