require 'csv'
require "json"

testtaker_file_path = "public/testtakers"
testtakers_csv = CSV.parse(File.read("#{testtaker_file_path}.csv"), headers: true).map(&:to_h)
testtakers_json = JSON.parse(File.read("#{testtaker_file_path}.json"))

TestTaker.insert_all(testtakers_csv)
# TestTaker.upsert_all(testtakers_json)
