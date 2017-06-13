<dashboard-content-category>
    <div class="social-container" style="padding: 15px; border: 1px solid #3f434f;">
    <p class="backer-reward-text" style="margin: 0px 0px 15px 0px;">If you would like to change your project category please select from the dropdown menu and hit the refresh icon.</p>
        <form role="search">
            <div class="input-group">
                <select class="form-control remove-arrow">
                    <option value="art">Art</option>
                    <option value="design">Design</option>
                    <option value="film">Film</option>
                    <option value="food">Food</option>
                    <option value="music">Music</option>
                    <option value="photography">Photography</option>
                    <option value="technology">Technology</option>
                    <option value="videogames">Video Games</option>
                    <option value="writing">Writing</option>
                </select>
                <div class="input-group-btn">
                    <button class="btn btn-default" type="submit"><i class="fa fa-refresh fa-lg"></i></button>
                </div>
            </div>
        </form>
    </div>
<script>	
	krowdspace.v1.check().then((res)=>
		{
			logged_in = true;
			this.update();
		},
		(err)=>
		{
			window.location.replace("/#/account/login");  
		});
</script>
<script>
    this.on('mount', ()=> 
        {
            krowdspace.projects.project('Mason').then((res)=>
                {     
                    res.data[0].project_data = JSON.parse(res.data[0].project_data);
                    this.update(res.data[0]);
                    let valueCategory = res.data[0].project_data.info_data.category;
                    $('option[value=' + valueCategory + ']').prop('selected', true);
                },
            (err)=> 
                {
                    console.log(err);
                });
        });
</script>
</dashboard-content-category>