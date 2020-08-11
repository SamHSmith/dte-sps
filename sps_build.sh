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

mkdir -p $SPS_INSTALL_DIR/usr/bin
cp target/debug/dte $SPU_INSTALL_DIR/usr/bin

