<profile-header>
        <div class="row profile-flex">
            <div id="profile-menu" class="profile-data">
                <div class="text-center quick-box">
                    <div id="quicklinks-logo">
                        <img src="/images/krowdspace-logo-white.svg" id="profile-quicklinks">
                    </div>
                    <ul id="profile-links" class="text-left">
                        <li><a href="/#/explore">Explore Projects</a></li>
                        <li show={ !projectLevel }><a href="/#/account/register">Project Submission</a></li>
                        <li show={ projectLevel }><a href="/#/account/dashboard">Project Dashboard</a></li>
                        <li><a href="/#/resource/main">Project Resources</a></li>
                        <li><a href="/#/giveaway">Krowdspace Giveaways</a></li>
                        <li><a href="#" data-toggle="modal" data-target="#Contact">Contact Krowdspace</a></li>
                    </ul>
                </div>
            </div>
            <div id="profile-center" class="profile-data-flex">
                <div class="profile-relative profile-padding">
                    <p class="profile-title">Welcome Back { userFirstName } { userLastName }!</p>

                    <div class="col-xs-6 form-group form-left profile-form-inputs">
                        <label>Email Address</label>
                        <input type="text" class="form-control" ref="userEmail" value="{ userEmail }" disabled>
                    </div>
                    <div class="col-xs-6 form-group form-right profile-form-inputs">
                        <label>Krowdspace Username</label>
                        <input type="text" class="form-control" ref="userUserName" value="{ userUserName }" disabled>
                    </div>
                    <div class="col-xs-6 form-group form-left profile-form-inputs">
                        <label>First Name</label>
                        <input type="text" class="form-control" ref="userFirstName" value="{ userFirstName }">
                    </div>
                    <div class="col-xs-6 form-group form-right profile-form-inputs">
                        <label>Last Name</label>
                        <input type="text" class="form-control" ref="userLastName" value="{ userLastName }">
                    </div>
                    <div class="col-xs-6 form-group form-left profile-form-inputs">
                        <label>Kickstarter Username</label>
                        <input type="text" class="form-control" ref="userKickstarter" value="{ userKickstarter }">
                    </div>
                    <div class="col-xs-6 form-group form-right profile-form-inputs">
                        <label>Indiegogo Username</label>
                        <input type="text" class="form-control" ref="userIndiegogo" value="{ userIndiegogo }">
                    </div>
                    <a show={ projectLevel } href="/#/account/dashboard"><button class="btn btn-primary btn-profile-dash">Project Dashboard</button></a>
                </div>
            </div>
            <div id="profile-right" class="profile-data profile-data-flex">
                <div class="profile-relative">
                    <p class="profile-title">Crowdfunding Interests</p>

                    <div class="interest-data-box">

                        <div class="interest-checks">
                            <input type="checkbox" ref="art" checked={ art } name="checkbox"> Art
                        </div>
                        <div class="interest-checks">
                            <input type="checkbox" ref="comics" checked={ comics } name="checkbox"> Comics
                        </div>
                        <div class="interest-checks">
                            <input type="checkbox" ref="design" checked={ design } name="checkbox"> Design
                        </div>
                        <div class="interest-checks">
                            <input type="checkbox" ref="fashion" checked={ fashion } name="checkbox"> Fashion
                        </div>
                        <div class="interest-checks">
                            <input type="checkbox" ref="film" checked={ film } name="checkbox"> Film
                        </div>
                        <div class="interest-checks">
                            <input type="checkbox" ref="food" checked={ food } name="checkbox"> Food
                        </div>

                        <div class="interest-checks">
                            <input type="checkbox" ref="health" checked={ health } name="checkbox"> Health
                        </div>
                        <div class="interest-checks">
                            <input type="checkbox" ref="music" checked={ music } name="checkbox"> Music
                        </div>
                        <div class="interest-checks">
                            <input type="checkbox" ref="photography" checked={ photography } name="checkbox"> Photography
                        </div>
                        <div class="interest-checks">
                            <input type="checkbox" ref="technology" checked={ technology } name="checkbox"> Technology
                        </div>

                        <div class="interest-checks">
                            <input type="checkbox" ref="publishing" checked={ publishing } name="checkbox"> Publishing
                        </div>
                        <div class="interest-checks">
                            <input type="checkbox" ref="videogames" checked={ videogames } name="checkbox"> Videogames
                        </div>
                    </div>
                    <button class="btn btn-primary btn-profile-save" onclick={ submitUser }>Save Profile</button>
                </div>
            </div>
        </div>
<script>

this.on('update', () => {

  if(!opts.user)
  return;

  this.userEmail = opts.user.email;
  this.userFirstName = opts.user.user_data.fname;
  this.userLastName = opts.user.user_data.lname;
  this.userUserName = opts.user.username;
  this.userKickstarter = opts.user.user_data.ksuser || 'N/A';
  this.userIndiegogo = opts.user.user_data.iguser || 'N/A';

  if(opts.user.user_data.interests){
    this.art = opts.user.user_data.interests.art;
    this.comics = opts.user.user_data.interests.comics;
    this.design = opts.user.user_data.interests.design;
    this.fashion = opts.user.user_data.interests.fashion;
    this.film = opts.user.user_data.interests.film;
    this.food = opts.user.user_data.interests.food;
    this.health = opts.user.user_data.interests.health;
    this.music = opts.user.user_data.interests.music;
    this.photography = opts.user.user_data.interests.photography;
    this.technology = opts.user.user_data.interests.technology;
    this.publishing = opts.user.user_data.interests.publishing;
    this.videogames = opts.user.user_data.interests.videogames;
  }

  if( this.opts.ownerlevel ){
    this.projectLevel = true;
  }else{
    this.projectLevel = false;
  }

});

submitUser(e) {
  e.preventDefault();

  krowdspace.users.user().then((res) => {
    let projectData = {
      fname: this.refs.userFirstName.value.trim(),
      lname: this.refs.userLastName.value.trim(),
      iguser: this.refs.userIndiegogo.value.trim(),
      ksuser: this.refs.userKickstarter.value.trim(),
      interests: {
        art: this.refs.art.checked,
        comics: this.refs.comics.checked,
        design: this.refs.design.checked,
        fashion: this.refs.fashion.checked,
        film: this.refs.film.checked,
        food: this.refs.food.checked,
        health: this.refs.health.checked,
        music: this.refs.music.checked,
        photography: this.refs.photography.checked,
        technology: this.refs.technology.checked,
        publishing: this.refs.publishing.checked,
        videogames: this.refs.videogames.checked,
      }

    };
    krowdspace.users.set_user(projectData).then((res) => {
      window.location.reload();

    },
    (err) => {

    });
  },
  (err) => {

  });
};
</script>
</profile-header>
<!-- Validated Content October 26th, 2017 -->
