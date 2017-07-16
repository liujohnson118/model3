var sd = document.getElementById('car_sd');
var ap = document.getElementById('car_ap');
if(sd){
  sd.addEventListener('change', function(){
    if( sd.checked) {
      document.getElementById('car_ap').checked=true;
    }
  });
}
if(ap){
  ap.addEventListener('change',function(){
    if (!ap.checked){
      document.getElementById('car_sd').checked=false;
    }
  })
}