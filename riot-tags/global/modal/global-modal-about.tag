<global-modal-about>
    <div id="modal-about" class="modal fade">
        <div class="krowdspace-modal col-sm-10 col-sm-offset-1">
            <div id="modal" class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close btn-modal" data-dismiss="modal" aria-hidden="true"><i class="fa fa-2x fa-times text-primary" aria-hidden="true"></i></button>
                    <p class="modal-heading">About Krowdspace</p>
                </div>
                <div class="modal-body">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/1.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="text-left">
                                    <p class="about-heading"><strong>October 2016</strong></p>
                                    <p class="about-heading"><strong>The Crowdfunding Experiment</strong></p>
                                    <div class="text-left">
                                        <p>We had our first encounter with crowdfunding while attempting to launch our original product "The Bahari Bag" on Kickstarter. We had the great product, a full functioning website, personal story and a well crafted project page. It became very clear that we were missing one thing. Our community wasnt large enough and it was very difficulty to gain any traction. We searched high and low for a free or affordable website to show off our hard work and build our community but there was none.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/2.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="text-left">
                                    <p class="about-heading"><strong>November 2016</strong></p>
                                    <p class="about-heading"><strong>The Seed is Planted</strong></p>
                                    <div class="text-left">
                                        <p>As we came to terms with the results of our Kickstarter our team decided to analyze and learn from our mistakes. We had invested a lot of money into companies who promised promotions and news coverage or articles but never delivered. Our hard work and dreams had been taken advantage of by people looking to make a quick profit. The idea of a new and innovative company started to take shape to help others navigate the extreme world of crowdfunding.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/3.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="text-left">
                                    <p class="about-heading"><strong>December 2016</strong></p>
                                    <p class="about-heading"><strong>Krowdspace is Born</strong></p>
                                    <div class="text-left">
                                        <p>Krowdspace begins development to create a unified platform for people who need help launching their own crowdfunding projects. We wanted to offer a service that is appreciated and transparent. As our development continued new features were added regularly. Our social media channels go live and we start building our own brand.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/4.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="text-left">
                                    <p class="about-heading"><strong>January 2017</strong></p>
                                    <p class="about-heading"><strong>Building our Platform</strong></p>
                                    <div class="text-left">
                                        <p>Along with social media boosts and featured banners for our users, we have also collected news media contacts for Press Kits to help gain traction. We are also providing targeted ad campaigns that will be fully transparent. By investing in our advertisements plans we will put 100% of the money you provide towards your campaigns. Krowdspace will not take a cut.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="timeline">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/5.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="text-left">
                                    <p class="about-heading"><strong>March 2017</strong></p>
                                    <p class="about-heading"><strong>Krowdspace Launch</strong></p>
                                    <div class="text-left">
                                        <p>The Krowdspace Landing page is launched! With the hard work and dedication of our team we were able to launch a month ahead of schedule. Next step is bringing to life the unified dashboard to pull in crowdfunding projects from the top sites. We have also launched limited crowdfunding tools to help your project be successful.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted" style="padding-bottom:25px;">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="img/about/6.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="text-left">
                                    <p class="about-heading"><strong>Krowdspace</strong></p>
                                    <div class="text-left">
                                        <p>Krowdspace consists of a small team from the Seattle Washington area. Each one of us brings a special skill set to create something special. Support us on this journey and see how Krowdspace takes shape.</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                    <div class="text-center">
                        <button type="button" class="text-center modal-close" data-dismiss="modal" style="margin-top: 0px;">Close</button>
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
            if (url.indexOf('?about=1') != -1) 
            {
                $("#modal-about").modal('show');
                $('#modal-about').fadeIn(100);
            };
        });
    </script>
</global-modal-about>