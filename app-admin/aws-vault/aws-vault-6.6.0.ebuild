# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit bash-completion-r1 go-module

EGO_SUM=(
	"github.com/99designs/go-keychain v0.0.0-20191008050251-8e49817e8af4"
	"github.com/99designs/go-keychain v0.0.0-20191008050251-8e49817e8af4/go.mod"
	"github.com/99designs/keyring v1.2.1"
	"github.com/99designs/keyring v1.2.1/go.mod"
	"github.com/alecthomas/kingpin v0.0.0-20200323085623-b6657d9477a6"
	"github.com/alecthomas/kingpin v0.0.0-20200323085623-b6657d9477a6/go.mod"
	"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc/go.mod"
	"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751"
	"github.com/alecthomas/template v0.0.0-20190718012654-fb15b899a751/go.mod"
	"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf/go.mod"
	"github.com/alecthomas/units v0.0.0-20211218093645-b94a6e3cc137"
	"github.com/alecthomas/units v0.0.0-20211218093645-b94a6e3cc137/go.mod"
	"github.com/aws/aws-sdk-go-v2 v1.14.0"
	"github.com/aws/aws-sdk-go-v2 v1.14.0/go.mod"
	"github.com/aws/aws-sdk-go-v2/config v1.14.0"
	"github.com/aws/aws-sdk-go-v2/config v1.14.0/go.mod"
	"github.com/aws/aws-sdk-go-v2/credentials v1.9.0"
	"github.com/aws/aws-sdk-go-v2/credentials v1.9.0/go.mod"
	"github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.11.0"
	"github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.11.0/go.mod"
	"github.com/aws/aws-sdk-go-v2/internal/configsources v1.1.5"
	"github.com/aws/aws-sdk-go-v2/internal/configsources v1.1.5/go.mod"
	"github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.3.0"
	"github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.3.0/go.mod"
	"github.com/aws/aws-sdk-go-v2/internal/ini v1.3.6"
	"github.com/aws/aws-sdk-go-v2/internal/ini v1.3.6/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/iam v1.17.0"
	"github.com/aws/aws-sdk-go-v2/service/iam v1.17.0/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.8.0"
	"github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.8.0/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/sso v1.10.0"
	"github.com/aws/aws-sdk-go-v2/service/sso v1.10.0/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/ssooidc v1.11.0"
	"github.com/aws/aws-sdk-go-v2/service/ssooidc v1.11.0/go.mod"
	"github.com/aws/aws-sdk-go-v2/service/sts v1.15.0"
	"github.com/aws/aws-sdk-go-v2/service/sts v1.15.0/go.mod"
	"github.com/aws/smithy-go v1.11.0"
	"github.com/aws/smithy-go v1.11.0/go.mod"
	"github.com/danieljoos/wincred v1.1.2"
	"github.com/danieljoos/wincred v1.1.2/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/dvsekhvalnov/jose2go v1.5.0"
	"github.com/dvsekhvalnov/jose2go v1.5.0/go.mod"
	"github.com/godbus/dbus v0.0.0-20190726142602-4481cbc300e2"
	"github.com/godbus/dbus v0.0.0-20190726142602-4481cbc300e2/go.mod"
	"github.com/google/go-cmp v0.5.7"
	"github.com/google/go-cmp v0.5.7/go.mod"
	"github.com/gsterjov/go-libsecret v0.0.0-20161001094733-a6f4afe4910c"
	"github.com/gsterjov/go-libsecret v0.0.0-20161001094733-a6f4afe4910c/go.mod"
	"github.com/jmespath/go-jmespath v0.4.0/go.mod"
	"github.com/jmespath/go-jmespath/internal/testify v1.5.1/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/mtibben/percent v0.2.1"
	"github.com/mtibben/percent v0.2.1/go.mod"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e"
	"github.com/niemeyer/pretty v0.0.0-20200227124842-a10e7caefd8e/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/skratchdot/open-golang v0.0.0-20200116055534-eef842397966"
	"github.com/skratchdot/open-golang v0.0.0-20200116055534-eef842397966/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.3.0"
	"github.com/stretchr/objx v0.3.0/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.4.0/go.mod"
	"github.com/stretchr/testify v1.7.0"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1/go.mod"
	"golang.org/x/sys v0.0.0-20210819135213-f52c844e1c1c/go.mod"
	"golang.org/x/sys v0.0.0-20220204135822-1c1b9b1eba6a"
	"golang.org/x/sys v0.0.0-20220204135822-1c1b9b1eba6a/go.mod"
	"golang.org/x/term v0.0.0-20210927222741-03fcf44c2211"
	"golang.org/x/term v0.0.0-20210927222741-03fcf44c2211/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20200902074654-038fdea0a05b"
	"gopkg.in/check.v1 v1.0.0-20200902074654-038fdea0a05b/go.mod"
	"gopkg.in/ini.v1 v1.66.4"
	"gopkg.in/ini.v1 v1.66.4/go.mod"
	"gopkg.in/yaml.v2 v2.2.2/go.mod"
	"gopkg.in/yaml.v2 v2.2.8/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b"
	"gopkg.in/yaml.v3 v3.0.0-20210107192922-496545a6307b/go.mod"
	)
go-module_set_globals

DESCRIPTION="A vault for securely storing and accessing AWS credentials"
HOMEPAGE="https://github.com/99designs/aws-vault"
SRC_URI="https://github.com/99designs/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DOCS=( {README,USAGE}.md )

src_compile() {
	go build -ldflags="-X main.Version=${PV} -s -w" -trimpath \
		-o ./bin/"${PN}" || die "build failed"
}

src_test() {
	go test -work ./... || die "test failed"
}

src_install() {
	einstalldocs
	dobin bin/aws-vault

	newinitd "${FILESDIR}"/aws-vault.initd aws-vault
	newconfd "${FILESDIR}"/aws-vault.confd aws-vault

	newbashcomp contrib/completions/bash/aws-vault.bash aws-vault
	insinto /usr/share/fish/completion
	newins contrib/completions/fish/aws-vault.fish aws-vault
	insinto /usr/share/zsh/site-functions
	newins contrib/completions/zsh/aws-vault.zsh _aws-vault
	dodoc contrib/scripts/aws-iam-{create,resync}-yubikey-mfa.sh
}

pkg_postinst() {
	if ! has_version app-admin/pass && ! has_version kde-apps/kwalletmanager \
		&& ! has_version gnome-base/gnome-keyring ; then
		einfo "You should consider to install app-admin/pass, gnome-base/gnome-keyring"
		einfo "or kde-apps/kwalletmanager to be able to use them as backends"
	fi
}
