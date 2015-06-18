clc
clear

n = 3
A = [9,5,3;3,2,1;5,6,1]
B = [32;10;5]
k = 1

for i = 1 : n

	L(i,1) = A(i,1);

end

for j = 2 : n

	U(1,j) = A(1,j)/L(1,1);

end


for k = 2 : n - 1
	for i = k : n

		somatorio = 0;
		for r = 1 : k - 1
		
			somatorio += L(i,r) * U(r,k);
	
		end
		L(i,k) = A(i,k) - somatorio;
	
	end
	for j = k + 1 : n

		somatorio = 0;
		for r = 1 : k - 1

		somatorio += L(k,r) * U(r,j);		

		end	
		U(k,j) = ((A(k,j)- somatorio)/L(k,k));

	end
end



for k = n 
        for i = k : n

                somatorio = 0;
                for r = 1 : k - 1

                        somatorio += L(i,r) * U(r,k);

                end
                L(i,k) = A(i,k) - somatorio;

        end

end


for i = 1 : n

	U(i,i) = 1;

end

L
U

C(1) = B(1) / L(1,1);
for i = 2 : n
	somatorio = 0;
	for j = 1 : i - 1

	somatorio += L(i,j) *C(j);	

	end
	C(i) = (B(i) - somatorio)/L(i,i);

end
C

X(n) = C(n);
for i = n - 1 : -1: 1
	somatorio = 0;
	for j = i + 1 : n
		somatorio = U(i,j) * X(j);
	end
	X(i) = C(i) - somatorio;
end
X

