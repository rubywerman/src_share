# Description
## Purpose
shared source repo

## Files
- 001_get_multi_laads.bash
  bash script to download data

- README.md  
  Important informations. Location informaiton etc

- closed_1.txt  
  Text file which specifies dates for downloading closed cell at coast of california from [LAADS](https://ladsweb.modaps.eosdis.nasa.gov/search/history).    
  Test file contents are date and the directory informatrion on remote nasa server.
  ```
  2001-01-15,/archive/orders/501343169/
  ```
  * DO NOT make any gap between `date` and `archive directory`.

- open_3.txt 
  Same as closed_1.txt but for open cell at coast of chile. 


## Location Info

### Area and Directory
Our first 2 targets are location.1 `closed_california_1` and .3`open_chile_3`


#### location
1:-109.6, 32.6, -135.9, 3.4    
2:-72.3, -6.5, -102.3, -31.8   
3:-107.6, -4, -137.3, -34.5  
4:-15.9, 33.6, -37.5, 12.4  
5:-48.1, 42, -74.7, 23.6  
6:14.2, -19.6, -5.6, -44.9  
7:40.2, -34.3, 23.5, -49.9  
8:155.4, 32.5, 127.7, 12.4  

#### directory
1. `closed_california_1`
2. `closed_chile_2`
3. `open_chile_3`
4. `closed_east_atlantic_4`
5. `open_west_atlantic_5`
6. `closed_west_sf_6`
7. `open_south_sf_7`
8. `open_pacific_8`

