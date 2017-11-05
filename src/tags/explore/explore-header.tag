<explore-header>
    <div class="row">
        <div class="explore slider">
            <div class="explore-carousel" each={ exploreBanner }>
                <div class="item">
                    <a href="/#/project/{ unique_id }">
                    <img class="img-slider { project_data.meta_data.mainImg || 'image-slider-square' }" src="{ project_data.meta_data.mainImg || project_data.meta_data.altImg }"></a>
                    <p class="text-slider">{ project_data.meta_data.title }<br>{ project_data.info_data.reward }</p>

                    <div class="btn-explore-box">
                        <a href="/#/project/{ unique_id }">
                        <button class="btn btn-primary btn-explore">Details</button>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        this.on('update', () => {

            if (!opts.projects)
            return;


            let exploreData = opts.projects;
            exploreData.sort(function(a,b) {
                return new Date(a.date_added).getTime() - new Date(b.date_added).getTime()
            });

            let filterExplore = exploreData.filter((element) => {
                return (element.project_data.info_data.explore);
            });
            this.exploreBanner = filterExplore.reverse();
        });
    </script>
</explore-header>
<!-- Validated Content October 26th, 2017 -->
