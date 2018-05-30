<html>
<head>
    <meta charset="utf-8">
    <title>gio hang</title>
</head>
<body>
<section id="cart">
    <div id="heading">
        <h2 style="text-align: center;">GIỎ HÀNG CỦA BẠN </h2>
    </div>
    <div id="text">
        <?php $cart_check = $this->cart->contents();
        if(empty($cart_check)) {
            echo 'Giỏ hàng của bạn chưa có sản phẩm nào !';
        } ?>
    </div>
<!--    <table id="table" border="0" cellpadding="10px" cellspacing="1px">-->
<!--        --><?php
//        if ($cart = $this->cart->contents()): ?>
<!--            <tr id= "main_heading">-->
<!--                <td>Số thứ tự</td>-->
<!--                <td>Tên sản phẩm</td>-->
<!--                <td>Giá</td>-->
<!--                <td>Số lượng</td>-->
<!--                <td>Thành tiền</td>-->
<!--            </tr>-->
<!--            --><?php
//            echo form_open('shopping/update_cart');
//            $grand_total = 0;
//            $i = 1;
//            foreach ($cart as $item):?>
<!--                <tr>-->
<!--                <td>--><?php //echo $i++; ?><!--</td>-->
<!--                <td>--><?php //echo $item['tensp']; ?><!--</td>-->
<!--                <td>--><?php //echo number_format($item['gia']); ?><!-- vnđ </td>-->
<!--                <td>--><?php //echo form_input('cart[' . $item['id'] . '][qty]', $item['qty'], 'maxlength="3" size="1" style="text-align: right"'); ?><!--</td>-->
<!--                --><?php //$grand_total = $grand_total + $item['subtotal']; ?>
<!--                <td>--><?php //echo number_format($item['subtotal']) ?><!-- vnđ </td>-->
<!--            --><?php //endforeach; ?>
<!--            </tr>-->
<!--            <tr>-->
<!--                <td><b>Tổng tiền: --><?php //echo number_format($grand_total); ?><!-- vnđ</b></td>-->
<!--            </tr>-->
<!--        --><?php //endif; ?>
<!--    </table>-->






    <form action="<?php echo base_url('Shopping/add')?>" method="post">
        <?php
        if ($carts = $this->cart->contents()): ?>
        <table style="margin-left: -13px" id="cart_ccontent">
            <tr>
                <td>Số thứ tự</td>
                <td>Tên sản phẩm</td>
                <td>Giá</td>
                <td>Số lượng</td>-->
              <td>Thành tiền</td>
            </tr>
            <tbody>
            <?php $carts = $this->cart->contents(); $grand_total = 0;$i = 1;?>
            <?php foreach ($carts as $rows):?>
            <tr>
                <td><?php echo $i++; ?></td>
                <td><?php echo $rows['tensp'] ?></td>
                <td><?php echo number_format($rows['gia']); ?> vnđ </td>
                <td><?php
                 //  echo form_input('cart[' . $row['id'] . '][qty]', $row['qty'], 'maxlength="3" size="1" style="text-align: right"');
                   echo $rows['qty'];
                   ?></td>
                <?php// $grand_total = $grand_total + $row['amount']; ?>
                <td><?php echo number_format($rows['amount']) ?>vnđ </td>
                </tr>
            <?php endforeach; ?>
            </tbody>
            <?php endif; ?>
        </table>
    </form>










</section>

</body>
</html>
