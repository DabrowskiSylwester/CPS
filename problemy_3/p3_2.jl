using CairoMakie
begin
    f=pi/2
    phi=pi
    rozdz=2048
    krok=1/rozdz
    a=0.25
    x=zeros(256)
    gora=10
    dol=5
    t=dol:krok:gora
   # x = a.*sin.(2 .*pi.*f.*t.-phi)
    real =@. a*cos(2 *pi*f*t-phi)
    imag =@. a*sin(2 *pi*f*t-phi)
    scatter(real,t)
    scatter(imag,t)
    fig=Figure()
    scatter(real,imag)
end



