% step
step = 0.01;
% maximal number of iterations, 500 is close to infinity
Imax = 500;

% real axis
Re_plot = -2.1:step:0.7;
% imaginary axis
Im_plot = -1.4:step:1.4;

% iterating real numbers
for Re = Re_plot
    % iterating imaginary numbers
    for Im = Im_plot
        % start from zero
        z = 0;
        counter = 0;
        while abs(z) < 2 && counter < Imax
            % vectorized
            z = z^2 + Re + Im*1i; 
            counter = counter + 1;
        end
        if counter == Imax
            inSet = true;
        else
            inSet = false;
        end
        if inSet
            % plot mandelbrot set
            plot(Re, Im, 'k.');
            hold on
        end
    end
end
