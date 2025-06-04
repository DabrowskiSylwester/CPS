using CairoMakie
begin
    f=25
    phi=pi/4
    rozdz=1000
    krok=1/rozdz
    a=2
    x=zeros(256)
    gora=0.25+256*krok
    t=0.25:krok:gora
   # x = a.*sin.(2 .*pi.*f.*t.-phi)
      x =@. a*sin(2 *pi*f*t-phi)
    scatter(t,x)
end



