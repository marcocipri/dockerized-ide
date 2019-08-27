docker build  --build-arg USERNAME=mcipri . -t my_ide:v0.1


docker run -itv ${PWD}/tmp:/tmp my_ide:v0.1 zsh
