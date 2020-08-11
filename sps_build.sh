cd dte

rust_features=""

if [ $SPS_CONFIG_qwerty ] ; then
    rust_features="$rust_features qwerty"
fi

cd hellorust
if [ $rust_features ] ; then
    cargo build --features $rust_features
else
    cargo build
fi
cd ..

mkdir -p $SPS_INSTALL_DIR/usr/bin
cp dte/target/debug/dte $SPS_INSTALL_DIR/usr/bin

