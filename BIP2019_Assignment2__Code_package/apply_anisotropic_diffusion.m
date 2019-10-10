function [out_img] = apply_anisotropic_diffusion(in_img, iternum, K, lambda, which_g)

out_img = in_img .* 1;

for i =1:iternum
   [nN,nS,nE,nW] = create_nearest_neighbor_difference_arrays(out_img);
   if(which_g == 1)
       cN = g1(abs(nN), K); 
       cS = g1(abs(nS), K);
       cE = g1(abs(nE), K);
       cW = g1(abs(nW), K);
   else
       cN = g2(abs(nN), K); 
       cS = g2(abs(nS), K);
       cE = g2(abs(nE), K);
       cW = g2(abs(nW), K);
   end
   out_img = out_img + lambda .* (cN .* nN + cS .* nS + cW .* nW + cE .* nE);
end

end