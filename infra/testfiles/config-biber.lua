testfiledir = "infra/testfiles/07-bibliography"

includetests = {"*"}
excludetests = {}

supportdir = "infra/testfiles/support"
checksuppfiles = {"*.tex", "*.bib", "*.cls", "nwputhesis/*.def", "figures/*", "*.ttf"}

checkruns = 3
bibtexopts = ""

function runtest_tasks(name, run)
  if (name == "07-bibliography-bachelor"
      or name == "07-bibliography-graduate") and run == 1 then
    return bibtexexe .. " " .. name
  end
  return ""
end
