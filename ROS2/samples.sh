n=1

echo "sh:> Iniciando ensaio de teste"
ros2 run ping_pong_benchmarking $1
echo "sh:> Ensaio de teste finalizado"


mkdir ping_pong_benchmarking/data/ensaios/$2
mkdir ping_pong_benchmarking/data/ensaios/$2/$3

while [ $n -le 20 ]
do
    echo "sh:> Ensaio ${n} iniciando"
	mkdir ping_pong_benchmarking/data/ensaios/$2/$3/$n

    ros2 run ping_pong_benchmarking $1

	cp ping_pong_benchmarking/data/$2/pingpong_data*.txt ping_pong_benchmarking/data/ensaios/$2/$3/$n
	cp ping_pong_benchmarking/data/$2/pingpong_results*.txt ping_pong_benchmarking/data/ensaios/$2/$3/$n
    n=$(( n+1 ))

    sleep 3
done

echo "Ensaio finalizado"