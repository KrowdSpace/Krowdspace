<global-modal-comment>
    <div id="modal-comment" class="modal container fade">
		<div class="krowdspace-modal col-sm-6 col-sm-offset-3">
			<div id="modal" class="modal-content">
				<div class="modal-header">
					<p class="modal-heading">Thank You From Krowdspace</p>
				</div>
				<div class="modal-body">
					<p>Thank you for submitting your comment to Krowdspace. We will respond as quickly as possible. Please register with Krowdspace as we get ready to launch the new site!</p>
					<p>We will be sending updates on the latest news, promotions and exclusive giveaways leading up to our official launch. Until then, make sure to stay connected with our social media channels:</p>
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
						<a onclick={ comment }>
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
comment() 
{
	$('#modal-comment').modal('hide');
    window.location.replace("/#/explore");
}
</script>
</global-modal-comment>