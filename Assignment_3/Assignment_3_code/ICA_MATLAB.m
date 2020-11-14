mu = 0; b = 1; 

S = randlpl(0,1,2,1e4);

A = rand(2);
X=A*S;

subplot(1,3,1)
plot(S(1,:),S(2,:),'.')
axis square


subplot(1,3,2)
plot(X(1,:),X(2,:),'.')
axis square

%ICA
[Sest, Aest, West] = fastica(X);

subplot(1,3,3)
plot(Sest(1,:),Sest(2,:),'.')
axis square