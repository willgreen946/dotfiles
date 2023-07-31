# $FreeBSD$
#
HOME=/home/will
export HOME
PATH=$HOME/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:~/bin
export PATH
TERM=${TERM:-xterm}
export TERM
PAGER=less
export PAGER
SHELL=/bin/csh
export SHELL

# set ENV to a file invoked each time sh is started for interactive use.
ENV=$HOME/.shrc; export ENV

# Query terminal size; useful for serial lines.
if [ -x /usr/bin/resizewin ] ; then /usr/bin/resizewin -z ; fi
