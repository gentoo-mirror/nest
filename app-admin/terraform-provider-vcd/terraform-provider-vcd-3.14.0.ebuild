# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit go-module readme.gentoo-r1

EGO_SUM=(
	"dario.cat/mergo v1.0.0"
	"dario.cat/mergo v1.0.0/go.mod"
	"github.com/Microsoft/go-winio v0.6.1"
	"github.com/Microsoft/go-winio v0.6.1/go.mod"
	"github.com/ProtonMail/go-crypto v1.1.0-alpha.2"
	"github.com/ProtonMail/go-crypto v1.1.0-alpha.2/go.mod"
	"github.com/agext/levenshtein v1.2.2"
	"github.com/agext/levenshtein v1.2.2/go.mod"
	"github.com/apparentlymart/go-textseg/v12 v12.0.0/go.mod"
	"github.com/apparentlymart/go-textseg/v15 v15.0.0"
	"github.com/apparentlymart/go-textseg/v15 v15.0.0/go.mod"
	"github.com/araddon/dateparse v0.0.0-20190622164848-0fb0a474d195"
	"github.com/araddon/dateparse v0.0.0-20190622164848-0fb0a474d195/go.mod"
	"github.com/bufbuild/protocompile v0.4.0"
	"github.com/bufbuild/protocompile v0.4.0/go.mod"
	"github.com/cloudflare/circl v1.3.7"
	"github.com/cloudflare/circl v1.3.7/go.mod"
	"github.com/creack/pty v1.1.9/go.mod"
	"github.com/cyphar/filepath-securejoin v0.2.4"
	"github.com/cyphar/filepath-securejoin v0.2.4/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/emirpasic/gods v1.18.1"
	"github.com/emirpasic/gods v1.18.1/go.mod"
	"github.com/fatih/color v1.13.0/go.mod"
	"github.com/fatih/color v1.16.0"
	"github.com/fatih/color v1.16.0/go.mod"
	"github.com/go-git/gcfg v1.5.1-0.20230307220236-3a3c6141e376"
	"github.com/go-git/gcfg v1.5.1-0.20230307220236-3a3c6141e376/go.mod"
	"github.com/go-git/go-billy/v5 v5.5.0"
	"github.com/go-git/go-billy/v5 v5.5.0/go.mod"
	"github.com/go-git/go-git/v5 v5.12.0"
	"github.com/go-git/go-git/v5 v5.12.0/go.mod"
	"github.com/go-test/deep v1.0.3"
	"github.com/go-test/deep v1.0.3/go.mod"
	"github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da"
	"github.com/golang/groupcache v0.0.0-20210331224755-41bb18bfe9da/go.mod"
	"github.com/golang/protobuf v1.1.0/go.mod"
	"github.com/golang/protobuf v1.5.0/go.mod"
	"github.com/golang/protobuf v1.5.2/go.mod"
	"github.com/golang/protobuf v1.5.4"
	"github.com/golang/protobuf v1.5.4/go.mod"
	"github.com/google/go-cmp v0.3.1/go.mod"
	"github.com/google/go-cmp v0.5.5/go.mod"
	"github.com/google/go-cmp v0.5.9/go.mod"
	"github.com/google/go-cmp v0.6.0"
	"github.com/google/go-cmp v0.6.0/go.mod"
	"github.com/google/uuid v1.6.0"
	"github.com/google/uuid v1.6.0/go.mod"
	"github.com/hashicorp/errwrap v1.0.0"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/go-checkpoint v0.5.0"
	"github.com/hashicorp/go-checkpoint v0.5.0/go.mod"
	"github.com/hashicorp/go-cleanhttp v0.5.0/go.mod"
	"github.com/hashicorp/go-cleanhttp v0.5.2"
	"github.com/hashicorp/go-cleanhttp v0.5.2/go.mod"
	"github.com/hashicorp/go-cty v1.4.1-0.20200414143053-d3edf31b6320"
	"github.com/hashicorp/go-cty v1.4.1-0.20200414143053-d3edf31b6320/go.mod"
	"github.com/hashicorp/go-hclog v1.5.0"
	"github.com/hashicorp/go-hclog v1.5.0/go.mod"
	"github.com/hashicorp/go-multierror v1.1.1"
	"github.com/hashicorp/go-multierror v1.1.1/go.mod"
	"github.com/hashicorp/go-plugin v1.6.0"
	"github.com/hashicorp/go-plugin v1.6.0/go.mod"
	"github.com/hashicorp/go-uuid v1.0.0/go.mod"
	"github.com/hashicorp/go-uuid v1.0.3"
	"github.com/hashicorp/go-uuid v1.0.3/go.mod"
	"github.com/hashicorp/go-version v1.6.0"
	"github.com/hashicorp/go-version v1.6.0/go.mod"
	"github.com/hashicorp/hc-install v0.6.4"
	"github.com/hashicorp/hc-install v0.6.4/go.mod"
	"github.com/hashicorp/hcl/v2 v2.20.1"
	"github.com/hashicorp/hcl/v2 v2.20.1/go.mod"
	"github.com/hashicorp/logutils v1.0.0"
	"github.com/hashicorp/logutils v1.0.0/go.mod"
	"github.com/hashicorp/terraform-exec v0.21.0"
	"github.com/hashicorp/terraform-exec v0.21.0/go.mod"
	"github.com/hashicorp/terraform-json v0.22.1"
	"github.com/hashicorp/terraform-json v0.22.1/go.mod"
	"github.com/hashicorp/terraform-plugin-go v0.23.0"
	"github.com/hashicorp/terraform-plugin-go v0.23.0/go.mod"
	"github.com/hashicorp/terraform-plugin-log v0.9.0"
	"github.com/hashicorp/terraform-plugin-log v0.9.0/go.mod"
	"github.com/hashicorp/terraform-plugin-sdk/v2 v2.34.0"
	"github.com/hashicorp/terraform-plugin-sdk/v2 v2.34.0/go.mod"
	"github.com/hashicorp/terraform-registry-address v0.2.3"
	"github.com/hashicorp/terraform-registry-address v0.2.3/go.mod"
	"github.com/hashicorp/terraform-svchost v0.1.1"
	"github.com/hashicorp/terraform-svchost v0.1.1/go.mod"
	"github.com/hashicorp/yamux v0.1.1"
	"github.com/hashicorp/yamux v0.1.1/go.mod"
	"github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99"
	"github.com/jbenet/go-context v0.0.0-20150711004518-d14ea06fba99/go.mod"
	"github.com/jhump/protoreflect v1.15.1"
	"github.com/jhump/protoreflect v1.15.1/go.mod"
	"github.com/kevinburke/ssh_config v1.2.0"
	"github.com/kevinburke/ssh_config v1.2.0/go.mod"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pretty v0.2.1/go.mod"
	"github.com/kr/pretty v0.3.1"
	"github.com/kr/pretty v0.3.1/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/kr/text v0.2.0"
	"github.com/kr/text v0.2.0/go.mod"
	"github.com/mattn/go-colorable v0.1.9/go.mod"
	"github.com/mattn/go-colorable v0.1.12/go.mod"
	"github.com/mattn/go-colorable v0.1.13"
	"github.com/mattn/go-colorable v0.1.13/go.mod"
	"github.com/mattn/go-isatty v0.0.12/go.mod"
	"github.com/mattn/go-isatty v0.0.14/go.mod"
	"github.com/mattn/go-isatty v0.0.16/go.mod"
	"github.com/mattn/go-isatty v0.0.20"
	"github.com/mattn/go-isatty v0.0.20/go.mod"
	"github.com/mitchellh/copystructure v1.2.0"
	"github.com/mitchellh/copystructure v1.2.0/go.mod"
	"github.com/mitchellh/go-testing-interface v1.14.1"
	"github.com/mitchellh/go-testing-interface v1.14.1/go.mod"
	"github.com/mitchellh/go-wordwrap v1.0.0"
	"github.com/mitchellh/go-wordwrap v1.0.0/go.mod"
	"github.com/mitchellh/mapstructure v1.5.0"
	"github.com/mitchellh/mapstructure v1.5.0/go.mod"
	"github.com/mitchellh/reflectwalk v1.0.2"
	"github.com/mitchellh/reflectwalk v1.0.2/go.mod"
	"github.com/oklog/run v1.0.0"
	"github.com/oklog/run v1.0.0/go.mod"
	"github.com/peterhellberg/link v1.1.0"
	"github.com/peterhellberg/link v1.1.0/go.mod"
	"github.com/pjbgf/sha1cd v0.3.0"
	"github.com/pjbgf/sha1cd v0.3.0/go.mod"
	"github.com/pkg/diff v0.0.0-20210226163009-20ebb0f2a09e/go.mod"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/rogpeppe/go-internal v1.9.0/go.mod"
	"github.com/rogpeppe/go-internal v1.11.0"
	"github.com/rogpeppe/go-internal v1.11.0/go.mod"
	"github.com/sergi/go-diff v1.3.2-0.20230802210424-5b0b94c5c0d3"
	"github.com/sergi/go-diff v1.3.2-0.20230802210424-5b0b94c5c0d3/go.mod"
	"github.com/skeema/knownhosts v1.2.2"
	"github.com/skeema/knownhosts v1.2.2/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/testify v1.7.2/go.mod"
	"github.com/stretchr/testify v1.9.0"
	"github.com/stretchr/testify v1.9.0/go.mod"
	"github.com/vmihailenco/msgpack v3.3.3+incompatible/go.mod"
	"github.com/vmihailenco/msgpack v4.0.4+incompatible"
	"github.com/vmihailenco/msgpack v4.0.4+incompatible/go.mod"
	"github.com/vmihailenco/msgpack/v5 v5.4.1"
	"github.com/vmihailenco/msgpack/v5 v5.4.1/go.mod"
	"github.com/vmihailenco/tagparser/v2 v2.0.0"
	"github.com/vmihailenco/tagparser/v2 v2.0.0/go.mod"
	"github.com/vmware/go-vcloud-director/v2 v2.26.0"
	"github.com/vmware/go-vcloud-director/v2 v2.26.0/go.mod"
	"github.com/xanzy/ssh-agent v0.3.3"
	"github.com/xanzy/ssh-agent v0.3.3/go.mod"
	"github.com/yuin/goldmark v1.4.13/go.mod"
	"github.com/zclconf/go-cty v1.14.4"
	"github.com/zclconf/go-cty v1.14.4/go.mod"
	"github.com/zclconf/go-cty-debug v0.0.0-20191215020915-b22d67c1ba0b"
	"github.com/zclconf/go-cty-debug v0.0.0-20191215020915-b22d67c1ba0b/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20210921155107-089bfa567519/go.mod"
	"golang.org/x/crypto v0.23.0"
	"golang.org/x/crypto v0.23.0/go.mod"
	"golang.org/x/exp v0.0.0-20240119083558-1b970713d09a"
	"golang.org/x/exp v0.0.0-20240119083558-1b970713d09a/go.mod"
	"golang.org/x/mod v0.6.0-dev.0.20220419223038-86c51ed26bb4/go.mod"
	"golang.org/x/mod v0.16.0"
	"golang.org/x/mod v0.16.0/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/net v0.0.0-20210226172049-e18ecbb05110/go.mod"
	"golang.org/x/net v0.0.0-20220722155237-a158d28d115b/go.mod"
	"golang.org/x/net v0.23.0"
	"golang.org/x/net v0.23.0/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sync v0.0.0-20220722155255-886fb9371eb4/go.mod"
	"golang.org/x/sync v0.6.0"
	"golang.org/x/sync v0.6.0/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20200116001909-b77594299b42/go.mod"
	"golang.org/x/sys v0.0.0-20200223170610-d5e6a3e2c0ae/go.mod"
	"golang.org/x/sys v0.0.0-20201119102817-f84b799fce68/go.mod"
	"golang.org/x/sys v0.0.0-20210615035016-665e8c7367d1/go.mod"
	"golang.org/x/sys v0.0.0-20210630005230-0f9fa26af87c/go.mod"
	"golang.org/x/sys v0.0.0-20210927094055-39ccf1dd6fa6/go.mod"
	"golang.org/x/sys v0.0.0-20220503163025-988cb79eb6c6/go.mod"
	"golang.org/x/sys v0.0.0-20220520151302-bc2c85ada10a/go.mod"
	"golang.org/x/sys v0.0.0-20220722155257-8c9f86f7a55f/go.mod"
	"golang.org/x/sys v0.0.0-20220811171246-fbc7d0a398ab/go.mod"
	"golang.org/x/sys v0.6.0/go.mod"
	"golang.org/x/sys v0.20.0"
	"golang.org/x/sys v0.20.0/go.mod"
	"golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod"
	"golang.org/x/term v0.0.0-20210927222741-03fcf44c2211/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/text v0.3.3/go.mod"
	"golang.org/x/text v0.3.7/go.mod"
	"golang.org/x/text v0.3.8/go.mod"
	"golang.org/x/text v0.15.0"
	"golang.org/x/text v0.15.0/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20191119224855-298f0cb1881e/go.mod"
	"golang.org/x/tools v0.1.12/go.mod"
	"golang.org/x/tools v0.17.0"
	"golang.org/x/tools v0.17.0/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.6.8"
	"google.golang.org/appengine v1.6.8/go.mod"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240227224415-6ceb2ff114de"
	"google.golang.org/genproto/googleapis/rpc v0.0.0-20240227224415-6ceb2ff114de/go.mod"
	"google.golang.org/grpc v1.63.2"
	"google.golang.org/grpc v1.63.2/go.mod"
	"google.golang.org/protobuf v1.26.0-rc.1/go.mod"
	"google.golang.org/protobuf v1.26.0/go.mod"
	"google.golang.org/protobuf v1.34.0"
	"google.golang.org/protobuf v1.34.0/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c"
	"gopkg.in/check.v1 v1.0.0-20201130134442-10cb98267c6c/go.mod"
	"gopkg.in/warnings.v0 v0.1.2"
	"gopkg.in/warnings.v0 v0.1.2/go.mod"
	"gopkg.in/yaml.v2 v2.4.0"
	"gopkg.in/yaml.v2 v2.4.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.1"
	"gopkg.in/yaml.v3 v3.0.1/go.mod"
	"sigs.k8s.io/yaml v1.4.0"
	"sigs.k8s.io/yaml v1.4.0/go.mod"
	)
go-module_set_globals

DESCRIPTION="Terraform VMware vCloud Director provider"
HOMEPAGE="https://registry.terraform.io/providers/vmware/vcd/latest/docs"
SRC_URI="https://github.com/vmware/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz
	${EGO_SUM_SRC_URI}"

LICENSE="MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
RESTRICT="mirror test"

RDEPEND="app-admin/terraform"

DOCS=( {CHANGELOG,README,TROUBLESHOOTING}.md )

DOC_CONTENTS="You should create a symlink to\\n
/usr/share/terraform-provider-vcd/terraform-provider-vcd\\n
in ~/.terraform.d/plugins\\n"

src_compile() {
	LDFLAGS="-X github.com/vmware/terraform-provider-vcd/v3/vcd.BuildVersion=${PV}"

	ego build -ldflags "${LDFLAGS}"
}

src_install() {
	einstalldocs
	exeinto usr/share/terraform-provider-vcd
	doexe terraform-provider-vcd
	readme.gentoo_create_doc
}

pkg_postinst() {
	readme.gentoo_print_elog
}
