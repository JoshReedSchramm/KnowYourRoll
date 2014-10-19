updateAttribute = function(gameAttributeId, content) {
  $(".attribute_item[data-attribute-id="+gameAttributeId+"]").replaceWith(content);
};

removeAttribute = function(gameAttributeId) {
  if ($(".attribute_item[data-attribute-id="+gameAttributeId+"]").length) {
    $(".attribute_item[data-attribute-id="+gameAttributeId+"]").remove();
    $("#modal-window").modal('hide');
  }
};

bindSubmitOnChange = function(form) {
  $('input', form).change(function(){
    $(this).parents("form").submit();
  });
};
