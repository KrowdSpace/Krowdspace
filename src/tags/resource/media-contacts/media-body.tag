<media-body style="width: 100%;">
    <div class="resource-relative">
        <div show={ !mediaCheck } class="resource-gradient text-center">
            <button class="btn btn-primary btn-resource btn-resource-alt" data-toggle="modal" data-target="#Login">
                <i class="fa fa-chevron-down resource-arrow"></i>
            </button>
        </div>
        <div class="col-xs-12 col-sm-6 no-gutters media-column-flex">

            <div show={ !mediaCheck } class="resource-gradient"></div>
            <div class="media-columns">
                <p id="media-letters">A-F</p>
                <p each={ media1 }>
                    <a class="media-links" onclick="$(':first-child', this).css('color', '#81e281');" href="{ mediaLink }" target="{ target }">
                      <i class="fa fa-check media-icons"></i> { mediaTitle }
                    </a>
                </p>
            </div>
            <div class="media-columns">
                <p>&nbsp;</p>
                <p each={ media2 }>
                    <a class="media-links" onclick="$(':first-child', this).css('color', '#81e281');" href="{ mediaLink }" href="{ mediaLink }" target="{ target }">
                      <i class="fa fa-check media-icons"></i> { mediaTitle }
                    </a>
                </p>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 no-gutters media-column-flex">
            <div show={ !mediaCheck } class="resource-gradient resource-gradient-right"></div>
            <div class="media-columns">
                <p id="media-letters">F-Z</p>
                <p each={ media3 }>
                    <a class="media-links" onclick="$(':first-child', this).css('color', '#81e281');" href="{ mediaLink }" href="{ mediaLink }" target="{ target }">
                      <i class="fa fa-check media-icons"></i> { mediaTitle }
                    </a>
                </p>
            </div>
            <div class="media-columns-bottom">
                <p>&nbsp;</p>
                <p each={ media4 }>
                    <a class="media-links" onclick="$(':first-child', this).css('color', '#5cb85c');" href="{ mediaLink }" href="{ mediaLink }" target="{ target }">
                      <i class="fa fa-check media-icons"></i> { mediaTitle }
                    </a>
                </p>
            </div>
        </div>
    </div>
    <script>
        krowdspace.v1.check()
            .then((res) => {
                    this.mediaCheck = true;
                    this.update();
                },
                (err) => {
                    this.mediaCheck = false;
                    this.update();
                });

        this.media1 = [{
                    mediaLink: "mailto:review.monkey@148apps.com",
                    mediaTitle: "148Apps",
                    target: ""
                },
                {
                    mediaLink: "mailto:contact@fivethirtyeight.com",
                    mediaTitle: "538",
                    target: ""
                },
                {
                    mediaLink: "mailto:tips@9to5mac.com",
                    mediaTitle: "9to5Mac",
                    target: ""
                },
                {
                    mediaLink: "mailto:news@appleinsider.com",
                    mediaTitle: "Apple Insider",
                    target: ""
                },
                {
                    mediaLink: "mailto:news@appspy.com",
                    mediaTitle: "AppSpy",
                    target: ""
                },
                {
                    mediaLink: "https://arstechnica.com/contact-us/",
                    mediaTitle: "Ars Technica",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:haveyoursay@bbc.co.uk",
                    mediaTitle: "BBC",
                    target: ""
                },
                {
                    mediaLink: "mailto:PR@bleacherreport.com",
                    mediaTitle: "Bleacher Report",
                    target: ""
                },
                {
                    mediaLink: "mailto:oped@bloomberg.net",
                    mediaTitle: "Bloomberg",
                    target: ""
                },
                {
                    mediaLink: "mailto:reader.pitches@buzzfeed.com",
                    mediaTitle: "BuzzFeed",
                    target: ""
                },
                {
                    mediaLink: "mailto:cfusco@suntimes.com",
                    mediaTitle: "Chicago Sun Times",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:editor@chicagotribune.com",
                    mediaTitle: "Chicago Tribune",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:powerpitch@cnbc.com",
                    mediaTitle: "CNBC",
                    target: ""
                },
                {
                    mediaLink: "mailto:press@cnet.com",
                    mediaTitle: "CNET",
                    target: "_blank"
                },
            ],
            this.media2 = [{
                    mediaLink: "mailto:news@industryreview.com",
                    mediaTitle: "Computer Business",
                    target: ""
                },
                {
                    mediaLink: "mailto:pitches@computerworld.com",
                    mediaTitle: "Computer World",
                    target: ""
                },
                {
                    mediaLink: "mailto:tips@consumerist.com",
                    mediaTitle: "Consumerist",
                    target: ""
                },
                {
                    mediaLink: "http://www.coolhunting.com/contact-us",
                    mediaTitle: "Cool Hunting",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:editor@craveonline.com",
                    mediaTitle: "Crave",
                    target: ""
                },
                {
                    mediaLink: "https://www.crowdfundinsider.com/submit-a-tip/",
                    mediaTitle: "Crowdfund Insider",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:news@cultofmac.com",
                    mediaTitle: "Cult of Mac",
                    target: ""
                },
                {
                    mediaLink: "mailto:tips@dailydot.com",
                    mediaTitle: "Daily Dot",
                    target: ""
                },
                {
                    mediaLink: "mailto:dnmetro@dailynews.com",
                    mediaTitle: "Daily News",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:contact@designboom.com",
                    mediaTitle: "Design Bloom",
                    target: ""
                },
                {
                    mediaLink: "https://www.digitaltrends.com/news-tips/",
                    mediaTitle: "Digital Trends",
                    target: "_blank"
                },
                {
                    mediaLink: "https://www.engadget.com/about/tips/",
                    mediaTitle: "Engadget",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:ideas@forbes.com",
                    mediaTitle: "Forbes",
                    target: ""
                },
                {
                    mediaLink: "https://fstoppers.com/contact",
                    mediaTitle: "Fstoppers",
                    target: "_blank"
                },
            ],
            this.media3 = [{
                    mediaLink: "mailto:website.services@fusion.net",
                    mediaTitle: "Fusion",
                    target: ""
                },
                {
                    mediaLink: "mailto:editors@indiegames.com",
                    mediaTitle: "Gamasutra",
                    target: ""
                },
                {
                    mediaLink: "mailto:info@gamerant.com",
                    mediaTitle: "Gamerant",
                    target: ""
                },
                {
                    mediaLink: "mailto:gamesindustry@gaminginsiders.net",
                    mediaTitle: "Gaming Insider",
                    target: ""
                },
                {
                    mediaLink: "https://www.geekwire.com/tips/",
                    mediaTitle: "GeekWire",
                    target: "_blank"
                },
                {
                    mediaLink: "https://www.huffingtonpost.com/static/contact-us",
                    mediaTitle: "Huffington Post",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:pr@theladbiblegroup.com",
                    mediaTitle: "LAD Bible",
                    target: ""
                },
                {
                    mediaLink: "http://www.latimes.com/about/mediagroup/la-mediagroup-contactus,0,7698150.htmlstory",
                    mediaTitle: "Los Angeles Times",
                    target: "_blank"
                },
                {
                    mediaLink: "http://mashable.com/submit/",
                    mediaTitle: "Mashable",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:tips@nypost.com",
                    mediaTitle: "New York Post",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:li@newsday.com",
                    mediaTitle: "Newsday",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:tips@redmondpie.com",
                    mediaTitle: "Redmond Pie",
                    target: ""
                },
                {
                    mediaLink: "mailto:metro@sfchronicle.com",
                    mediaTitle: "San Francisco Chronicle",
                    target: "_blank"
                },
                {
                    mediaLink: "http://www.mercurynews.com/contact-us/",
                    mediaTitle: "San Jose Mercury",
                    target: "_blank"
                },
            ],
            this.media4 = [{
                    mediaLink: "http://seattletimes.nwsource.com/flatpages/services/contactus.html",
                    mediaTitle: "Seattle Times",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:pitchslate@slate.com",
                    mediaTitle: "Slate",
                    target: ""
                },
                {
                    mediaLink: "mailto:tips@techcrunch.com",
                    mediaTitle: "Tech Crunch",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:news@techradar.com",
                    mediaTitle: "Tech Radar",
                    target: ""
                },
                {
                    mediaLink: "https://witness.theguardian.com/assignment/submitastory#contribute",
                    mediaTitle: "The Guardian",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:letters@oregonian.com",
                    mediaTitle: "The Oregonian",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:pr@purch.com",
                    mediaTitle: "Tom's Guide",
                    target: "_blank"
                },
                {
                    mediaLink: "http://marketing.usatoday.com/contact",
                    mediaTitle: "USA Today",
                    target: "_blank"
                },
                {
                    mediaLink: "http://www.vox.com/contact",
                    mediaTitle: "Vox",
                    target: "_blank"
                },
                {
                    mediaLink: "https://www.voxmedia.com/contact",
                    mediaTitle: "Vox Media",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:tips@theverge.com",
                    mediaTitle: "Verge",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:wsj.ltrs@wsj.com",
                    mediaTitle: "Wall Street Journal",
                    target: "_blank"
                }, {
                    mediaLink: "https://helpcenter.washingtonpost.com/hc/en-us/articles/115004154188-How-to-submit-a-press-release",
                    mediaTitle: "Washington Post",
                    target: "_blank"
                },
                {
                    mediaLink: "mailto:press@WIRED.com",
                    mediaTitle: "WIRED",
                    target: ""
                },
            ];

    </script>
</media-body>
