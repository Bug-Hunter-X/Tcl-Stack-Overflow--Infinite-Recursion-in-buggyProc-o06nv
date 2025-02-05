proc buggyProc {x} {
  if {$x == 0} {
    return 0
  } elseif {$x == 1} {
    return 1
  } else {
    return [expr {$x / [buggyProc [expr {$x - 1}]]}]
  }
}
puts [buggyProc 5] 