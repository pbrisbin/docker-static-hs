`Dockerfile` suitable for building portable Haskell binaries.

https://www.fpcomplete.com/blog/2016/10/static-compilation-with-stack

**Note**: Your open source license must be compatible with MUSL and GMP to use
binaries built by this.

## Usage

```console
docker run --rm \
  --volume $(PWD):/src:ro \
  --volume $(PWD)/build/stack:/root/.stack \
  --volume $(PWD)/build/stack-work:/src/.stack-work \
  --volume $(PWD)/build/bin:/opt/bin \
  pbrisbin/static-hs
```

Find your executable in `build/bin`
