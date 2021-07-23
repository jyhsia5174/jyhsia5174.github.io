#! /bin/bash

today=`date +"%Y-%m-%d"`
week=`date +"%W"`

diary=${today}.md
touch ${diary}
echo "# Week ${week} (${today})" > ${diary}

exec vim ${diary}
