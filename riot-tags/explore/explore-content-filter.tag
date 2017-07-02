<explore-content-filter>
    <div class="row">
        <div class="col-sm-3">
            <select class="form-control">
                <option value="">Popular</option>
                <option value="">Featured Projects</option>
                <option value="">Just Launched</option>
                <option value="">Closing Soon</option>
            </select>
        </div>
        <div class="col-sm-3">
            <select class="form-control">
                <option value="">All Categories</option>
                <option value="">Art</option>
                <option value="">Design</option>
                <option value="">Film</option>
                <option value="">Food</option>
                <option value="">Music</option>
                <option value="">Photography</option>
                <option value="">Technology</option>
                <option value="">Video Games</option>
                <option value="">Writing</option>
            </select>
        </div>
        <div class="col-sm-2">
        </div>
        <div class="col-sm-4">
            <form role="search">
                <div class="input-group">
                    <input type="text" ref= "searchBox" class="form-control" placeholder="Search Projects" onkeyup={ myFunction }>
                    <div class="input-group-btn">
                        <button class="btn btn-default" type="submit"><i class="fa fa-search fa-lg"></i></button>
                    </div>
                </div>
            </form>
        </div>
    </div>   

    <script>
    this.on('mount', function(){
        this.update();
        this.filterTag = this.opts.filtersearch;
    });


    function categoriesFilter(filterText) 
    {
        return function(el)
        {
            return el.project_data.info_data.category.toLowerCase().includes(filterText.toLowerCase()) 
            || el.name.toLowerCase().includes(filterText.toLowerCase());
        }
    }
    
    myFunction() 
    {
        var value = this.refs.searchBox.value;
        var exploreCards = this.filterTag.exploreCards;
        let filterArray = exploreCards.filter(categoriesFilter(value));

        this.filterTag.setExploreCards(filterArray);
        console.log(categoriesFilter());
    }
    
    </script>
</explore-content-filter>