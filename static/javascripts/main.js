function setSection(to, from)
{
  if (!(to.hasClass("active")))
  {  
    from.animate({"left":"-100%"},100,'linear')
    to.animate({"left":"0%"},100,'linear',function()
    {    
      from.css("left","100%");
      from.removeClass("active");    
      to.addClass("active");    
    });
  }
}
