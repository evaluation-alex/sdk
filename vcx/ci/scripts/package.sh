#!/bin/bash
OUTPUTDIR=output
CURDIR=$(pwd)
export PATH=${PATH}:$(pwd)/vcx/ci/scripts
cd vcx/libvcx/
cargo update-version
cargo test --no-default-features --features "ci sovtoken" -- --test-threads=1
cargo build --no-default-features --features "ci sovtoken"
cargo update-so
cargo deb --no-build
cp target/debian/*.deb $CURDIR/$OUTPUTDIR
