file(REMOVE_RECURSE
  "libmariadb.pdb"
  "libmariadb.3.dylib"
  "libmariadb.dylib"
)

# Per-language clean rules from dependency scanning.
foreach(lang C)
  include(CMakeFiles/libmariadb.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
