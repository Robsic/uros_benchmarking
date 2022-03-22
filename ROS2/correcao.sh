n=1

while [ $n -le 20 ]
do
    ./lat < ping_pong_benchmarking/data/ensaios/$1/$2/$n/pingpong_data.txt > ping_pong_benchmarking/data/ensaios/$1/$2/$n/pingpong_latency.txt
    

    n=$(( n+1 ))
done