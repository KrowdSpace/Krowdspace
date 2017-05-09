<modify-content-image>
    <div class="social-container">
        <div class="social-header-dropdown">
            <p class="social-title">CAMPAIGN IMAGE</p>
            <ul class="add-dropdown text-right">
                <li class="dropdown">
                    <a href="#" id="dropdown-image" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-plus plus-dropdown" aria-hidden="true"></i></a>
                    <ul class="dropdown-menu add-dropdown-menu">
                        <li><a>ADD FEATURED LISTING</a></li>
                        <li><a href="#" class="dropdown-general drop-list">ADD SOCIAL MEDIA POST</a></li>
                        <li><a href="#modal-edit" data-toggle="modal" class="dropdown-general drop-list">UPLOAD NEW IMAGE</a></li>
                    </ul>
				</li>
            </ul>
        </div>
        <div class="backer-reward-box">
            <img class="img-responsive thumbnail-project-img" src="/img/projects/bahari-bag.jpg"/>
			<a href="#modal-edit" data-toggle="modal"><p class="package-add-cart text-center">EDIT CAMPAIGN IMAGE</p></a>
        </div>
    </div>
    <script>
        this.on('mount', function() {
            $("#dropdown-image").click(function(){
                $(".dropdown-menu").toggle(300);
            });
        });
    </script>
</modify-content-image>