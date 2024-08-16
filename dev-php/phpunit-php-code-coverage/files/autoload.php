<?php
// @codingStandardsIgnoreFile
// @codeCoverageIgnoreStart
require_once 'Fedora/Autoloader'.'/autoload.php';

\Fedora\Autoloader\Autoload::addClassMap(
    array(
        'sebastianbergmann\\codecoverage\\branchandpathcoveragenotsupportedexception' => '/Exception/BranchAndPathCoverageNotSupportedException.php',
                'sebastianbergmann\\codecoverage\\codecoverage' => '/CodeCoverage.php',
                'sebastianbergmann\\codecoverage\\data\\processedcodecoveragedata' => '/Data/ProcessedCodeCoverageData.php',
                'sebastianbergmann\\codecoverage\\data\\rawcodecoveragedata' => '/Data/RawCodeCoverageData.php',
                'sebastianbergmann\\codecoverage\\deadcodedetectionnotsupportedexception' => '/Exception/DeadCodeDetectionNotSupportedException.php',
                'sebastianbergmann\\codecoverage\\driver\\driver' => '/Driver/Driver.php',
                'sebastianbergmann\\codecoverage\\driver\\pathexistsbutisnotdirectoryexception' => '/Exception/PathExistsButIsNotDirectoryException.php',
                'sebastianbergmann\\codecoverage\\driver\\pcovdriver' => '/Driver/PcovDriver.php',
                'sebastianbergmann\\codecoverage\\driver\\pcovnotavailableexception' => '/Exception/PcovNotAvailableException.php',
                'sebastianbergmann\\codecoverage\\driver\\selector' => '/Driver/Selector.php',
                'sebastianbergmann\\codecoverage\\driver\\writeoperationfailedexception' => '/Exception/WriteOperationFailedException.php',
                'sebastianbergmann\\codecoverage\\driver\\xdebugdriver' => '/Driver/XdebugDriver.php',
                'sebastianbergmann\\codecoverage\\driver\\xdebugnotavailableexception' => '/Exception/XdebugNotAvailableException.php',
                'sebastianbergmann\\codecoverage\\driver\\xdebugnotenabledexception' => '/Exception/XdebugNotEnabledException.php',
                'sebastianbergmann\\codecoverage\\exception' => '/Exception/Exception.php',
                'sebastianbergmann\\codecoverage\\filecouldnotbewrittenexception' => '/Exception/FileCouldNotBeWrittenException.php',
                'sebastianbergmann\\codecoverage\\filter' => '/Filter.php',
                'sebastianbergmann\\codecoverage\\invalidargumentexception' => '/Exception/InvalidArgumentException.php',
                'sebastianbergmann\\codecoverage\\nocodecoveragedriveravailableexception' => '/Exception/NoCodeCoverageDriverAvailableException.php',
                'sebastianbergmann\\codecoverage\\nocodecoveragedriverwithpathcoveragesupportavailableexception' => '/Exception/NoCodeCoverageDriverWithPathCoverageSupportAvailableException.php',
                'sebastianbergmann\\codecoverage\\node\\abstractnode' => '/Node/AbstractNode.php',
                'sebastianbergmann\\codecoverage\\node\\builder' => '/Node/Builder.php',
                'sebastianbergmann\\codecoverage\\node\\crapindex' => '/Node/CrapIndex.php',
                'sebastianbergmann\\codecoverage\\node\\directory' => '/Node/Directory.php',
                'sebastianbergmann\\codecoverage\\node\\file' => '/Node/File.php',
                'sebastianbergmann\\codecoverage\\node\\iterator' => '/Node/Iterator.php',
                'sebastianbergmann\\codecoverage\\parserexception' => '/Exception/ParserException.php',
                'sebastianbergmann\\codecoverage\\reflectionexception' => '/Exception/ReflectionException.php',
                'sebastianbergmann\\codecoverage\\report\\clover' => '/Report/Clover.php',
                'sebastianbergmann\\codecoverage\\report\\cobertura' => '/Report/Cobertura.php',
                'sebastianbergmann\\codecoverage\\report\\crap4j' => '/Report/Crap4j.php',
                'sebastianbergmann\\codecoverage\\report\\html\\colors' => '/Report/Html/Colors.php',
                'sebastianbergmann\\codecoverage\\report\\html\\customcssfile' => '/Report/Html/CustomCssFile.php',
                'sebastianbergmann\\codecoverage\\report\\html\\dashboard' => '/Report/Html/Renderer/Dashboard.php',
                'sebastianbergmann\\codecoverage\\report\\html\\directory' => '/Report/Html/Renderer/Directory.php',
                'sebastianbergmann\\codecoverage\\report\\html\\facade' => '/Report/Html/Facade.php',
                'sebastianbergmann\\codecoverage\\report\\html\\file' => '/Report/Html/Renderer/File.php',
                'sebastianbergmann\\codecoverage\\report\\html\\renderer' => '/Report/Html/Renderer.php',
                'sebastianbergmann\\codecoverage\\report\\php' => '/Report/PHP.php',
                'sebastianbergmann\\codecoverage\\report\\text' => '/Report/Text.php',
                'sebastianbergmann\\codecoverage\\report\\thresholds' => '/Report/Thresholds.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\buildinformation' => '/Report/Xml/BuildInformation.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\coverage' => '/Report/Xml/Coverage.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\directory' => '/Report/Xml/Directory.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\facade' => '/Report/Xml/Facade.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\file' => '/Report/Xml/File.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\method' => '/Report/Xml/Method.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\node' => '/Report/Xml/Node.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\project' => '/Report/Xml/Project.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\report' => '/Report/Xml/Report.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\source' => '/Report/Xml/Source.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\tests' => '/Report/Xml/Tests.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\totals' => '/Report/Xml/Totals.php',
                'sebastianbergmann\\codecoverage\\report\\xml\\unit' => '/Report/Xml/Unit.php',
                'sebastianbergmann\\codecoverage\\reportalreadyfinalizedexception' => '/Exception/ReportAlreadyFinalizedException.php',
                'sebastianbergmann\\codecoverage\\staticanalysis\\cachewarmer' => '/StaticAnalysis/CacheWarmer.php',
                'sebastianbergmann\\codecoverage\\staticanalysis\\cachingfileanalyser' => '/StaticAnalysis/CachingFileAnalyser.php',
                'sebastianbergmann\\codecoverage\\staticanalysis\\codeunitfindingvisitor' => '/StaticAnalysis/CodeUnitFindingVisitor.php',
                'sebastianbergmann\\codecoverage\\staticanalysis\\executablelinesfindingvisitor' => '/StaticAnalysis/ExecutableLinesFindingVisitor.php',
                'sebastianbergmann\\codecoverage\\staticanalysis\\fileanalyser' => '/StaticAnalysis/FileAnalyser.php',
                'sebastianbergmann\\codecoverage\\staticanalysis\\ignoredlinesfindingvisitor' => '/StaticAnalysis/IgnoredLinesFindingVisitor.php',
                'sebastianbergmann\\codecoverage\\staticanalysis\\parsingfileanalyser' => '/StaticAnalysis/ParsingFileAnalyser.php',
                'sebastianbergmann\\codecoverage\\staticanalysiscachenotconfiguredexception' => '/Exception/StaticAnalysisCacheNotConfiguredException.php',
                'sebastianbergmann\\codecoverage\\test\\testsize\\known' => '/TestSize/Known.php',
                'sebastianbergmann\\codecoverage\\test\\testsize\\large' => '/TestSize/Large.php',
                'sebastianbergmann\\codecoverage\\test\\testsize\\medium' => '/TestSize/Medium.php',
                'sebastianbergmann\\codecoverage\\test\\testsize\\small' => '/TestSize/Small.php',
                'sebastianbergmann\\codecoverage\\test\\testsize\\testsize' => '/TestSize/TestSize.php',
                'sebastianbergmann\\codecoverage\\test\\testsize\\unknown' => '/TestSize/Unknown.php',
                'sebastianbergmann\\codecoverage\\test\\teststatus\\failure' => '/TestStatus/Failure.php',
                'sebastianbergmann\\codecoverage\\test\\teststatus\\known' => '/TestStatus/Known.php',
                'sebastianbergmann\\codecoverage\\test\\teststatus\\success' => '/TestStatus/Success.php',
                'sebastianbergmann\\codecoverage\\test\\teststatus\\teststatus' => '/TestStatus/TestStatus.php',
                'sebastianbergmann\\codecoverage\\test\\teststatus\\unknown' => '/TestStatus/Unknown.php',
                'sebastianbergmann\\codecoverage\\testidmissingexception' => '/Exception/TestIdMissingException.php',
                'sebastianbergmann\\codecoverage\\unintentionallycoveredcodeexception' => '/Exception/UnintentionallyCoveredCodeException.php',
                'sebastianbergmann\\codecoverage\\util\\directorycouldnotbecreatedexception' => '/Exception/DirectoryCouldNotBeCreatedException.php',
                'sebastianbergmann\\codecoverage\\util\\filesystem' => '/Util/Filesystem.php',
                'sebastianbergmann\\codecoverage\\util\\percentage' => '/Util/Percentage.php',
                'sebastianbergmann\\codecoverage\\version' => '/Version.php',
                'sebastianbergmann\\codecoverage\\xmlexception' => '/Exception/XmlException.php',
    ),
    __DIR__
);
// @codeCoverageIgnoreEnd

// Dependencies
\Fedora\Autoloader\Dependencies::required([
	'/usr/share/php/nikic/PhpParser/autoload.php',
	'/usr/share/php/SebastianBergmann/CodeUnitReverseLookup/autoload.php',
	'/usr/share/php/SebastianBergmann/Complexity/autoload.php',
	'/usr/share/php/SebastianBergmann/LinesOfCode/autoload.php',
	'/usr/share/php/TheSeer/Tokenizer/autoload.php',
]);