# benchmark of web service before/after scaling

## uputa za korisnika
Skripta podrazumjeva instaliran docker docker-compose (GO) i tcpdump (sudo privilegije)

Verzije koje su korištene:
```
[j@j ~]$ docker --version
Docker version 28.3.0, build 38b7060a21
[j@j ~]$ docker-compose --version
Docker Compose version 2.38.1
[j@j ~]$ python --version
Python 3.13.5
[j@j ~]$ 
```
Skriptu prvo učinimo izvršnom:
`$ chmod +x benchmarking.sh`

Zatim ju pokrenemo:
`$ sudo ./benchmarking.sh`

> skripta zbog tcpdumpa zahtjeva povišene privilegije.

0. skripta ce izbuildati `zadatak1`

1. Izvršiti stres test i tcpdump capture. 

2. Spremiti rezultate u `./result/{report1.html dump1.pcap}`

3. Zaustaviti kontejnere. 

4. Stvoriti Swarm na osnovu slike iz `zadatak1`

5. Izvršiti stres test i tcpdump capture.

6. Spremiti rezultate u `./result/{report2.html dump.pcap}`

7. Zaustaviti i obrisati Swarm. 

Ovo je stablo projekta: 
```
├── benchmark.sh
├── py
│   ├── b1.py
│   └── b2.py
├── README.md
├── result
├── zadatak1
│   ├── app
│   │   ├── app.py
│   │   └── requirements.txt
│   ├── docker-compose.yml
│   └── Dockerfile
└── zadatak2
    └── docker-compose.yml
```

Zadani parametri su 4000 usera ukupno, 100 usera/s 20s 

![Alt text](imgs/20250707_08h21m39s_grim.png)

![Alt text](imgs/20250707_08h14m20s_grim.png)


```
[j@j benchmarkuniq]$ date
Mon Jul  7 08:00:27 AM CEST 2025
```