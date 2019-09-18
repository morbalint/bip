function B = random_dither(I)
   R = rand(size(I));
   B = (I + R) > 1;
end