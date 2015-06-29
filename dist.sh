mode=$1
bindir=$2
if test "$mode" == ""
then
    echo "usage dist.sh <x86|x64> <bindir>"
    exit 1
fi

dst_dir=waifu2x-converter_$mode

/bin/rm -rf $dst_dir

mkdir $dst_dir

cp $bindir/waifu2x-converter-cpp.exe $dst_dir/waifu2x-converter_$mode.exe
cp $bindir/w2xc.dll $dst_dir
cp src/w2xconv.h $dst_dir
cp $bindir/w2xc.lib $dst_dir
cp $bindir/w2xcr.exe $dst_dir
cp w32-apps/install.js $dst_dir
cp w32-apps/install.bat $dst_dir
cp w32-apps/uninstall.js $dst_dir
cp w32-apps/uninstall.bat $dst_dir
cp LICENSE $dst_dir
cp dists/README.jp $dst_dir
cp dists/README.en $dst_dir

mkdir $dst_dir/models
cp models/*.json $dst_dir/models

mkdir $dst_dir/models_rgb
cp models_rgb/*.json $dst_dir/models_rgb

mkdir $dst_dir/samples
cp w32-apps/w2xc.c $dst_dir/samples
cp w32-apps/w2xcr.c $dst_dir/samples
cp w32-apps/Makefile $dst_dir/samples
