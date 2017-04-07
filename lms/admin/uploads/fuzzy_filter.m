clear all;

im1 =imread('pout.tif');
im2=im1;
im = imnoise(im2,'salt & pepper');
fis =readfis('C:\Users\AhsanHabib\Desktop\Fuzzy papers\final\fuzzyMem.fis');
result = im;
[H,W]=size(im);

for i = 2:H-1
    for j= 2:W-1
        p1 = im(i-1,j-1);
        p2 = im(i-1,j);
        p3 = im(i-1,j+1);
        p4 = im(i,j-1);
        p5 = im(i,j);
        p6 = im(i,j+1);
        p7 = im(i+1,j-1);
        p8 = im(i+1,j);
        p9 = im(i+1,j+1);
        im_musk = [ p1, p2, p3; p4, p5, p6; p7, p8, p9 ];
        im_musk = double(im_musk);
        med_musk = sort(im_musk);
        max_m1 = max(max(im_musk));
        min_m1 = min(min(im_musk));
        avg_m1 = (sum(sum(im_musk))/9);
        max_m = abs(max_m1-p5);
        avg_m = abs(avg_m1-p5);
        min_m = abs(min_m1-p5);
        med_m = abs(med_musk(5)-p5);
        pa_musk =[min_m; avg_m; max_m];
        pa_musk = double(pa_musk);
        pm_musk =[min_m; med_m; max_m];
        pm_musk = double(pm_musk);
        out_a = evalfis(pa_musk,fis);
        out_m = evalfis(pm_musk,fis);
        if (out_a<out_m)&&((im(i,j)>=5)&&(im(i,j)<=250))
            result(i,j) = avg_m1;
        elseif (out_a>out_m)&&((im(i,j)>=5)&&(im(i,j)<=250))
            result(i,j) = med_musk(5);
        else
            result(i,j) = med_musk(5);
        end
    end
end


for i=2:H-1
    for j=2:W-1
        if im(1,1)==0 || im(1,1)==255
            result(1,1)=im(2,2);
        end
        if im(1,W)==0 || im(1,W)==255
            result(1,W)=im(2,W-1);
        end
        if im(H,1) == 0 || im(H,1) == 255
            result(H,1) = im(H-1,2);
        end
        if im(H,W)==0 || im(H,W)==255
            result(H,W) = im(H-1,W-1);
        end
        
        if im(i,1)== 0 || im(i,1) == 255
            result(i,1) = im(i,2);
        end
        if im(i,W)== 0 || im(i,W) == 255
            result(i,W) = im(i,W-1);
        end
        if im(1,j)== 0 || im(1,j)==255
            result(1,j) = im(2,j);
        end
        if im(H,j)==0 || im(H,j)==255
            result(H,j) = im(H-1,j);
        end
        
    end
end


op12 = im;

for i = 3:H-2
    for j = 3:W-2
        if im(1,1)==0 || im(1,1)==255
            op12(1,1)=im(2,2);
        end
        if im(1,W)==0 || im(1,W)==255
            op12(1,W)=im(2,W-1);
        end
        if im(H,1) == 0 || im(H,1) == 255
            op12(H,1) = im(H-1,2);
        end
        if im(H,W)==0 || im(H,W)==255
            op12(H,W) = im(H-1,W-1);
        end
        
        if im(i,1)== 0 || im(i,1) == 255
            op12(i,1) = im(i,2);
        end
        if im(i,W)== 0 || im(i,W) == 255
            op12(i,W) = im(i,W-1);
        end
        if im(1,j)== 0 || im(1,j)==255
            op12(1,j) = im(2,j);
        end
        if im(H,j)==0 || im(H,j)==255
            op12(H,j) = im(H-1,j);
        end
        
        if (result(i,j)<=10 || result(i,j)>=245)
            p1 = result(i-2,j-2);
            p2 = result(i-2,j-1);
            p3 = result(i-2,j);
            p4 = result(i-2,j+1);
            p5 = result(i-2,j+2);
            p6 = result(i-1,j-2);
            p7 = result(i-1,j-1);
            p8 = result(i-1,j);
            p9 = result(i-1,j+1);
            p10 = result(i-1,j+2);
            p11 = result(i,j-2);
            p12 = result(i,j-1);
            p13 = result(i,j);
            p14 = result(i,j+1);
            p15 = result(i,j+2);
            p16 = result(i+1,j-2);
            p17 = result(i+1,j-1);
            p18 = result(i+1,j);
            p19 = result(i+1,j+1);
            p20 = result(i+1,j+2);
            p21 = result(i+2,j-2);
            p22 = result(i+2,j-1);
            p23 = result(i+2,j);
            p24 = result(i+2,j+1);
            p25 = result(i+2,j+2);
            
            op =  [ p1, p2, p3, p4, p5, p6, p7, p8, p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25];
            op = sort(op);
            op12(i,j) = double(op(13));
        else
            op12(i,j) = result(i,j);
        end
    end
end

op12 = uint8(op12);
result1=medfilt2(result);

avg_mux = fspecial('average', 3);
im5=imfilter(im2,avg_mux);

im4 =medfilt2(im2);
er_mine = immse(op12,im);
er_med = immse(im4,im);
er_avg = immse(im5,im);

subplot (1,2,1),imshow(im);axis image; title('Noised Image');
subplot (1,2,2),imshow(op12);axis image; title('My Solution');

if(er_avg > 0)
    psnr_avg = 10*log(255*255/er_avg) / log(10);
else
    psnr_avg = 99;
end

if(er_med > 0)
    psnr_med = 10*log(255*255/er_med) / log(10);
else
    psnr_med = 99;
end

if(er_mine > 0)
    psnr_mine = 10*log(255*255/er_mine) / log(10);
else
    psnr_mine = 99;
end