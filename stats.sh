sum=0
count=0

while read -r salary
do
    ((sum+=salary))
    ((count++))
done < <(sed '1d; s/.*,//' employees.csv)

echo "Total Salary: $sum"

if ((count > 0)); then
    echo "Average Salary: $((sum/count))"
fi
