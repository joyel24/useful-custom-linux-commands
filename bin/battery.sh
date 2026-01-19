#TO RUN IT: 'while true ; do; ~/battery.sh ; sleep 0,5 ; done'
echo

if [ -f /sys/class/power_supply/BAT0/current_now ] 
then
    currentBAT0=`expr $(cat /sys/class/power_supply/BAT0/current_now) / 1000` ;
    voltageBAT0=`expr $(cat /sys/class/power_supply/BAT0/voltage_now) / 1000` ;
    capacityBAT0=`expr $(cat /sys/class/power_supply/BAT0/charge_now) / 1000`
    maxCapacityBAT0=`expr $(cat /sys/class/power_supply/BAT0/charge_full) / 1000`

    if [[ $currentBAT0 -eq 1 ]]
    then
        currentBAT0=0 #; fi
    fi
#    else
        powerBAT0=$(($currentBAT0*$voltageBAT0/1000))
        energyBAT0=$(($capacityBAT0*11400/1000))
        maxEnergyBAT0=$(($maxCapacityBAT0*11400/1000))
        echo BAT0: $currentBAT0'mA' $voltageBAT0'mV' $powerBAT0'mW' $capacityBAT0'/'$maxCapacityBAT0'mAh' $energyBAT0'/'$maxEnergyBAT0'Wh' $(cat /sys/class/power_supply/BAT0/capacity)'%'
#    fi
fi

if [ -f /sys/class/power_supply/BAT1/current_now ] 
then
    currentBAT1=`expr $(cat /sys/class/power_supply/BAT1/current_now) / 1000`
    voltageBAT1=`expr $(cat /sys/class/power_supply/BAT1/voltage_now) / 1000`
    capacityBAT1=`expr $(cat /sys/class/power_supply/BAT1/charge_now) / 1000`
    maxCapacityBAT1=`expr $(cat /sys/class/power_supply/BAT1/charge_full) / 1000`

    if [[ $currentBAT1 -eq 1 ]]
    then 
        currentBAT1=0 #; fi
    fi
#    else
        powerBAT1=$(($currentBAT1*$voltageBAT1/1000))
        energyBAT1=$(($capacityBAT1*11400/1000))
        maxEnergyBAT1=$(($maxCapacityBAT1*11400/1000))
        echo BAT1: $currentBAT1'mA' $voltageBAT1'mV' $powerBAT1'mW' $capacityBAT1'/'$maxCapacityBAT1'mAh' $energyBAT1'/'$maxEnergyBAT1'Wh' $(cat /sys/class/power_supply/BAT1/capacity)'%'
#    fi
fi

sleep 1
