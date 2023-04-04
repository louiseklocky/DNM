function Q=DNM_P(data,net)
M = net.M;
qs = net.qs;
k = net.k;
w = net.w;
q = net.q;
P=data';
[~,J]=size(P);
Q=zeros(J,1);
for h=1:J
    Train_in2=repmat(P(:,h),1,M);
    Y=1./(1+exp(k*(w.*Train_in2-q)));
    Z=prod(Y,1);
    V=sum(Z);
    O=1./(1+exp(k*(V-qs)));
    Q(h) = O;
end
end


