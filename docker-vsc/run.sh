docker run -ti -e DISPLAY -v $HOME/.Xauthority:/home/dummy/.Xauthority -v $PWD:/shared --net=host grigio/vcs
