% update D2D to current revision on github

function arUpdateD2D

global ar
ar_path = ar.info.ar_path;
[has_git, is_repo] = arCheckGit(ar_path);

flag = -1;
if arCheckVersion~=1
    if (has_git && is_repo)
        old_path = pwd;
        cd(ar_path)
        flag = system('git pull');
        cd(old_path)
    end
else
    flag = 2;
end

switch flag
    case 0
        arFprintf(2,'D2D was updated successfully\n')
    case 2
        arFprintf(2,'D2D is already up-to-date\n')
    otherwise
        arFprintf(2,'There was a problem while updating D2D\n')
end