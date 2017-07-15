puts "ENTER THE SIZE OF THE SQUARE"
a=gets
b= Array.new(a.to_i){Array.new(a.to_i)}

for i in 0...(a.to_i)
	for j in 0...(a.to_i)
		b[i][j]=" "
	end
end







def printBoard b , a ,check
for i in 0...(a.to_i)
	for j in 0...(a.to_i)
		print b[i][j].to_s+"|"
	end
	puts "\n"
	for j in 0...(a.to_i)
		print "--"
	end
	puts "\n"
end
return !check
end






count=printBoard b , a , false





def chk b , a
for i in 0...(a.to_i)
	for j in 0...(a.to_i)
		if b[j][i].to_s.eql?(" ")
			return true
		end
	end
end
return false
end






def win b , c , a	
   for i in 0...(a.to_i)
   	flag=true
	for j in 0...(a.to_i)
		if b[i][j].to_s.eql?(" ") || b[i][j].to_s.eql?(c)==false
			flag=false
			break;
		end
	end
	if flag
		return false
	end
   end


   for i in 0...(a.to_i)
   flag=true
	for j in 0...(a.to_i)
		if b[j][i].to_s.eql?(" ")|| b[j][i].to_s.eql?(c)==false
			flag=false
		end
		if !flag
			break;
		end
	end
	if flag
		return false
	end
   end


   for i in 0...(a.to_i)
   	  flag=true
	for j in 0...(a.to_i)
		if (i==j)
			if b[i][j].to_s.eql?(c)==false || b[i][j].to_s.eql?(" ")
			flag=false
			break;
		end
		end
		end
		if !flag
			return true
	end
	end
	if flag
		return false
   end
 

   for i in 0...(a.to_i)
   	  flag=true
	for j in 0...(a.to_i)
		if (i+j==(a.to_i)-1)
			if b[i][j].to_s.eql?(c)==false || b[i][j].to_s.eql?(" ")
			puts i.to_s+" "+j.to_s
			flag=false
			break;
		   end
		end
	end
		if !flag
			return true
	    end
	if flag
		return false
    end
    end
   return true
end






my_bool=true
while my_bool
	if count
		puts "\n"
		puts "1... player turn"
		d=gets
	    e=gets
	    if (d.to_i)>=(a.to_i) || (e.to_i)>=(a.to_i)
	    	puts "Wrong choice"
	     elsif b[d.to_i][e.to_i]!=" "
	    	puts "Wrong choice"
	    else 
	b[d.to_i][e.to_i]="0"
	count=printBoard(b,a,count)
	my_bool=win(b,"0",a)
	if !my_bool
		puts "1 win"
		break
	end
	my_bool=chk(b,a)
	if !my_bool
		puts "draw"
		break
	end
end
else 
	puts "\n"
	puts "2... player turn"
        d=gets
	    e=gets
	    if (d.to_i)>=(a.to_i) || (e.to_i)>=(a.to_i)
	    	puts "Wrong choice"
	     elsif b[d.to_i][e.to_i]!=" "
	    	puts "Wrong choice"
	    else
	b[d.to_i][e.to_i]="X"
	count=printBoard(b,a,count)
	my_bool=win(b,"X",a)
	if !my_bool
		puts "2 win"
		break
	end
	my_bool=chk(b,a)
	if !my_bool
		puts "draw"
		break
	end
end
end
end


