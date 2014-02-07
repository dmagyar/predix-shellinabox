# shellinabox @ CloudFoundry

## 1. Clone this repository

```bash
git clone git@github.com:trucker/shellinabox.git
```

## 2. Create `passwd` file

```bash
cd shellinabox  # cd to repository
echo -n "p@ssw0rd" |shasum -a 256 >passwd
```

## 2. Push

```bash
cf push --buildpack https://github.com/ryandotsmith/null-buildpack --command ./run
```

