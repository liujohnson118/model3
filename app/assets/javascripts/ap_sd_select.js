var sd = document.getElementById('car_sd');
if(sd){
  sd.addEventListener('change', function(){
    if( sd.checked) {
      console.log("sd is checked");
      document.getElementById('car_ap').checked=true;
    } else {
    }
  });
}