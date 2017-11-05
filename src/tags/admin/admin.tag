<admin>
    <admin-page show={ !adminPage }></admin-page>
    <script>
        this.adminPage = true;

        krowdspace.users.user().then((res)=>
          {
            if(res.data.level != 4){
              window.location.replace("/#/account/profile");
              window.location.reload();
            }else{
              this.adminPage = false;
              this.update();
            }
          },
          (err)=>
          {
            window.location.replace("/#/account/profile");
          });
    </script>
</admin>
