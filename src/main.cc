
#include <string>

#include <QCoreApplication>
#include <QObject>

#include "Logger.h"


static const char * progName = "logtest";


void logVersion()
{
    // VERSION is imported from the toplevel VERSION.cmake file
    // via a compiler command line "-DVERSION=..."

    logInfo() << progName
              << " built with Qt " << QT_VERSION_STR
              << endl;
}


int main( int argc, char *argv[] )
{
    Logger logger( "/tmp/logtest-$USER", "logtest.log" );
    logVersion();

    QCoreApplication qtApp( argc, argv);

    logDebug() << "Testing const char *" << endl;
    logDebug() << QString( "Testing QString" ) << endl;
    logDebug() << std::string( "Testing std::string" ) << endl;

    logDebug() << "logtest finished." << endl;

    return 0;
}
