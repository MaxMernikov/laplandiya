CKEDITOR.editorConfig = function( config ) {
  config.colorButton_colors = '28559d,be151b';



  // config.extraPlugins = 'autogrow,slider';

  /* Filebrowser routes */
  // The location of an external file browser, that should be launched when "Browse Server" button is pressed.
  config.filebrowserBrowseUrl = "/ckeditor/attachment_files";

  // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Flash dialog.
  config.filebrowserFlashBrowseUrl = "/ckeditor/attachment_files";

  // The location of a script that handles file uploads in the Flash dialog.
  config.filebrowserFlashUploadUrl = "/ckeditor/attachment_files";

  // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Link tab of Image dialog.
  config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures";

  // The location of an external file browser, that should be launched when "Browse Server" button is pressed in the Image dialog.
  config.filebrowserImageBrowseUrl = "/ckeditor/pictures";

  // The location of a script that handles file uploads in the Image dialog.
  config.filebrowserImageUploadUrl = "/ckeditor/pictures";

  // The location of a script that handles file uploads.
  config.filebrowserUploadUrl = "/ckeditor/attachment_files";

  // config.toolbar = 'email';
  // config.toolbar_email =[
  //   [ 'Undo', 'Redo' ],
  //   [ 'JustifyLeft', 'JustifyCenter', 'JustifyRight', 'JustifyBlock'],
  //   [ 'Link', 'Unlink' ],
  //   [ 'Source' ]
  // ];

  // config.toolbar = 'text_edit';
  // config.toolbar_text_edit = [
  //   ['Undo', 'Redo'],
  //   ['Bold', 'Italic', 'Underline' ],
  //   ['JustifyLeft', 'JustifyCenter', 'JustifyRight' ],
  //   ['Styles', 'Format'],
  //   [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent', '-', 'Blockquote', 'Table'],
  //   ['Link', 'Unlink', 'Iframe', '-', 'Image', 'HorizontalRule' ],
  //   ['ShowBlocks', 'RemoveFormat',  '/'],
  //   ['Source'],
  //   ['Slider']
  // ];

  config.enterMode = CKEDITOR.ENTER_BR;
  config.toolbar = [
    ['Undo', 'Redo'],
    ['Bold', 'Italic', 'Underline' ],
    ['JustifyLeft', 'JustifyCenter', 'JustifyRight' ],
    ['Format', 'TextColor'],
    [ 'NumberedList', 'BulletedList', '-', 'Outdent', 'Indent'],
    ['Link', 'Unlink'],
    ['ShowBlocks', 'RemoveFormat',  '/'],
    ['Source']
  ];


};

