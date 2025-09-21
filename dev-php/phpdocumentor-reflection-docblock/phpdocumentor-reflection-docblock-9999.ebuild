# Copyright 1999-2025 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit git-r3

DESCRIPTION="phpDocumentor ReflectionDocBlock component"
HOMEPAGE="https://github.com/phpDocumentor/ReflectionDocBlock"
EGIT_REPO_URI="https://github.com/phpDocumentor/ReflectionDocBlock.git"

LICENSE="MIT"
SLOT="0"
IUSE="test"
RESTRICT="!test? ( test )"

RDEPEND="dev-lang/php:*[filter]
	dev-php/doctrine-deprecations
	dev-php/fedora-autoloader
	dev-php/phpdocumentor-reflection-common
	dev-php/phpdocumentor-type-resolver
	dev-php/phpstan-phpdoc-parser
	dev-php/webmozart-assert"
BDEPEND="test? ( dev-php/mockery
		dev-php/phpunit )"

src_prepare() {
	default

	install -D -m 644 "${FILESDIR}"/autoload.php \
		src/DocBlock/autoload.php || die "install failed"
	install -D -m 644 "${FILESDIR}"/autoload-test.php \
		vendor/autoload.php || die "install test failed"
	# fix non-static data provider deprecation
	sed -i  -e '/provideSimpleExampleDescriptions(/s|function|static function|' \
		-e '/provideEscapeSequences(/s|function|static function|' \
		tests/unit/DocBlock/DescriptionFactoryTest.php \
		|| die "sed failed for DescriptionFactoryTest.php"
	sed -i  -e '/ validTagProvider(/s|function|static function|' \
		-e '/invalidTagProvider(/s|function|static function|' \
		tests/unit/DocBlock/StandardTagFactoryTest.php \
		|| die "sed failed for StandardTagFactoryTest.php"
	sed -i '/authorTagProvider(/s|function|static function|' \
		tests/unit/DocBlock/Tags/AuthorTest.php \
		|| die "sed failed for AuthorTest.php"
	sed -i  -e '/tagContentProvider(/s|function|static function|' \
		-e '/invalidExampleProvider(/s|function|static function|' \
		tests/unit/DocBlock/Tags/ExampleTest.php \
		|| die "sed failed for ExampleTest.php"
	sed -i '/tagProvider(/s|function|static function|' \
		tests/unit/DocBlock/Tags/Factory/MethodFactoryTest.php \
		|| die "sed failed for MethodFactoryTest.php"
	sed -i '/paramInputProvider(/s|function|static function|' \
		tests/unit/DocBlock/Tags/Factory/ParamFactoryTest.php \
		|| die "sed failed for ParamFactoryTest.php"
	sed -i '/collectionDefaultValuesProvider(/s|function|static function|' \
		tests/unit/DocBlock/Tags/MethodParameterTest.php \
		|| die "sed failed for MethodParameterTest.php"
	sed -i '/collectionReturnTypesProvider(/s|function|static function|' \
		tests/unit/DocBlock/Tags/MethodTest.php \
		|| die "sed failed for MethodTest.php"
	sed -i '/provideSummaryAndDescriptions(/s|function|static function|' \
		tests/unit/DocBlockFactoryTest.php \
		|| die "sed failed for DocBlockFactoryTest.php"
	sed -i '/errorCodeProvider(/s|function|static function|' \
		tests/unit/Exception/PcreExceptionTest.php \
		|| die "sed failed for PcreExceptionTest.php"
}

src_compile() { :; }

src_test() {
	# skipped 2
	phpunit --testdox || die "phpunit failed"
}

src_install() {
	einstalldocs
	insinto /usr/share/php/phpDocumentor/Reflection
	doins -r src/.
}
