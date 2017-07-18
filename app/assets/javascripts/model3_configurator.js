var sd = document.getElementById('car_sd'); //Self driving checkbox
var ap = document.getElementById('car_ap'); //Enhanced autopilot checkbox
var awd = document.getElementById('car_awd'); //AWD checkbox
var base_price=document.getElementById('base_price_hidden'); //Base price
var total_tag=document.getElementById('total_price'); //Tag for showing total for current configuration
var bs = document.getElementById('battery_selector'); //battery select
var car_battery_70=document.getElementById('car_battery_70');
var car_battery_80=document.getElementById('car_battery_80');
var car_battery_60=document.getElementById('car_battery_60');
var car_wheel_18=document.getElementById('car_wheel_18');
var car_wheel_19=document.getElementById('car_wheel_19');
var ws=document.getElementById('wheel_selector'); //wheel selector

/*
* Function to update total for configuration based on options selected
* Update grand total for configuration
*/
function showOptions(){
  let price=Number(base_price.innerHTML);//starting price
  //If self driving selected
  if(sd.checked){
    price += Number(document.getElementById('sd_price_hidden').innerHTML);
  }
  //If autopilot selected
  if(ap.checked){
    price += Number(document.getElementById('ap_price_hidden').innerHTML);
  }
  //If 70kWh battery selected
  if(car_battery_70.checked){
    price += Number(document.getElementById('battery_70_price_hidden').innerHTML);
  }
  //If 80kWh battery selected
  if(car_battery_80.checked){
    price += Number(document.getElementById('battery_80_price_hidden').innerHTML);
  }
  //If AWD is selected
  if(awd.checked){
    price += Number(document.getElementById('awd_price_hidden').innerHTML);
  }
  //If 18 in wheel selected
  if(car_wheel_18.checked){
    price += Number(document.getElementById('wheel_18_price_hidden').innerHTML);
  }
  //If 19 in wheel selected
  if(car_wheel_19.checked){
    price += Number(document.getElementById('wheel_19_price_hidden').innerHTML);
  }
  //Update total on the page
  total_tag.innerHTML='$'+String(price);
}
//Event listener for self driving
if(sd){
  //Check autopilot if self driving is checked
  sd.addEventListener('change', function(){
    if( sd.checked) {
      if(!ap.checked){
        ap.checked=true;
      }
    }
    showOptions();
  });
}
//Event listener for autopilot
if(ap){
  //If autopilot is unchecked, also uncheck self driving
  ap.addEventListener('change',function(){
    if (!ap.checked){
      if(sd.checked){
        sd.checked=false;
      }
    }
    showOptions();
  })
}

//Event listener for AWD
if(awd){
  awd.addEventListener('change',function(){
    showOptions();
  })
}
//Event listener for battery selection
if(bs){
  bs.addEventListener('change',function(){
    showOptions();
  })
}

//Event listener for ws
if(ws){
  ws.addEventListener('change',function(){
    showOptions();
  })
}