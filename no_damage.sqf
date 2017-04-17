private ["_id_EH","_time"];
_time = time + 10;
_id_EH = _this addEventHandler ["HandleDamage", {false}];

_this setVariable [ "EH_NODAMM",_id_EH , true];
_this allowdammage false;
_this setvectorup [0,0,1]; 
_this setPosASL [1693.06,16551.6,18.1948];
waitUntil {(time > _time)}; 

  _this removeEventHandler ["HandleDamage", (_this getVariable 'EH_NODAMM')];
  _this allowdammage true;
  
hint str _id_EH;