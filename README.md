# shellinabox @ CloudFoundry

## 1. Create `passwd` file

```
echo -n "p@ssw0rd" |shasum -a 256 >passwd
```

## 2. Push

```
cf push --buildpack https://github.com/ryandotsmith/null-buildpack --command ./run
```

