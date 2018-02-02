
%...................Use Trained Model to pridict the result of new data.....................

yfit = trainedModel_brightness.predictFcn(r2ltest1);
x = yfit(1);
disp(x);

%..................Use the obtained result to change the system property........................... 

for i=1:30 
    
    if(yfit(i) == 'r2l')
    
    disp('brightness_down')
    [status,cmdout]=dos("nircmd.exe changebrightness -10");
    % NirCmd is a command-line utility that allows you to alter some system settings.
    else
    disp('brightness_up')    
    [status,cmdout]=dos("nircmd.exe changebrightness 10");
    end
           
end
