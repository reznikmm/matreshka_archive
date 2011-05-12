#include <iostream>

#include <QCoreApplication>
#include <QFile>
#include <QTime>
#include <QXmlInputSource>
#include <QXmlSimpleReader>

int main(int argc, char **argv)
{
    QCoreApplication app(argc, argv);
    QFile file(QCoreApplication::arguments()[1]);
    QXmlInputSource source(&file);
    QXmlSimpleReader reader;
    QTime time;
    
    if (!file.open(QIODevice::ReadOnly))
    {
        std::cerr << "Unable to open file" << std::endl;

        return 1;
    }

    time.start();

    reader.parse(&source);

    std::cout << time.elapsed() << std::endl;

    return 0;
}
