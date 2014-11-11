# sudo -i -u postgres
# cd /home/pti08/prog/psql/
read -p "Press any key to create table (Lab1)... " -n1 -s
echo ""
psql -a -f lab1/tree.sql 
read -p "Press any key to alter tables (Lab2)... " -n1 -s
echo ""
psql -a -f lab2/alter_tree.sql 
read -p "Press any key to insert some values (Lab3)... " -n1 -s
echo ""
psql -a -f lab3/insertion.sql 
read -p "Press any key to drop the tables (Clear)... " -n1 -s
echo ""
psql -a -f clear.sql 
echo "Thank you for attention!"
