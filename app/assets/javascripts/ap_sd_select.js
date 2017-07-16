var sd = document.getElementById('car_sd'); //Self driving checkbox
var ap = document.getElementById('car_ap'); //Enhanced autopilot checkbox

if(sd){
  //Check autopilot if self driving is checked
  sd.addEventListener('change', function(){
    if( sd.checked) {
      document.getElementById('car_ap').checked=true;
    }
  });
}
if(ap){
  //If autopilot is unchecked, also uncheck self driving
  ap.addEventListener('change',function(){
    if (!ap.checked){
      document.getElementById('car_sd').checked=false;
    }
  })
}