# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DISTUTILS_USE_SETUPTOOLS=pyproject.toml
PYTHON_COMPAT=( python3_{8,9} )
EGIT_REPO_URI="https://github.com/awslabs/aws-lambda-powertools-python.git"

inherit distutils-r1 git-r3 optfeature

DESCRIPTION="A suite of Python utilities for AWS Lambda functions"
HOMEPAGE="https://github.com/awslabs/aws-lambda-powertools-python"
SRC_URI=""

LICENSE="MIT"
SLOT="0"
KEYWORDS=""

RDEPEND="dev-python/aws-xray-sdk-python[${PYTHON_USEDEP}]
	dev-python/boto3[${PYTHON_USEDEP}]
	dev-python/fastjsonschema[${PYTHON_USEDEP}]
	dev-python/jmespath[${PYTHON_USEDEP}]"
DEPEND="${RDEPEND}"
BDEPEND="test? ( dev-python/pydantic[${PYTHON_USEDEP}]
		dev-python/pytest-asyncio[${PYTHON_USEDEP}]
		dev-python/pytest-mock[${PYTHON_USEDEP}]
		dev-python/python-email-validator[${PYTHON_USEDEP}]
		$(python_gen_cond_dep 'dev-python/typing-extensions[${PYTHON_USEDEP}]' python3_7) )"

distutils_enable_tests pytest

python_prepare_all() {
	# Disable performance test
	rm tests/performance/test_metrics.py || die "rm failed"

	distutils-r1_python_prepare_all
}

pkg_postinst() {
	optfeature "support of deep validation" dev-python/pydantic \
		dev-python/python-email-validator dev-python/typing-extensions
}
