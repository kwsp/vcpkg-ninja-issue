set -o xtrace

# Test cmake and ninja exists
which cmake
cmake --version

which ninja
ninja --version

# Build works
cmake -Bbuild -S. -GNinja

# Build with VCPKG toolchain
# CMake fails to find ninja when building dependencies
cmake -Bbuild_vcpkg -S. -GNinja -DCMAKE_TOOLCHAIN_FILE="$VCPKG_ROOT/scripts/buildsystems/vcpkg.cmake"

