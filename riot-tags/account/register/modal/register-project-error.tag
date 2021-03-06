<register-project-error>
    <div id="modal-project-error" class="modal container fade">
		<div class="krowdspace-modal col-sm-6 col-sm-offset-3">
			<div id="modal" class="modal-content">
				<div class="modal-header">
					<p class="modal-heading">Project Submission Error</p>
				</div>
				<div class="modal-body">
					<p>It looks like something went wrong! Please make sure that you have one of our <a onclick={ pressKit } class="home-links">Press Kit</a> images with the correct hyperlink located on your project page. If the problem persists please reach out to us on social media or through our <a href="#modal-global-contact" data-toggle="modal" class="home-links">contact form</a>.</p>
				<div class="col-sm-9 text-left social-icons">
						<a href="https://www.facebook.com/Krowdspaced" target="_blank">
						<span class="fa-stack fa fa-2x social-btn filterdark">
						<i class="fa fa-circle fa-stack-2x" ></i>
						<i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
						</span>
						</a>
						<a href="https://www.pinterest.com/Krowdspace" target="_blank">
						<span class="fa-stack fa fa-2x social-btn filterdark">
						<i class="fa fa-circle fa-stack-2x"></i>
						<i class="fa fa-pinterest fa-stack-1x fa-inverse"></i>
						</span>
						</a>
						<a href="https://www.twitter.com/Krowdspaced" target="_blank">
						<span class="fa-stack fa fa-2x social-btn filterdark">
						<i class="fa fa-circle fa-stack-2x"></i>
						<i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
						</span>
						</a>
						<a href="https://www.instagram.com/Krowdspace" target="_blank">
						<span class="fa-stack fa fa-2x social-btn filterdark">
						<i class="fa fa-circle fa-stack-2x"></i>
						<i class="fa fa-instagram fa-stack-1x fa-inverse"></i>
						</span>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
<script>
pressKit() 
{
	$('#modal-project-error').modal('hide');
    $('#modal-press-kit').modal('show');
}
</script>
</register-project-error>