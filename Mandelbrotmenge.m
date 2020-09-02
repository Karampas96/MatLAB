step = 0.01;
Imax = 500;
Re_plot = -2.1:step:0.7;
Im_plot = -1.4:step:1.4;

hold on

for Re = Re_plot
    for Im = Im_plot
        c_in = Re + Im*1i;
        z = 0;
        counter = 0;
        while abs(z) < 2 && counter < Imax
            z = z^2 + c_in;
            counter = counter+1;
        end
        if counter == Imax
            inSet = true;
        else
            inSet = false;
        end
        if inSet
            plot(Re, Im, 'k.');
        end
    end
end