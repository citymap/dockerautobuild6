#FROM centos_sshdcpu:7.0
FROM citymap/konlongmoon:1.0
#FROM 0c05aekonlong:7.0 

ENV PORT 8080
#ENV DISPLAY 192.168.1.105:0
#ENV DISPLAY 10.244.0.48:0 
EXPOSE 8080
#WORKDIR /tmp/my_pygame-master
WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

#COPY . .
#WORKDIR /tmp/my_pygame-master
#ENTRYPOINT ["python"]
#CMD ["ddqn_rl_trader11.py"]
#dqn.py -m 'Train' -n 'FirstTry'
#CMD ["train.py"]
#CMD ["dqn.py","-m","'Train'","-n","'FirstTry'"]
#CMD ["dqn.py","-m","'Run'","-n","'aa0920'"]


