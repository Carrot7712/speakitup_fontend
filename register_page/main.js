$(function() {
  $("#datepicker").datepicker({
    changeMonth : true,
    changeYear : true,
    yearRange : "-150:+0"
  });
  $("#datepicker").datepicker("option", "dateFormat", "yy-mm-dd");
});

new TwCitySelector();