# Summary
This repository contains everything required to start a local BRouter/BRouter-Web instance.

## Usage

### Download preprocessed OpenStreetMap Segments
For routing BRouter uses preprocessed tiles as .rd5 files. These are donwloaded using the `download_segments.sh` script from [Marcus Jaschens repository](https://bikerouter.de/segments/). See also [here](https://www.marcusjaschen.de/blog/2020/brouter-segments-rd5-download/). The provided script downloads all segments for Europe. If you want to run an instance for seperate parts of the world you need to adapt the two for loops. In order to run the script simply execute

```>./download_segments.sh```

### Adapt BRouter-Web config
The config files (`config.js` and `keys.js` in the `/config` folder) contain a base configuration for local use without external API-Keys. If you e.g. want to add different routing profiles you would need to adapt the `config.js` file.

### Build and run the docker containers
Once you have finished downloading the OSM segments and adapted the config files you can build the docker images and run the containers using

```
>docker-compose build
>docker-compose up -d
```

Once the containers are running the BRouter routing API is available on port 17777 and the Brouter-Web interface on port 8080