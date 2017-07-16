<global-modal-comment>
    <div id="modal-comment" class="modal container fade">
		<div class="krowdspace-modal col-sm-6 col-sm-offset-3">
			<div id="modal" class="modal-content">
				<div class="modal-header">
					<p class="modal-heading">Thank You From Krowdspace</p>
				</div>
				<div class="modal-body">
					<p>Thank you for submitting your comment to Krowdspace. We will respond as quickly as possible. Please register with Krowdspace and get to know our new site!</p>
					<p>We will be sending updates on the latest news, promotions and exclusive giveaways to all of our Krowdspace members. Until then, make sure to stay connected on our social media channels:</p>
					<div class="col-sm-9 text-left boost-warning">
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
					<div class="col-sm-3 text-right boost-warning social-padding">
						<a onclick={ comment }>
						<span class="fa-stack fa fa-2x social-btn">
						<i class="fa fa-circle fa-stack-2x" ></i>
						<i class="fa fa-sign-out fa-stack-1x fa-inverse center-icon"></i>
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
comment() 
{
	$('#modal-comment').modal('hide');
    window.location.replace("/#/explore");
}
</script>
</global-modal-comment>