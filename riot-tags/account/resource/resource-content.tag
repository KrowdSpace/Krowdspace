<resource-content>
    <div class="col-sm-12 text-left container-page shadow">
        <p class="modal-heading">Crowdfunding Resources</p>
        <p class="legal-text">Submitting a project to Krowdspace is just the first step to having a successful campaign. We have provided some extra tools that are completely free for all Krowdspace members including example press release's and format guides as well as major media outlet contacts.</p>
        <div class="row">
            <div class="col-sm-12">
                <p class="privacy-title">Example Press Release</p>
                <p class="legal-text">Creating a Press Release is imperative to running a successful crowdfunding campaign. Make sure to have a compelling email subject, header and headline. Editors and Publishers receive 100's of emails per day and decide wether or not to open an email based on the subject alone. Please take a look at our format and built off of it with your own content.</p>
                <div class="col-sm-6 text-center media-padding">
                    <p><a class="mediaLink" href="pdf/Lala-Bahari-PR.pdf"><i class="fa fa-file-pdf-o fa-2x" download></i> Krowdspace Press Release</a></p>
                    <p><a class="mediaLink" href="http://www.prnewswire.com/news-releases/first-truly-consumer-3d-printer-the-micro-launches-on-kickstarter-254179611.html" target="_blank">Micro 3D Printer Press Release</a></p>
                </div>
                <div class="col-sm-6 text-center media-padding">
                    <p><a class="mediaLink" href="pdf/Pebble-Time-PR.pdf"><i class="fa fa-file-pdf-o fa-2x" download></i> Pebble Time Press Release</a></p>
                    <p><a class="mediaLink" href="http://www.prnewswire.com/news-releases/travel-light-announces-breakthrough-g-ro-luggage-system-300161006.html" target="_blank">G-RO Luggage System</a></p>
                </div>
                <p class="privacy-title">Format Press Release</p>
                <p class="legal-text">There are a few key elements that every press release should have so that media outlets can quickly identify the story. Here are a few links we found that can help you structure a Press Release in an appealing way.</p>
                <div class="col-sm-6 text-center media-padding">
                    <p><a class="mediaLink" href="http://fundbeam.com/kickstarter-press-release/" target="_blank">Fundbeam Press Release Guide</a></p>
                </div>
                <div class="col-sm-6 text-center media-padding">
                    <p><a class="mediaLink" href="https://crowdfundingheadlines.com/press-release-tips/" target="_blank">Crowdfunding Headlines Press Release Guide</a></p>
                </div>
            </div>
        </div>
        <p class="privacy-title">Submit Your Press Release for Media Coverage</p>
        <p class="legal-text">We have compiled a media contact list with some of the biggest names in the industry. Click on a company and you will be directed to their submission form or email contact. We will be adding and updating this list on a regular basis to keep our contacts up to date.</p>
        <div class="row media-box">
            <div class="col-lg-12 col-lg-offset-0 col-md-8 col-md-offset-2">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <p each= { media1 }>
                    <a class="mediaLink" onclick="$(':first-child', this).css('color', '#5cb85c');" href="{ mediaLink }" target="{ target }">
                    <i class="fa fa-check media-icons"></i> { mediaTitle }
                    </a>
                </p>
            </div>
            <div class="col-lg-3 hidden-md hidden-sm">
                <p each= { media2 }>
                    <a class="mediaLink" onclick="$(':first-child', this).css('color', '#5cb85c');" href="{ mediaLink }" href="{ mediaLink }" target="{ target }">
                    <i class="fa fa-check media-icons"></i> { mediaTitle }
                    </a>
                </p>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <p each= { media3 }>
                    <a class="mediaLink" onclick="$(':first-child', this).css('color', '#5cb85c');" href="{ mediaLink }" href="{ mediaLink }" target="{ target }">
                    <i class="fa fa-check media-icons"></i> { mediaTitle }
                    </a>
                </p>
            </div>
            <div class="hidden-lg col-md-6 col-sm-6">
                <p each= { media2 }>
                    <a class="mediaLink" onclick="$(':first-child', this).css('color', '#5cb85c');" href="{ mediaLink }" href="{ mediaLink }" target="{ target }">
                    <i class="fa fa-check media-icons"></i> { mediaTitle }
                    </a>
                </p>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6">
                <p each= { media4 }>
                    <a class="mediaLink" onclick="$(':first-child', this).css('color', '#5cb85c');" href="{ mediaLink }" href="{ mediaLink }" target="{ target }">
                    <i class="fa fa-check media-icons"></i> { mediaTitle }
                    </a>
                </p>
            </div>
            </div>
            <div class="col-sm-12 text-center">
                <p class="media-refresh">*Refresh Browser to Reset Checkmarks</p>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        this.media1 = [
            { mediaLink:"mailto:review.monkey@148apps.com", mediaTitle:"148Apps", target:""},
            { mediaLink:"mailto:contact@fivethirtyeight.com", mediaTitle:"538", target:""},
            { mediaLink:"mailto:tips@9to5mac.com", mediaTitle:"9to5Mac", target:""},
            { mediaLink:"mailto:news@appleinsider.com", mediaTitle:"Apple Insider", target:""},
            { mediaLink:"mailto:news@appspy.com", mediaTitle:"AppSpy", target:""},
            { mediaLink:"https://arstechnica.com/contact-us/", mediaTitle:"Ars Technica", target:"_blank"},
            { mediaLink:"mailto:haveyoursay@bbc.co.uk", mediaTitle:"BBC", target:""},
            { mediaLink:"mailto:PR@bleacherreport.com", mediaTitle:"Bleacher Report", target:""},
            { mediaLink:"mailto:oped@bloomberg.net", mediaTitle:"Bloomberg", target:""},
            { mediaLink:"mailto:reader.pitches@buzzfeed.com", mediaTitle:"BuzzFeed", target:""},
            { mediaLink:"http://www.suntimes.com/aboutus/contactus/index.html", mediaTitle:"Chicago Sun Times", target:"_blank"},
            { mediaLink:"http://www.chicagotribune.com/about/chi-newspaperemail,0,3525235.htmlstory", mediaTitle:"Chicago Tribune", target:"_blank"},
            { mediaLink:"mailto:powerpitch@cnbc.com", mediaTitle:"CNBC", target:""},
            { mediaLink:"https://www.cnet.com/contact/", mediaTitle:"CNET", target:"_blank"},
        ],
        this.media2 = [
            { mediaLink:"mailto:news@industryreview.com", mediaTitle:"Computer Business", target:""},
            { mediaLink:"mailto:pitches@computerworld.com", mediaTitle:"Computer World", target:""},
            { mediaLink:"mailto:tips@consumerist.com", mediaTitle:"Consumerist", target:""},
            { mediaLink:"http://www.coolhunting.com/contact.php", mediaTitle:"Cool Hunting", target:"_blank"},
            { mediaLink:"mailto:editor@craveonline.com", mediaTitle:"Crave", target:""},
            { mediaLink:"https://www.crowdfundinsider.com/submit-a-tip/", mediaTitle:"Crowdfund Insider", target:"_blank"},
            { mediaLink:"mailto:news@cultofmac.com", mediaTitle:"Cult of Mac", target:""},
            { mediaLink:"mailto:tips@dailydot.com", mediaTitle:"Daily Dot", target:""},
            { mediaLink:"http://www.dailynews.com/contactus", mediaTitle:"Daily News", target:"_blank"},
            { mediaLink:"mailto:contact@designboom.com", mediaTitle:"Design Bloom", target:""},
            { mediaLink:"https://www.digitaltrends.com/news-tips/", mediaTitle:"Digital Trends", target:"_blank"},
            { mediaLink:"https://www.engadget.com/about/tips/", mediaTitle:"Engadget", target:"_blank"},
            { mediaLink:"mailto:ideas@forbes.com", mediaTitle:"Forbes", target:""},
            { mediaLink:"https://fstoppers.com/contact", mediaTitle:"Fstoppers", target:"_blank"},
        ],
        this.media3 = [
            { mediaLink:"mailto:website.services@fusion.net", mediaTitle:"Fusion", target:""},
            { mediaLink:"mailto:editors@indiegames.com", mediaTitle:"Gamasutra", target:""},
            { mediaLink:"mailto:info@gamerant.com", mediaTitle:"Gamerant", target:""},
            { mediaLink:"mailto:gamesindustry@gaminginsiders.net", mediaTitle:"Gaming Insider", target:""},
            { mediaLink:"https://www.geekwire.com/tips/", mediaTitle:"GeekWire", target:"_blank"},
            { mediaLink:"http://www.huffingtonpost.com/contact//", mediaTitle:"Huffington Post", target:"_blank"},
            { mediaLink:"mailto:pr@theladbiblegroup.com", mediaTitle:"LAD Bible", target:""},
            { mediaLink:"http://www.latimes.com/about/mediagroup/la-mediagroup-contactus,0,7698150.htmlstory", mediaTitle:"Los Angeles Times", target:"_blank"},
            { mediaLink:"http://mashable.com/submit/", mediaTitle:"Mashable", target:"_blank"},
            { mediaLink:"http://www.nypost.com/contact/contactus.htm", mediaTitle:"New York Post", target:"_blank"},
            { mediaLink:"http://www.newsday.com/services/contact-newsday-1.1303755", mediaTitle:"Newsday", target:"_blank"},
            { mediaLink:"mailto:tips@redmondpie.com", mediaTitle:"Redmond Pie", target:""},
            { mediaLink:"http://www.sfgate.com/chronicle/info/e-mail/", mediaTitle:"San Francisco Chronicle", target:"_blank"},
            { mediaLink:"http://www.mercurynews.com/contact-us/", mediaTitle:"San Jose Mercury",
            target:"_blank"},
        ],
        this.media4 = [
            { mediaLink:"http://seattletimes.nwsource.com/flatpages/services/contactus.html", mediaTitle:"Seattle Times", target:"_blank"},
            { mediaLink:"mailto:pitchslate@slate.com", mediaTitle:"Slate", target:""},
            { mediaLink:"https://techcrunch.com/got-a-tip/", mediaTitle:"Tech Crunch", target:"_blank"},
            { mediaLink:"mailto:news@techradar.com", mediaTitle:"Tech Radar", target:""},
            { mediaLink:"https://witness.theguardian.com/assignment/submitastory#contribute", mediaTitle:"The Guardian", target:"_blank"},
            { mediaLink:"http://biz.oregonian.com/newsroom/", mediaTitle:"The Oregonian", target:"_blank"},
            { mediaLink:"http://www.purch.com/about/#contact-press", mediaTitle:"Tom's Guide", target:"_blank"},
            { mediaLink:"http://feedbackforms.usatoday.com/marketing/feedback/feedback-online.aspx?type=12", mediaTitle:"USA Today", target:"_blank"},
            { mediaLink:"http://www.vox.com/contact", mediaTitle:"Vox", target:"_blank"},
            { mediaLink:"https://www.voxmedia.com/contact", mediaTitle:"Vox Media", target:"_blank"},
            { mediaLink:"http://www.theverge.com/tip-us", mediaTitle:"Verge", target:"_blank"},
            { mediaLink:"http://help.wsj.com/contact-us/?mod=WSJ_footer", mediaTitle:"Wall Street Journal", target:"_blank"},{mediaLink:"http://www.washingtonpost.com/blogs/ask-the-post/post/how-to-contact-the-post-newsroom/2011/11/17/gIQAd0WJlN_blog.html", mediaTitle:"Washington Post", target:"_blank"},
            { mediaLink:"mailto:press@WIRED.com", mediaTitle:"WIRED", target:""},
        ];
    </script>
</resource-content>