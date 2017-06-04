<global-modal-press>
    <div id="modal-press-kit" class="modal fade">
        <div class="krowdspace-modal col-sm-10 col-sm-offset-1">
            <div id="modal" class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button>
                    <p class="modal-heading">Press Kit</p>
                </div>
                <div class="modal-body">
                    <p>If you would like to use one of our branded logo images and have not submitted a project to Krowdspace please contact us. If you have a project submitted on Krowdspace we ask that you put the "Featured on Krowdspace" banner with a link to our website somewhere on your crowdfunding project content page. If you need help to add the image and a hyperlink please follow the instructions below.</p>
                    <p>To put our "Featured on Krowdspace" banner into your project save the image to your desktop and then import it onto your project page. Click on the image and you can then add the hyperlink "www.krowdspace.com". You can also copy and paste the HTML code below the images into your project.</p>
                    <img class="img-responsive" style="margin: 30px auto;" src="img/press/krowdspace-feat-grey.png">
                    <img class="img-responsive" style="margin: 30px auto;" src="img/press/krowdspace-feat-light-grey.png">
                    <p>
                        For an easy way to add our "Featured on Krowdspace" banner please copy and paste the below HTML into your project page. Each line is referenced to an individual picture. You do not need to add both lines just one of the HTML line. If you would like a specific color combination please <a href="mailto:Mason@Krowdspace.com">contact us</a>.
                    </p>
                    <div class="text-center">
                        <p>&#060;a href="www.krowdspace.com"&#062;&#060;img src="www.krowdspace.com/img/press/krowdspace-feat-grey.png"&#062;&#060;/a&#062;</p>
                        <p>&#060;a href="www.krowdspace.com"&#062;&#060;img src="www.krowdspace.com/img/press/krowdspace-feat-light-grey.png"&#062;&#060;/a&#062;</p>
                    </div>
                    <div class="text-center">
                        <button type="button" class="text-center modal-close" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="background-modal-close" data-dismiss="modal"> </div>
    </div>
    <script>
        this.on('mount', function() {
			var url = window.location.href;
			if (url.indexOf('?press-kit=1') != -1) {
				$("#modal-press-kit").modal('show');
				$('#modal-press-kit').fadeIn(100);
			};
        });
    </script>
</global-modal-press>