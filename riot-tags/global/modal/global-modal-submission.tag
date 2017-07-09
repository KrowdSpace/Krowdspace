<global-modal-submission>
    <div id="modal-submission" class="modal container fade">
		<div class="krowdspace-modal col-sm-6 col-sm-offset-3">
			<div id="modal" class="modal-content">
				<div class="modal-header">
					<p class="modal-heading">Thank You From Krowdspace</p>
				</div>
				<div class="modal-body">
					<p>Thank you for registering with Krowdspace. To activate your account please check your email and click on the verification link provided. We hope you enjoy our services and happy crowdfunding!</p>
					<p>Being a Krowdspace member will give you access to the latest news, promotions and exclusive giveaways! Until then, make sure to stay connected with our social media channels:</p>
					<div class="col-sm-9 text-left boost-warning" style="padding: 0px;">
						<a href="https://www.facebook.com/Krowdspaced" target="_blank">
						<span class="fa-stack fa fa-2x social-btn">
						<i class="fa fa-circle fa-stack-2x" ></i>
						<i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
						</span>
						</a>
						<a href="https://www.pinterest.com/Krowdspace" target="_blank">
						<span class="fa-stack fa fa-2x social-btn">
						<i class="fa fa-circle fa-stack-2x"></i>
						<i class="fa fa-pinterest fa-stack-1x fa-inverse"></i>
						</span>
						</a>
						<a href="https://www.twitter.com/Krowdspaced" target="_blank">
						<span class="fa-stack fa fa-2x social-btn">
						<i class="fa fa-circle fa-stack-2x"></i>
						<i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
						</span>
						</a>
						<a href="https://www.instagram.com/Krowdspace" target="_blank">
						<span class="fa-stack fa fa-2x social-btn">
						<i class="fa fa-circle fa-stack-2x"></i>
						<i class="fa fa-instagram fa-stack-1x fa-inverse"></i>
						</span>
						</a>
					</div>
					<div class="col-sm-3 text-right boost-warning" style="padding: 0px;">
						<a onclick={ submission }>
						<span class="fa-stack fa fa-2x social-btn">
						<i class="fa fa-circle fa-stack-2x" ></i>
						<i class="fa fa-sign-out fa-stack-1x fa-inverse" style="padding-left: 3px;"></i>
						</span>
						</a>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
		<div class="background-modal-close" data-dismiss="modal"> </div>
	</div>
<script>
submission() 
{
	$('#modal-submission').modal('hide');
    window.location.replace("/#/explore");
}
</script>
</global-modal-submission>