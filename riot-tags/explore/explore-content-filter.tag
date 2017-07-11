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
            <select class="form-control" ref="options" onchange={ onCatChange } >
                <option value="*">All Categories</option>

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

                    <input type="text" ref= "searchBox" class="form-control" placeholder="Search Projects" onkeyup={ onSearch }>

                    <div class="input-group-btn">
                        <div class="btn btn-void">
                            <i class="fa fa-search fa-lg"></i>
                        </div>
                    </div>

                </div>
            </form>

        </div>
    </div>   

    <script>

    this.exploreCards = [];

    this.displayCards = [];

    this.catArr = [];

    this.on('mount', function()
    {
        this.filterTag = opts.filtersearch;

        krowdspace.projects.explore().catch(err=>console.log('error: ', err)).then((res) =>
        {
            this.exploreCards = res.data;

            let catSet = new Set();

            res.data.forEach((el)=>
            {
                catSet.add(el.project_data.info_data.category);
            });

            catSet.forEach((el)=>
            {
                this.catArr.push(el);
            });

            let pa = this.exploreCards,
                ca = this.projectSorter(this.exploreCards);

            console.log(pa, ca);

            this.setExploreCards(ca);
            this.update();
        });
    });

    setExploreCards(neA)
    {
        this.displayCards = neA;
        if(this.filterTag)
        {
            this.filterTag.setExploreCards(this.displayCards);
        }
    };

    this.onSearch = function onSearch() 
    {
        var value = this.refs.searchBox.value;
        var exploreCards = this.filterTag.exploreCards;
       
        let filterArray = this.projectSorter( this.exploreCards.filter( this.categoriesFilter(value) ) );

        console.log("ST: ", value);
        console.log('FA: ', filterArray);

        this.setExploreCards(filterArray);
    };

    this.onCatChange = function onCatChange()
    {    
        let o = this.refs.options;
        let option = o.options[o.selectedIndex].value;

        this.onSearch();
    };

    this.projectSorter = function projectsSorter(pa)
    {
        let fpA = pa.filter((el, i, arr)=>
        {
            return el.project_data.meta_data.featured;
        });

        let spA = pa.filter((el, i, arr)=>
        {
            return !el.project_data.meta_data.featured;
        });

        spA.splice(0, 0, ...fpA);

        return spA;
    };

    this.categoriesFilter = function categoriesFilter(filterText) 
    {
        let o = this.refs.options;
        let option = o.options[o.selectedIndex].value.toLowerCase();
        filterText = filterText.toLowerCase();  

        return function(el)
        {
            let cat = el.project_data.info_data.category.toLowerCase();

           // console.log(cat.includes( option ), cat, option);
           // console.log(filterText != '' && cat.includes( filterText ), cat, filterText);

            if(option === "*")
            {
                return ( filterText == '' || el.name.toLowerCase().includes( filterText ) );
            }
            else
            {
                return cat.includes( option ) 
                    && (filterText == '' || el.name.toLowerCase().includes( filterText ));    
            }
        }
    };
    </script>
</explore-content-filter>