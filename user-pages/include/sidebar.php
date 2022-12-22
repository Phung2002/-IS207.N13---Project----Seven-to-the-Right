<div class="col-md-3">
    <div class="blog-sidebar">
        <div class="block">
            <h4>Danh mục sản phẩm</h4>
            <div class="list-group">
                <?php

                foreach($list_cate as $category) {
                    echo '
								<a href="../controllers/productsController.php?item=' . $category->getId() . '	" class="list-group-item">
									<i class="fa  fa-dot-circle-o"></i>
									' . $category->getCategory_name() . '
								</a>';
                } ?>
            </div>
        </div> <!-- End of /.block -->

        <div>

            <form action="" method="get">
                Tìm kiếm sản phẩm: <input type="text" name="search" />
                <button type="submit" name="submit">Tìm kiếm</button>
            </form>
            <?php
        // Nếu người dùng submit form thì thực hiện
        if (isset($_REQUEST['ok'])) 
        {
            // Gán hàm addslashes để chống sql injection
            $search = addslashes($_GET['search']);

            // Nếu $search rỗng thì báo lỗi, tức là người dùng chưa nhập liệu mà đã nhấn submit.
            if (empty($search)) {
                echo "Yeu cau nhap du lieu vao o trong";
            } 
            else 
            {
                // Dùng câu lênh like trong sql và sứ dụng toán tử % của php để tìm kiếm dữ liệu chính xác hơn.
                $query = "select * from product where product_name like '%$search%'";

                // Thực thi câu truy vấn
                $sql = mysql_query($query);

                // Đếm số đong trả về trong sql.
                $num = mysql_num_rows($sql);

                // Nếu có kết quả thì hiển thị, ngược lại thì thông báo không tìm thấy kết quả
                if ($num > 0 && $search != "") 
                {
                    // Dùng $num để đếm số dòng trả về.
                    echo "$num ket qua tra ve voi tu khoa <b>$search</b>";

                    // Vòng lặp while & mysql_fetch_assoc dùng để lấy toàn bộ dữ liệu có trong table và trả về dữ liệu ở dạng array.
                    echo '<table border="1" cellspacing="0" cellpadding="10">';
                    while ($row = mysql_fetch_assoc($sql)) {
                        echo '<tr>';
                            echo "<td>{$row['id']}</td>";
                            echo "<td>{$row['img']}</td>";
                            echo "<td>{$row['product_name']}</td>";
                            echo "<td>{$row['product_description']}</td>";
                            echo "<td>{$row['price']}</td>";
                        echo '</tr>';
                    }
                    echo '</table>';
                } 
                else {
                    echo "Khong tim thay ket qua!";
                }
            }
        }
        ?>   
        </div>
      
    </div> <!-- End of /.col-md-3 -->
</div> <!-- End of /.row -->