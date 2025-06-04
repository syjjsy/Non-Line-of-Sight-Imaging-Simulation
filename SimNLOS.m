close all
clear all

param.c = 3e8;
param.albedo_path=('D:\data\NLOS\fanzhaolv！！test\al\');%Albedo path
param.srcdir_name = ('D:\data\NLOS\fanzhaolv！！test\depth\');%Depth map path
param.outpath='D:\data\NLOS\fanzhaolv！！test\out\';%Output path
param.bin_resolution =32e-12;
param.width = 1.0;
param.N = 128;
param.M = 1024;
param.numpic=1;
param.range = param.M .* param.c .* param.bin_resolution;
[param.mtx, param.mtxi] = resamplingOperator(param.M);
param.psf = definePsf(param.N, param.M, param.width./param.range);
param.fpsf = fftn(param.psf);
param.FWHM = 70e-12; % Full Width Half Max parameter (70ps for Stanford data)
param.alpha = param.FWHM / 2.35 / param.bin_resolution;
param.use_albedo_img=0;%Flag for using input albedo (set to 1 to enable; set to 0 for uniform global albedo)
param.poisson_noise = 1;%Flag for adding Poisson noise
param.temporal_blur = 0;%Flag for adding temporal jitter
param.poisson_intensity=25;%Poisson noise intensity
param.Normalization=10^4 .* 20;
data_augmentation(param);

