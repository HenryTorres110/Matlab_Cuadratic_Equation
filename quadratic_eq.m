% Develop, debug, and document a program to determine the 
% roots of a quadratic equation, ax^2 + bx + c, in either a high-level 
% language or a macro language of your choice. Use a subroutine 
% procedure to compute the roots (either real or complex). 
% Perform test runs for the cases (a) a = 1, b = 6, c = 2; (b) a = 0, b =
% -4, c = 1.6; (c) a = 3, b = 2.5, c = 7

a = str2double(input("Coeficiente a: ", "s")); 
b = str2double(input("Coeficiente b: ", "s")); 
c = str2double(input("Coeficiente c: ", "s")); 

root_1 = 0;
root_2 = 0;
i1 = 0;
i2 = 0;

if (a == 0)
    if (b ~= 0)
        root_1 = -c/b;
    else
        fprintf("División entre 0!")
        return; 
    end    
else
    discr = b^2 - 4 * a * c;
    if discr >= 0
        root_1 = (-b + sqrt(discr)) / (2 * a);
        root_2 = (-b - sqrt(discr)) / (2 * a);
    else
        root_1 = -b/(2 * a);
        root_2 = root_1; 
        i1 = sqrt(abs(discr)) / (2 * a);
        i2 = -i1; 
    end
end

fprintf("Our solutions are: %4.3f + %4.3f, %4.3f + %4.3f \n", root_1, i1, root_2, i2 );

