// HACK to get around Rails hardcoded Prototype references
if (typeof Element.insert !== "function") {
    //If not, hook it onto the $().append method.
    Element.insert = function (elem, ins) {
      if (ins.bottom) {
        $('#tweets').append(ins.bottom);
        $('button.more').removeAttr('disabled');
      }
      else {
        $('button.more').hide();
        $('#tweets').append("<h1>The End</h1>");
      }
  };
}


$(document).ready(function() {
  var page = 1;
  $('button.more').click(function() {
    $(this).attr('disabled', true);
    page++;
    $.ajax({ 
      url: "/tweets/?page=" + page, 
      dataType: "script"
    });
  });
});
