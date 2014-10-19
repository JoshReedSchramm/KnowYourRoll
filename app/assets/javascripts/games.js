updateAttribute = function(gameAttributeId, content) {
  $(".attribute_item[data-attribute-id="+gameAttributeId+"]").replaceWith(content);
};

bindSubmitOnChange = function(form) {
  console.log("binding");
  $('input', form).change(function(){
    $(this).parents("form").submit();
  });
};
