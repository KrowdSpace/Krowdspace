<explore-filter>
    <div class="row filter-row-flex">
        <select class="form-control filter-items" ref="options" onchange={ onCatChange }>
                <option value="*">Featured Projects</option>
                <option each={ cat in catArr }  value="{ cat }">{ cat }</option>
            </select>
        <form role="search" class="filter-items">
            <div class="input-group">
                <input type="text" ref="searchBox" class="form-control" placeholder="Search Projects" onkeyup={ onSearch }>
                <div class="input-group-btn">
                    <div class="btn btn-primary btn-void">
                        <i class="fa fa-search fa-lg"></i>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <script>
        this.exploreCards = [];
        this.displayCards = [];
        this.catArr = [];

        this.on('mount', function () {
            this.filterTag = opts.filtersearch;

            let DATA = {
                LIMIT: 100,
            };

            krowdspace.projects.explore(DATA).catch(err => console.log('error: ', err)).then((res) => {
                    let rewardFilter = res.data;
                    this.exploreCards = rewardFilter.filter((element) => {
                        return (element.project_data.info_data.rewardValid == 1);
                    });


                    let catSet = new Set();

                    res.data.forEach((el) => {
                        catSet.add(el.project_data.info_data.category);
                    });

                    catSet.forEach((el) => {
                        this.catArr.push(el);
                        this.catArr = this.catArr.sort();
                    });

                    let pa = this.exploreCards,
                        ca = this.projectSorter(this.exploreCards);

                    this.setExploreCards(ca);
                    this.update();
                });
        });

        setExploreCards(neA) {
            this.displayCards = neA;
            if (this.filterTag) {
                this.filterTag.setExploreCards(this.displayCards);
            }
        };

        this.onSearch = function onSearch() {
            var value = this.refs.searchBox.value;
            var exploreCards = this.filterTag.exploreCards;

            let filterArray = this.projectSorter(this.exploreCards.filter(this.categoriesFilter(value)));

            this.setExploreCards(filterArray);
        };

        this.onCatChange = function onCatChange() {
            let o = this.refs.options;
            let option = o.options[o.selectedIndex].value;
            this.onSearch();
        };

        this.projectSorter = function projectsSorter(pa) {
            let fpA = pa.filter((el, i, arr) => {
                return el.project_data.info_data.featured;
            });

            let spA = pa.filter((el, i, arr) => {
                return !el.project_data.info_data.featured;
            });


            fpA.reverse();

            spA.reverse();


            spA.splice(0, 0, ...fpA);

            return spA;
        };

        this.categoriesFilter = function categoriesFilter(filterText) {
            let o = this.refs.options;
            let option = o.options[o.selectedIndex].value.toLowerCase();
            filterText = filterText.toLowerCase();

            return function (el) {
                let cat = el.project_data.info_data.category.toLowerCase();

                if (option === "*") {
                    return (filterText == '' || el.name.toLowerCase().includes(filterText));
                } else {
                    return cat.includes(option) &&
                        (filterText == '' || el.name.toLowerCase().includes(filterText));
                }
            }
        };
    </script>
</explore-filter>
<!-- Validated Content October 26th, 2017 -->
