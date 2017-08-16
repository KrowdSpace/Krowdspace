<dashboard-page>
    <style>
        @media screen and (max-width: 767px) {
            .shadow {
                -webkit-box-shadow: none;
                -moz-box-shadow: none;
            }
            .project-add-btn {
                width: 35px;
                padding: 7px 5px 9px 5px;
                display: inline-block;
                font-size: 15px;
                border: 1px solid #3f434f;
                border-left: none;
            }
            .project-add-btn:hover {
                border: 1px solid #3f434f;
                border-left: none;
            }
        }
    </style>
    <div class="row">
        <global-krowdspace-navigation></global-krowdspace-navigation>
    </div>
    <dashboard-edit-reward user = { user } project = { project }></dashboard-edit-reward>
    <div class="container dashboard">
        <div class="shadow text-left project-add-container">
            <p class="project-add-text">PROJECTS</p>
            <div class="project-yield text-center" each = {p, index in projects }>
                <project-button onclick={ makeButtF(p) } project = { p }>{ project.unique_id }</project-button>
            </div>
            <a href="/#/account/register">
            <i class="fa fa-plus project-add-btn filterdark"></i>
            </a>
        </div>
        <dashboard-project-buttons class="hidden-xs" user = { user } project = { project }></dashboard-project-buttons>
        <div class="col-sm-10 col-sm-offset-1 padding-reset">
            <div class="row dash-row no-gutter shadow">
                <dashboard-project-image show={ project } project = { project }></dashboard-project-image>
                <dashboard-user-image show={ !project } ></dashboard-user-image>
                <dashboard-project-user show={ project } index = { projectIndex + 1 } user = { user } project = { project }></dashboard-project-user>
                <dashboard-user show={ !project } user = { user }></dashboard-user>
            </div>
            <div show={ project } class="row dash-row no-gutter">
                <dashboard-project-title project= { project }> </dashboard-project-title>
                <dashboard-project-reward  project = { project }></dashboard-project-reward>
                <dashboard-project-hours project = { project }></dashboard-project-hours>
            </div>
            <div show={ project } class="row dash-row no-gutter">
                <dashboard-project-featured project={ project }> </dashboard-project-featured>
            </div>
            <div class="row dash-row no-gutter shadow">
                <dashboard-project-wysiwyg show={ project } project={ project }></dashboard-project-wysiwyg>
            </div>
            <div class="row dash-row no-gutter shadow">
                <dashboard-project-bar show={ project } project = { project }></dashboard-project-bar>
                <dashboard-user-bar show={ !project }></dashboard-user-bar>
            </div>
        </div>
    </div>
    <dashboard-featured-purchase user = { user } project = { project }></dashboard-featured-purchase>
    <dashboard-explore-purchase user = { user } project = { project }></dashboard-explore-purchase>
    <dashboard-landing-purchase user = { user } project = { project }></dashboard-landing-purchase>
    <dashboard-social-purchase user = { user } project = { project }></dashboard-social-purchase>
    <dashboard-edit-profile user = { user } project = { project }></dashboard-edit-profile>
    <dashboard-edit-reward user = { user } project = { project }></dashboard-edit-reward>
    <dashboard-delete-project user = { user } project = { project }></dashboard-delete-project>
    <dashboard-refresh-content user = { user } project = { project }></dashboard-refresh-content>
    <dashboard-image-project user = { user } project = { project }></dashboard-image-project>
    <dashboard-project-status></dashboard-project-status>
    <global-footer></global-footer>
    <script>
        this.projectNum = 0;
        this.projectIndex = 0;
        this.projects = [];
        
        this.project = null;
        this.projectIndex = 0;
        this.user = null;
        
        this.userkey = "";
        
        this.on('mount', ()=>
        {
        	krowdspace.users.user()
        	.catch(err=>err)
        	.then((res)=>
        	{	
        		this.user = res.data;
        		this.userkey = res.data.username;
        
        		return krowdspace.projects.project(this.userkey);
        	})
        	.catch((err)=>
        	{
        		if(this.user)
        		{
        			this.projects = [];
        			this.update();
        		}
        	})
        	.then((res)=>
        	{
        		if(res && res.data)
        		{
                    this.projects = res.data;
        			this.setProject(res.data[0]);
        		}
        	});
        
        });
        setProject(proj)
        {
        	this.project = proj;
        	this.projectIndex = this.projects.indexOf(proj);
        	this.update();
        }
        
        makeButtF(proj)
        {
        	let p = proj;
        	return function(e)
        	{
        		this.setProject(p);
        	};
        };
    </script>
</dashboard-page>