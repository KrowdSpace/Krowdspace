<explore-content-filter>
    <div class="row">
        <div class="col-sm-3">
            <select class="form-control">
                <option value="">Featured Projects</option>
                <option value="">Just Launched</option>
                <option value="">Closing Soon</option>
            </select>
        </div>
        <div class="col-sm-3">
            <select class="form-control" ref="options" onchange={ testing } >
                <option value="">All Categories</option>
                <option each={ cat in catArr }  value="{ cat }"> 
                    { cat }
                </option>
            </select>
        </div>
        <div class="col-sm-2">
        </div>
        <div class="col-sm-4">
            <form role="search">
                <div class="input-group">
                    <input type="text" ref= "searchBox" class="form-control" placeholder="Search Projects" onkeyup={ myFunction }>
                    <div class="input-group-btn">
                        <div class="btn btn-void"><i class="fa fa-search fa-lg"></i></div>
                    </div>
                </div>
            </form>
        </div>
    </div>   

    <script>
    this.on('mount', function(){
        this.update();
        this.exploreCardsCatergory();
        this.filterTag = this.opts.filtersearch;
    });


    exploreCardsCatergory(){
        this.displayCards = [];
        this.exploreCards = [];

        this.catArr = [];

        krowdspace.projects.explore().then((res) =>
        {
           // console.log(res.data);
            this.exploreCards = res.data;
            this.setExploreCards(res.data);

            let catSet = new Set();

            res.data.forEach((el)=>
            {
                catSet.add(el.project_data.info_data.category);
            });

            catSet.forEach((el)=>
            {
                this.catArr.push(el);
            });
            
            this.update();
        },
        (err)=>
        {
            console.log(err)
        });
       

        this.setExploreCards = function setExploreCards(neA)
        {
            this.displayCards = neA;
            this.update();
        };

        this.setExploreCards(this.exploreCards);
    };



    categoriesFilter(filterText) 
    {
        let o = this.refs.options;
        let option = o.options[o.selectedIndex].value.toLowerCase();
        filterText = filterText.toLowerCase();
      

        return function(el)
        {
            let cat = el.project_data.info_data.category.toLowerCase();

            console.log(cat.includes( option ), cat, option);
            console.log(filterText != '' && cat.includes( filterText ), cat, filterText);

            return cat.includes( option )
            || (filterText != '' && cat.includes( filterText ) )
            || (filterText != '' && el.name.toLowerCase().includes( filterText ));
        }
    }
    
    myFunction() 
    {
        var value = this.refs.searchBox.value;
        var exploreCards = this.filterTag.exploreCards;

        console.log(value);
       
        let filterArray = exploreCards.filter(this.categoriesFilter(value));

        console.log(filterArray);

        this.filterTag.setExploreCards(filterArray);
       
       // console.log(categoriesFilter());
    
    }
    this.testing = function testing(){
        
        let o = this.refs.options;
        let option = o.options[o.selectedIndex].value;
        console.log(option);
        this.myFunction();
    }
    
    </script>
</explore-content-filter>