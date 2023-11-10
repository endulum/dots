from powerline_shell.themes.default import DefaultColor


class Color(DefaultColor):
    """Basic theme which only uses colors in 0-15 range"""
    USERNAME_FG = 0
    USERNAME_BG = 7
    USERNAME_ROOT_BG = 1

    HOSTNAME_FG = 8
    HOSTNAME_BG = 7

    HOME_SPECIAL_DISPLAY = False
    PATH_BG = 15
    PATH_FG = 15
    CWD_FG = 0
    SEPARATOR_FG = 7

    READONLY_BG = 1
    READONLY_FG = 15

    REPO_CLEAN_BG = 2
    REPO_CLEAN_FG = 0
    REPO_DIRTY_BG = 7
    REPO_DIRTY_FG = 0

    JOBS_FG = 14
    JOBS_BG = 8

    CMD_PASSED_BG = 8
    CMD_PASSED_FG = 15
    CMD_FAILED_BG = 11
    CMD_FAILED_FG = 0

    SVN_CHANGES_BG = REPO_DIRTY_BG
    SVN_CHANGES_FG = REPO_DIRTY_FG

    #GIT_UNTRACKED_BG = 1
    #GIT_UNTRACKED_FG = 0
    #GIT_NOTSTAGED_BG = 3
    #GIT_NOTSTAGED_FG = 0

    VIRTUAL_ENV_BG = 2
    VIRTUAL_ENV_FG = 0

    AWS_PROFILE_FG = 14
    AWS_PROFILE_BG = 8

    TIME_FG = 8
    TIME_BG = 7
