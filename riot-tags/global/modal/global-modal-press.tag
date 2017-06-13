<global-modal-press>
    <div id="modal-press-kit" class="modal fade">
        <div class="krowdspace-modal col-sm-10 col-sm-offset-1">
            <div id="modal" class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button>
                    <p class="modal-heading">Press Kit</p>
                </div>
                <div class="modal-body">
                    <p>If you would like to use one of our branded logo images and have not submitted a project to Krowdspace please contact us. If you have a project submitted on Krowdspace we ask that you put the "Featured on Krowdspace" banner with a link to our website somewhere on your crowdfunding project content page. If you need help adding the image and the hyperlink please follow the instructions below.</p>
                    <p>To put our "Featured on Krowdspace" banner into your project save the image to your desktop and then import it onto your project page. Click on the image and you can then add the hyperlink "www.krowdspace.com".</p>
                    <div class="row text-center" style="margin-top: 30px;">
                                <img src="img/press/featured-krowdspace-v1.png" alt="Featured on Krowdspace" style="width: 450px;">
                                </div>
                                <div class="row text-center" style="margin-top: 25px; margin-bottom: 30px;">
                                <img src="img/press/featured-krowdspace-v2.png"  alt="Featured on Krowdspace Logo" style="width: 75px;">
                                <img src="img/press/featured-krowdspace-v3.png" alt="Featured on Krowdspace Badge" style="width: 100px; margin: 0px 50px;">
                                <img src="img/press/featured-krowdspace-v4.png" alt="Featured on Krowdspace Logo Alt" style="width: 75px;">
                                </div>
                    <p class="text-center">If you have any questions please feel free to to reach out to us directly!</p>
                    <div class="text-center">
                        <button type="button" class="text-center modal-close" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="background-modal-close" data-dismiss="modal"> </div>
    </div>
    <script>
        this.on('mount', function() 
        {
			var url = window.location.href;
			if (url.indexOf('?press-kit=1') != -1) 
            {
				$("#modal-press-kit").modal('show');
				$('#modal-press-kit').fadeIn(100);
			};
        });
    </script>
</global-modal-press>