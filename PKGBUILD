# Maintainer: AnzoDK <anton@rosenoern-productions.dk>
pkgname="rpautobuild"
provides=('rpautobuild')
depends=('rpcommon>=0.1.11')
pkgver=0.1.r37.3b8701f
MAJORVERSION=0.1
pkgver()
{
  cd RPAutoBuild
  printf "$MAJORVERSION.r%s.%s" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)"
}
pkgrel=1
arch=('any')
pkgdesc="Yet Another C++ Auto Build System"
url="https://github.com/AnzoDK/RPAutoBuild"
makedepends=('git')
source=("git+https://github.com/AnzoDK/RPAutoBuild.git#branch=master")
license=('BSD2')
md5sums=('SKIP')
package()
{
   cd RPAutoBuild
   (which rpauto &>/dev/null && echo "Using Old RPAuto to build RPAuto" && rpauto . --local) || (echo "No RPAuto found - Defaulting to make" && make OS=linux)
   mkdir -p "$pkgdir/usr/bin/"
   install -D ./rpauto.out "$pkgdir/usr/bin/rpauto"
   #install -D ./LICENSE "${pkgdir}"/usr/share/licenses/$pkgname/LICENSE   
}

