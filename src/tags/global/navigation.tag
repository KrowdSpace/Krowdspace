<navigation>
    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
			        	</button>
                <a class="navbar-brand" href="/"><img class="krowdspace-logo"/><span class="krowdspace-logo-text">Krowdspace</span></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a class="navButton" href="/#/explore">Explore</a></li>
                    <li show={ !SignedIn }><a class="navButton" href="#/account/register">Project Submission</a></li>
                    <li show={ SignedIn && !userProjectLevel }><a class="navButton" href="#/account/register">Project Submission</a></li>
                    <li show={ SignedIn && userProjectLevel }><a class="navButton" href="#/account/dashboard">Project Dashboard</a></li>
                    <li class="toggle-hidden"><a class="navButton" href="#/resource/main">Project Resources</a></li>
                    <li class="toggle-show" class="dropdown nav-push">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Project Resources <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a class="navButton" href="/#/resource/press-release">Press Release</a></li>
                            <li><a class="navButton" href="/#/resource/pre-launch">Pre-Launch Services</a></li>
                            <li><a class="navButton" href="/#/resource/media-contacts">Media Contacts</a></li>
                            <li><a class="navButton" href="/#/resource/post-launch">Post-Launch Services</a></li>
                            <li><a class="navButton" href="/#/resource/social-media">Social Media</a></li>
                        </ul>
                    </li>
                    <li class="dropdown nav-push">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">More <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a class="navButton" onclick={ faqButton }>General Questions</a></li>
                            <li><a class="navButton" href="/#/giveaway">Giveaways</a></li>
                            <li><a class="navButton" href="/#/account/register">Submit Project</a></li>
                            <li><a class="navButton" onclick={ benefitsButton }>Benefits</a></li>
                        </ul>
                    </li>
                    <li show={ !SignedIn }>
                        <button type="button" class="btn btn-primary btn-nav toggle-hidden navButton" data-toggle="modal" data-target="#Register"><i class="fa fa-user" aria-hidden='true'></i></span> Sign Up</button>
                    </li>
                    <li show={ SignedIn }>
                        <a href="#/account/profile" id="anchor-nav">
                        <button type="button" class="btn btn-primary btn-nav toggle-hidden navButton"><i class="fa fa-user" aria-hidden='true'></i></span> Profile</button>
                      </a>
                    </li>
                    <li show={ !SignedIn }>
                      <a class="toggle-show navButton" data-toggle="modal" data-target="#Register"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
                    </li>
                    <li  show={ SignedIn }>
                      <a href="#/account/profile" class="toggle-show navButton"><span class="glyphicon glyphicon-user"></span> Profile</a>
                    </li>
                    <li show={ !SignedIn }>
                      <a class="navButton" data-toggle="modal" data-target="#Login"><span class="glyphicon glyphicon-log-in"></span> Login</a>
                    </li>
                    <li show={ SignedIn }>
                      <a class="navButton" onclick={ krowdspaceLogout }><span class="glyphicon glyphicon-log-out"></span> Sign Out</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <script>
        this.on('mount', () => {
            $('.navbar-collapse .navButton')
                .click(function () {
                    $('.navbar-toggle:visible').click();
                })
                krowdspace.users.user().then((res) => {
                  this.user = res.data;
                  this.userkey = res.data.username;
                  this.update();
                  return krowdspace.projects.project(this.userkey);
              }).then((res) => {
                this.userProjectLevel = true;
                this.update();
              },(err) => {
                this.userProjectLevel = false;
                this.update();

              })
        });
        krowdspaceLogout() {
            krowdspace.v1.logout().then((res) => {
                        window.location.replace("/");
                    },
                    (err) => {

                    });
        };
        faqButton() {
          location.reload();
          window.location = '/#/info/faq';
        };
        benefitsButton() {
          location.reload();
          window.location = '/#/info/benefits';
        };
    </script>
</navigation>
<!-- Validated Content October 26th, 2017 -->
