<admin-form-confirm>
   <div id="admin-update-confirm" class="modal container fade">
      <div class="krowdspace-modal-custom padding-reset col-lg-offset-3 col-lg-6 col-md-offset-2 col-md-8">
         <div id="modal">
            <div class="modal-box modal-max-box text-left " style="padding-bottom: 50px;">
                <p class="modal-heading">Krowdspace Projects Updated</p>
                <p class="edit-text-title">Projects have been updated and will instantly reflect the changes to Krowdspace after hitting the close button.</p>
            </div>
            <div class="text-center modal-max-box">
                <input class="landing-submit" onclick={ refreshPage } value="Close Modal" style="cursor: pointer;">
            </div>
         </div>
      </div>
   </div>
<script>
refreshPage() 
    {
        window.location.reload();
    }
</script>
</admin-form-confirm>