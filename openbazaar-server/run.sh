sudo docker run --rm -v $PWD/vol_observer:/home/openbazaar/.openbazaar -p 18469:18469 -p 18466:18466 -p 18470:18470 --name observer -e flags="-a 0.0.0.0" -ti observer
