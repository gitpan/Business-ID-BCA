
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601",
    "Test::More" => "0.98"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Parse/validate BCA account number",
  "dist_author" => [
    "Steven Haryanto <stevenharyanto\@gmail.com>"
  ],
  "dist_name" => "Business-ID-BCA",
  "dist_version" => "0.02",
  "license" => "perl",
  "module_name" => "Business::ID::BCA",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Perinci::CmdLine" => 0,
    "Perinci::Sub::Gen::AccessTable" => 0,
    "perl" => "5.010001"
  },
  "script_files" => [
    "bin/list-bca-branches",
    "bin/parse-bca-account"
  ]
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
