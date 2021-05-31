# SSH-dockerfile

This Dockerfile creates a SSH service on top of Debian GNU/Linux inside a Docker Container.

- Default `root`′s password is `TrustNo1`.
- Default `user`′s password is `DivBy0`.

See [this](https://dev.to/s1ntaxe770r/how-to-setup-ssh-within-a-docker-container-i5i) blog article for why you′d want to do this.

## Building the image

`docker build --tag debianssh-server .`

## Runing the image

`docker run --detach --publish 2222:22 debianssh-server`

## License

> Copying and distribution of this file, with or without modification,  
> are permitted in any medium without royalty provided the copyright  
> notice and this notice are preserved.  This file is offered as-is,  
> without any warranty.
