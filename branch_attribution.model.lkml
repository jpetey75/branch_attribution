connection: "seg_branch_demo"

include: "/views/*.view.lkml"

explore: sessions {}

explore: conversion_attribution {
  label: "Conversion Attribution"
  join: conversion_event {
    sql_on: ${conversion_event.id} = ${conversion_attribution.conversion_id} ;;
    relationship: many_to_one
  }
  join: sessions {
    sql_on: ${sessions.id} = ${conversion_attribution.session_id} ;;
    relationship: many_to_one
  }
}
