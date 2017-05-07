<modal-edit-image>
    <div class="krowdspace-modal modal fade" id="modal-edit" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="close-modal" data-dismiss="modal">
                    <div class="lr">
                        <div class="rl">
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="row"> 
                        <div class="col-sm-6 col-sm-offset-3 shadow user-modal text-justify" style="padding-top:25px;">
						<p>EDIT CAMPAIGN IMAGE</p>
							<div class="imageupload panel panel-default">
                                    <div class="panel-image clearfix no-gutter">
                                        <p class="text-left image-upload-text">Please upload a project image that represents your campaign as a whole. All images must be 1225 x 700px.</p>
                                    </div>
                                    <div class="file-tab panel-body image-upload">
                                    <label class="btn btn-default btn-file">
                                        <span>Upload From Desktop</span>
                                        <!-- The file is stored here. -->
                                        <input type="file" name="image-file" class="thumbnail-tooltip" id="fileUpload" required="required">
                                    </label>
                                    <button type="button" class="btn btn-default">Remove</button>
                                    <button type="button" class="btn btn-default" style="display: inline-block; float:right;">Save</button>
                                </div>
                                    <div class="url-tab panel-body">
                                        <div class="input-group">
                                            <input type="text" class="form-control hasclear placeholder-color" placeholder="Image URL">
                                            <div class="input-group-btn">
                                                <button type="button" class="btn btn-default">Submit</button>
                                            </div>
                                        </div>
                                        <!-- The URL is stored here. -->
                                        <input type="hidden" name="image-url" required="required">
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        this.on('mount', function() {
          var $imageupload = $('.imageupload');
            $imageupload.imageupload();
            $('#imageupload-disable').on('click', function() {
                $imageupload.imageupload('disable');
                $(this).blur();
            })
            $('#imageupload-enable').on('click', function() {
                $imageupload.imageupload('enable');
                $(this).blur();
            })
            $('#imageupload-reset').on('click', function() {
                $imageupload.imageupload('reset');
                $(this).blur();
            });
        });
    </script>
</modal-edit-image>