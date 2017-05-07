<modal-submission>
    <div class="krowdspace-modal modal fade" id="modal-submission" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div onclick={ close } class="close-modal-full" data-dismiss="modal">
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3 shadow user-modal text-justify" style="border: 5px solid #fed136;">
                            <div class="modal-container">
                                <p class="modal-heading">Thank You From Krowdspace</p>
                            </div>
                            <p>Thank you for registering with Krowdspace. If you selected to submit a project we will most likely be contacting you shortly. If you are joining as a member we look forward to launching our unique crowdfunding dashboard with you!</p>
                            <p>We will be sending updates on the latest news, promotions and exclusive giveaways leading up to our official launch. Until then, make sure to stay connected with our social media channels:</p>
                            <div class="text-left boost-warning">
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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        this.on('mount', function() {
            var url = window.location.href;
            if (url.indexOf('?success=1') != -1) {
                $("#modal-submission").modal('show');
                $('#modal-submission').fadeIn();
            }
        });
        close(e){
        e.preventDefault();
        window.location.replace('/');
        }
    </script>
</modal-submission>