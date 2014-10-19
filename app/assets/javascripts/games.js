updateAttribute = function(gameAttributeId, content) {
  $(".attribute_item[data-attribute-id="+gameAttributeId+"]").replaceWith(content);
};
