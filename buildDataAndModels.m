%%% Author: William Michael Mortl
%%% Feel free to use this code for educational purposes, any other use
%%%     requires citations to: NHanes study, William Michael Mortl,
%%%     Sriram Sankaranaraynan, and Fraser Cameron

%% first consolidate data
consolidate;

fprintf('\nGenerating models in R...\n');

%% build R models, use the 'unset DYLD_LIBRARY_PATH...' black magic to make 'Rscript' work!
if isunix
    system('unset DYLD_LIBRARY_PATH');
end

system('Rscript buildModels.R');

fprintf('Completed generating R models.\n');
