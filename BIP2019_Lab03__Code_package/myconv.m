function output_img = myconv(input_img, kernel)
    r = floor(size(kernel) ./ 2);
    img = padarray(input_img, r);
    kernel = rot90(rot90(kernel));
    output_img = input_img .* 1;
    for i=(r(1)+1):(size(input_img,1)+r(1))
       for j=(r(2)+1):(size(input_img,2)+r(2))
          output_img(i-r(1),j-r(2)) = sum( img(i-r(1):i+r(1), j-r(2):j+r(2)) .* kernel , 'all');
       end
    end
end
