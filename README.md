# Support project to test Kyp-Microservices

## Dependencies
 
  - Go ([download](https://golang.org/dl/))
  - Projects listed in [rafaeljesus@github](https://github.com/rafaeljesus?utf8=%E2%9C%93&tab=repositories&q=kyp&type=&language=)
  - Make sure that all dependencies listed in [kyp-env](https://github.com/rafaeljesus/kyp-env) are running (postgres and [nsq](http://nsq.io/deployment/docker.html)).

## How use

  - Clone this project:
```
git clone https://github.com/aalvesjr/kyp-micro.git
cd kyp-micro
```
  - Execute `./down.sh` to download all repositories listed in dependencies (the environment variable **GOPATH** should be configured);
  - Each project use some environment variables, execute `source vars` to have all variables in your test environment.

### Using Tmux 

If you usually use tmux, you could:
 
```
cp kyp.yml ~/.tmuxinator/

tmuxinator start kyp
```

And you will have one window to each project at tmux *(projects that need be compiled will have one pane with project compiled and running)*.
