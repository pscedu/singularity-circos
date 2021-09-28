--
-- circos 0.69-9 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Biological Sciences"
-- "Description: Circos is a software package for visualizing data and information."
-- "Keywords: singularity bioinformatics"

whatis("Name: circos")
whatis("Version: 0.69-9")
whatis("Category: Biological Sciences")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: Circos is a software package for visualizing data and information.")

help([[
Circos is a software package for visualizing data and information.

To load the module type

> module load circos/0.69-9

To unload the module type

> module unload circos/0.69-9

Tools included in this module are

* circos
]])

local package = "circos"
local version = "0.69-9"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
