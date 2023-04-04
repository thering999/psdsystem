<?php

$id = $_GET['id'];
$book = new Book();
$object = $book->single_books($id);

?>
<style type="text/css">
	p{
		font-size: 16px;
		font-weight: bold;
		color: #E32639;
	}
</style>

 
  <div class="card shadow mb-4">
  <div class="card-header py-3">
    <h6 class="m-0 font-weight-bold text-primary">รายละเอียดครุภัณฑ์</h6>
  </div>
  <div class="card-body">
    <div class="table-responsive">

        <form class="form-horizontal well span4" action="controller.php?action=edit&id=<?php echo $id;?>" method="POST"> 

          <div class="col-md-12"> 
    <div class="form-row">
        <div class="col-md-12">
            <div class="form-group"><label class="small mb-1" for="AccessionNo">เลขครุภัณฑ์</label> : <p> <?php echo $object->IBSN;?></p> </div>
        </div> 
    </div>
    <div class="form-row">
    	<div class="col-md-6">
			<div class="form-group"><label class="small mb-1" for="BookTitle">ชื่อครุภัณฑ์</label>  : <p><?php echo $object->BookTitle;?> </p></div>
			<div class="form-group"><label class="small mb-1" for="BookDesc">รายละเอียด</label>  : <p><?php echo $object->BookDesc;?></p></div>
			<div class="form-group"><label class="small mb-1" for="Author">เจ้าของ</label> : <p><?php echo $object->Author;?> </p></div> 
			<div class="form-group"><label class="small mb-1" for="PublishDate">วันที่เข้าระบบ</label> : <p><?php echo $object->PublishDate;?></p></div>
			<div class="form-group"><label class="small mb-1" for="BookPublisher">ผู้ยืม</label> : <p><?php echo $object->BookPublisher;?></p></div> 
			<div class="form-group"><label class="small mb-1" for="Category">หมวดหมู่</label> : <p><?php echo  $object->Category ?></p></div>
    	</div>
    	<div class="col-md-6">
			<div class="form-group"><label class="small mb-1" for="DDecimal">หน่วยนับ</label> : <p><?php echo $object->DeweyDecimal;?></p></div>
			<div class="form-group"><label class="small mb-1" for="inputConfirmPassword">ชนิด</label> : <p><?php echo $object->BookType ?></p></div>
			<div class="form-group"><label class="small mb-1" for="BookPrice">ราคา</label> : <p><?php echo $object->BookPrice;?></p></div>
			<div class="form-group"><label class="small mb-1" for="Remarks">หมายเหตุ</label> : <p><?php echo $object->Remarks;?></p></div>
			<div class="form-group"><label class="small mb-1" for="Category">สถานะ</label> : <p><?php echo  $object->Status ?></p></div>
    	</div>

        
    </div>  








  

</div>
</div>
</div>