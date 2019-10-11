[message, code] = get_message('63213153');
cmc=conv(fliplr(message),code);
lag2=-(10000-1):(100-1);
stem(lag2,cmc)
xlabel('lag ')
ylabel('Amplitude')
mc=max(cmc);
for n=(1:10099)
   if cmc(n)==mc
       s=n;
    end
end
x=length(message)-s+1;
disp(['The index of first sample is ' num2str(x)])
          
            
        
    