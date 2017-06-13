<project-content-header>
    <div class="row" style="margin-top: 93px;">
        <div class="no-gutter" each= { exploreContent } style="display: flex;">
            <div class="col-sm-7 project-content-left">
                <div class="project-relative">
                <img class="img-responsive" src="{ projectImage}">
                                <p class="metrics-absolute">
                                    <span class="learn-metrics" style="float: left">Pledged $3,243</span>
                                    <span class="learn-metrics" style="float: right">Project Goal ${ goal }</span>
                                </p>
                </div>
            </div>
            <div class="col-sm-5 project-content-right" style="position:relative;">
                <div class="text-center coupon-code-box">
                        <p class="coupon-code">USE CODE 1XD6D3</p>
                </div>
                <p><strong>{ projectTitle }</strong></p>
                </p>{ projectDescription }</p>
                <p><strong>Reward:</strong> { reward }</p>
                <p><strong>Coupon Code:</strong> Send the following coupon code as a comment after you have backed the project through the crowdfunding portal. The project owner will fulfill your reward upon successful funding.</p>
                <div class="text-center" style="margin-top: 25px;">
                <a href="#" class="back-project">BACK PROJECT</a>
                </div>
            </div>
        </div>
    </div>
    <script>
        this.exploreContent = [
        { projectURL:"projects.php",
        projectImage:"/img/projects/bahari-bag.jpg",
        projectTitle:"Lala Bahari: The First Convertible Tote Bag of its Kind",
        projectDescription:"Made in Africa to support the local communities. Our bag converts from a towel or wrap into a tote through an innovative rope mechanism.",
        reward:"All pledges over $50 will receive a Bahari Sarong and Scarf.",
        goal:"12,300",
        category:"Design",
        progressBar:'25',
        pledged:'8,000',
        backers: '44',
        days:'16'} 
        ]
    </script>
</project-content-header>