<project-header>
    <div class="row" style="padding-top: 30px;">
        <div each= { exploreContent } style="display:flex;">
            <div class="col-sm-7">
                <img class="img-responsive" src="{ projectImage}">
            </div>
            <div class="col-sm-5">
                <p><strong>{ projectTitle }</strong></p>
                <p>{ projectDescription }</p>
                <br>
                <p><strong>Reward:</strong> { reward }</p>
                <div style="margin-top:45px;">
                    <a href="#modal-error" data-toggle="modal" class="project-backer-btn">Back Project</a>
                </div>
                <div class="no-gutter funding-box">
                    <div class="col-sm-6">
                        <p class="project-details">${ goal }</p>
                    </div>
                    <div class="col-sm-6 text-right">
                        <p class="project-details">{ category }</p>
                    </div>
                    <div class="col-sm-12">
                        <div class="progress-index">
                            <div class="progress-bar" role="progressbar" style="width: { progressBar }%" aria-valuenow="{ progressBar }" aria-valuemin="0" aria-valuemax="100">
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-2">
                        <p class="project-details">{ progressBar }%</p>
                        <p class="project-details">Funded</p>
                    </div>
                    <div class="col-sm-3 text-center">
                        <p class="project-details">${ pledged }</p>
                        <p class="project-details">Pledged</p>
                    </div>
                    <div class="col-sm-3 text-center">
                        <p class="project-details">{ backers }</p>
                        <p class="project-details">Backers</p>
                    </div>
                    <div class="col-sm-4 text-right">
                        <p class="project-details">{ days }</p>
                        <p class="project-details">Days Left</p>
                    </div>
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
</project-header>