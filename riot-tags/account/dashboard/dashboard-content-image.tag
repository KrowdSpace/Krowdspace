<dashboard-content-image>
    <div class="social-container" style="position: relative; border: 1px solid #3f434f; margin-top: 0px; height: 273px; overflow: hidden;">
        <img show={ imagebox } class="img-responsive kickstarter-image" ref="kickstarterImage" src=""/>
        <img show={ !imagebox } class="img-responsive indiegogo-image" ref="indiegogoImage" src=""/>
        <div class="clearfix"></div>
    </div>
        <script>
    this.on('mount', ()=> 
    {
        krowdspace.projects.project('Mason').then((res)=>
        {
            res.data[0].project_data = JSON.parse(res.data[0].project_data);

            let platform = res.data[0].platform;
            if (platform == 'kickstarter') 
                {
                    imagebox = true;
                    console.log('Kickstarter Image');
                    this.refs.kickstarterImage.src = res.data[0].project_data.web_data.mainImg.content;
                }else{
                    console.log('Indiegogo Image');
                    this.refs.indiegogoImage.src = res.data[0].project_data.web_data.mainImg.content;
                }; 

            this.update(res.data[0]);  
            
        },
        (err)=> 
        {
            console.log(err);
        });
    });
    </script>
</dashboard-content-image>