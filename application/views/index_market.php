<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
    <head>
        <!--
        
        -->
        <meta charset="UTF-8">
        <title>السوق</title>
        <meta name="description" content="uAdmin is a Professional, Responsive and Flat Admin Template created by pixelcave and published on Themeforest">
        <meta name="author" content="pixelcave">
        <meta name="robots" content="index, follow">
        <meta name="viewport" content="width=device-width,initial-scale=1">
        <link rel="shortcut icon" href="img/favicon.ico">
        <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
        <link rel="apple-touch-icon" sizes="57x57" href="img/apple-touch-icon-57x57-precomposed.png">
        <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
        <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
        <link rel="apple-touch-icon-precomposed" href="img/apple-touch-icon-precomposed.png">

        <link rel="stylesheet" href="<?php echo base_url(); ?>css/css-family=Roboto-400,400italic,700,700italic.css" >       

        <link rel="stylesheet" href="<?php echo base_url(); ?>css/bootstrap.css" tppabs="http://pixelcave.com/demo/uadmin/css/bootstrap.css">
        <link rel="stylesheet" href="<?php echo base_url(); ?>css/plugins-1.2.css" tppabs="http://pixelcave.com/demo/uadmin/css/plugins-1.2.css">
        <link rel="stylesheet" href="<?php echo base_url(); ?>css/main-1.2.css" tppabs="http://pixelcave.com/demo/uadmin/css/main-1.2.css">


        <script src="<?php echo base_url(); ?>js/modernizr-2.6.2-respond-1.1.0.min.js" ></script>
        <style type="text/css">
            body{font-family:myfont;text-align:right}
            .thumbnail{height:350px;}
            .thumbnail a{color:#036}

        </style>
    </head>
    <body>
        <div id="page-container">
            <?php include 'tempelet/head_page.php'; ?>
            <?php include 'tempelet/main_menu.php'; ?>
            <div id="page-content">
                <ul id="nav-info"  class="clearfix" style="text-align:right">


                    <li class="active" style="text-align:right;float:right">
                        <a href="<?php echo base_url() ?>site/market">الخدمات</a> <i class="icon-shopping-cart"></i> </li>

                </ul>
                <?php include 'header2.php'; ?>
                <!---------------------------- start of content---------------------------------------->


                <ul class="thumbnails" data-toggle="gallery-options">
                    <?php
                    if ($this->uri->segment(3) != '' && $this->uri->segment(4) != '') {
                        $c_id = $this->uri->segment(3);
                        $sc_id = $this->uri->segment(4);
                        $sql = 'SELECT id,c_id, name, price_point, left( detail, 100 )  AS detail, photo_name, c_id, sc_id FROM service where sc_id=' . $sc_id;
                        $query = $this->db->query($sql);
                    } else if ($this->uri->segment(3) != '') {
                        $c_id = (int) $this->uri->segment(3);
                        $sql = 'SELECT id,c_id, name, price_point, left( detail, 100 )  AS detail, photo_name, c_id, sc_id FROM service where c_id=' . $c_id;
                        $query = $this->db->query($sql);
                    } else {
                        $sql = 'SELECT id,c_id, name, price_point, left( detail, 100 )  AS detail, photo_name, c_id, sc_id FROM service';
                        $query = $this->db->query($sql);
                    }
                    if (isset($query)) {
                        if ($query->num_rows() > 0) {
                            $rows = $query->result();
                            foreach ($rows as $row) {
                                ?>
                                <li class="span4" style="width: 200px; margin: 20px; padding: auto;">
                                    <div class="thumbnail" style="height: 220px;">
                                        <a href="site/market_deatils/<?php echo $row->id ?>/<?php echo $row->c_id; ?>">  
                                            <img src="<?php echo base_url(); ?>imagesService/thumb/<?php echo $row->photo_name; ?>" height="100" >
                                        </a>
                                        <h4 style="color:#036"><?php echo $row->name ?></h4>
                                            <!--<p style="color:#036">تفاصيل للخدمه تفاصيل للخدمه تفاصيل للخدمه تفاصيل للخدم </p>-->
                                        <button type="button" class="btn btn-warning">طلب الخدمة</button>

                                    </div>
                                </li>

                                <?php
                            }
                        } else {
                            ?>
                            <h3 style="float:right;color:#fff;width:800px;text-align:center">لا توجد نتائج بحث يرجى أعاده المحاولة</h3> 
                            <?php
                        }
                    }
                    ?>

                </ul>
            </div>
        </div>


        <footer>
            <span id="year-copy"></span> &copy; <strong>uAdmin 1.2</strong> - Crafted with <i class="icon-heart"></i> by <strong><a href="javascript:if(confirm(%27http://themeforest.net/user/pixelcave/portfolio?ref=pixelcave  \n\nThis file was not retrieved by Teleport Pro, because it is addressed on a domain or path outside the boundaries set for its Starting Address.  \n\nDo you want to open it from the server?%27))window.location=%27http://themeforest.net/user/pixelcave/portfolio?ref=pixelcave%27" tppabs="http://themeforest.net/user/pixelcave/portfolio?ref=pixelcave" target="_blank">pixelcave</a></strong>
        </footer>
    </div>
</div>
<a href="#" id="to-top"><i class="icon-chevron-up"></i></a>
<div id="modal-user-settings" class="modal hide">
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4>Profile Settings</h4>
    </div>
    <div class="modal-body">
        <ul id="example-user-tabs" class="nav nav-tabs">
            <li class="active"><a href="#example-user-tabs-account"><i class="icon-cogs"></i> Account</a></li>
            <li><a href="#example-user-tabs-profile"><i class="icon-user"></i> Profile</a></li>
        </ul>
        <div class="tab-content">
            <div class="tab-pane active" id="example-user-tabs-account">
                <div class="alert alert-success">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Success!</strong> Password changed!
                </div>
                <form class="form-horizontal">
                    <div class="control-group">
                        <label class="control-label" for="example-user-username">Username</label>
                        <div class="controls">
                            <input type="text" id="example-user-username" class="disabled" value="administrator" disabled="">
                            <span class="help-block">You can't change your username!</span>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="example-user-pass">Password</label>
                        <div class="controls">
                            <input type="password" id="example-user-pass">
                            <span class="help-block">if you want to change your password enter your current for confirmation!</span>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="example-user-newpass">New Password</label>
                        <div class="controls">
                            <input type="password" id="example-user-newpass">
                        </div>
                    </div>
                </form>
            </div>
            <div class="tab-pane" id="example-user-tabs-profile">
                <h5 class="page-header-sub hidden-phone">Image</h5>
                <div class="form-horizontal hidden-phone">
                    <div class="control-group">
                        <img src="<?php echo base_url(); ?>images/image_dark_120x120.png" tppabs="http://pixelcave.com/demo/uadmin/img/placeholders/image_dark_120x120.png" alt="image">
                    </div>
                    <div class="control-group">
                        <form action="http://pixelcave.com/demo/uadmin/index.php" class="dropzone">
                            <div class="fallback">
                                <input name="file" type="file">
                            </div>
                        </form>
                    </div>
                </div>
                <form class="form-horizontal">
                    <h5 class="page-header-sub">Details</h5>
                    <div class="control-group">
                        <label class="control-label" for="example-user-firstname">Firstname</label>
                        <div class="controls">
                            <input type="text" id="example-user-firstname" value="John">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="example-user-lastname">Lastname</label>
                        <div class="controls">
                            <input type="text" id="example-user-lastname" value="Doe">
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="example-user-gender">Gender</label>
                        <div class="controls">
                            <select id="example-user-gender">
                                <option>Male</option>
                                <option>Female</option>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="example-user-birthdate">Birthdate</label>
                        <div class="controls">
                            <div class="input-append">
                                <input type="text" id="example-user-birthdate" class="input-small input-datepicker">
                                <span class="add-on"><i class="icon-calendar"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="example-user-skills">Skills</label>
                        <div class="controls">
                            <select id="example-user-skills" multiple="multiple" class="select-chosen">
                                <option selected>html</option>
                                <option selected>css</option>
                                <option>javascript</option>
                                <option>php</option>
                                <option>mysql</option>
                            </select>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="example-user-bio">Bio</label>
                        <div class="controls">
                            <textarea id="example-user-bio" class="textarea-elastic" rows="3">Bio Information..</textarea>
                        </div>
                    </div>
                    <h5 class="page-header-sub">Social</h5>
                    <div class="control-group">
                        <label class="control-label" for="example-user-fb">Facebook</label>
                        <div class="controls">
                            <div class="input-append">
                                <input type="text" id="example-user-fb">
                                <span class="add-on"><i class="icon-facebook"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="example-user-twitter">Twitter</label>
                        <div class="controls">
                            <div class="input-append">
                                <input type="text" id="example-user-twitter">
                                <span class="add-on"><i class="icon-twitter"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="example-user-pinterest">Pinterest</label>
                        <div class="controls">
                            <div class="input-append">
                                <input type="text" id="example-user-pinterest">
                                <span class="add-on"><i class="icon-pinterest"></i></span>
                            </div>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="example-user-github">Github</label>
                        <div class="controls">
                            <div class="input-append">
                                <input type="text" id="example-user-github">
                                <span class="add-on"><i class="icon-github"></i></span>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button class="btn btn-danger" data-dismiss="modal"><i class="icon-remove"></i> Close</button>
        <button class="btn btn-success"><i class="icon-spinner icon-spin"></i> Save changes</button>
    </div>
</div>
<script src="<?php echo base_url(); ?>js/jquery.min.js" tppabs="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script>!window.jQuery && document.write(unescape('%3Cscript src="<?php echo base_url(); ?>js/jquery-1.8.3.min.js"/*tpa=http://pixelcave.com/demo/uadmin/js/vendor/jquery-1.8.3.min.js*/%3E%3C/script%3E'));</script>
<script src="<?php echo base_url(); ?>js/bootstrap.min.js" tppabs="http://pixelcave.com/demo/uadmin/js/vendor/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>js/js-sensor=true.js" tppabs="http://maps.google.com/maps/api/js?sensor=true"></script>
<script src="<?php echo base_url(); ?>js/plugins-1.2.js" tppabs="http://pixelcave.com/demo/uadmin/js/plugins-1.2.js"></script>
<script src="<?php echo base_url(); ?>js/main-1.2.js" tppabs="http://pixelcave.com/demo/uadmin/js/main-1.2.js"></script><script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-16158021-6']);
    _gaq.push(['_setDomainName', 'http://pixelcave.com/demo/uadmin/pixelcave.com']);
    _gaq.push(['_trackPageview']);

    (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www/') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
</script>
</body>
</html>