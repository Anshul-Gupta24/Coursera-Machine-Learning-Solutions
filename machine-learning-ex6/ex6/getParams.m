function [C_final,sigma_final]=getParams(X,y,Xval,yval)
fprintf('getting best parameters...');
C=0.01;
C_final=C;
sigma_final=0.01;
pred_correct=0;
for i=1:10,
    sigma=0.01;
    for j=1:10,
        model= svmTrain(X, y, C, @(x1, x2) gaussianKernel(x1, x2, sigma));
        fprintf('\n');
            fprintf('\n');
            fprintf('\n');
        pred=sum(yval==svmPredict(model,Xval))
        fprintf('\n');
            fprintf('\n');
            fprintf('\n');
        if(pred>pred_correct),
            pred_correct=pred;
            fprintf('\n');
            fprintf('\n');
            fprintf('\n');
            C_final=C
            sigma_final=sigma
            fprintf('\n');
            fprintf('\n');
            fprintf('\n');
        end;
        sigma=sigma*3;
    end;
    C=C*3;
end;
