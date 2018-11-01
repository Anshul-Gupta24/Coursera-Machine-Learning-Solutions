function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.

% Create New Figure
figure; hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

%data=load('ex2data1.txt');
x1=X(:,1);
x2=X(:,2);
%y=data(:,3);
x1_t=x1 .* y;
x2_t=x2 .* y;
plot(x1_t,x2_t,'bo');
hold  on;
x1_t2=x1-x1_t;
x2_t2=x2-x2_t;
plot(x1_t2,x2_t2,'rx');

%axis([30, 100, 30, 100])

%close;
% =========================================================================



hold off;

end
