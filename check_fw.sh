# This piece of code tests to ensure that the firewall is up and ready to accept API traffic on the mgmt port.
<<<<<<< HEAD
# This piece of code tests to ensure that the firewall is up and ready to accept API traffic on the mgmt port.
=======
# Trigger devops pipeline
>>>>>>> cffdba6ea3354d09acd7aea585ec3bd61b6676b7
while true
do
  echo "$1" >> /tmp/pan.log
  resp=$(curl -vvv -s -S -g --insecure "https://$1/api/?type=op&cmd=<show><chassis-ready></chassis-ready></show>&key=LUFRPT10VGJKTEV6a0R4L1JXd0ZmbmNvdUEwa25wMlU9d0N5d292d2FXNXBBeEFBUW5pV2xoZz09")
  if [ $? -ne 0 ] ; then
    echo "Continuing.." >> pan.log
  fi
  echo "Response $resp" >> pan.log
  if [[ $resp == *"[CDATA[yes"* ]] ; then
    echo "Condition met... FW Ready"
    break
  fi
  sleep 10s
done
echo "Exiting.."
exit 0
