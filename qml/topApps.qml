import QtQuick 1.1

ListModel {
    id: topApps

    ListElement {
        name: "Inkscape"
        appID: "inkscape"
        icon: "/usr/share/icons/Faenza/apps/64/inkscape.png"
        shortDesc: "vector-based drawing program"
        Desc: "Inkscape loads and saves a subset of the SVG (Scalable Vector Graphics)
 format, a standard maintained by the WWW consortium.\nInkscape user interface should be familiar from CorelDraw and similar
 drawing programs. There are rectangles, ellipses, text items, bitmap
 images and freehand curves.\n
 As an added bonus, both vector and bitmap objects can have alpha
 transparency and can be arbitrarily transformed.\nInkscape supports multiple opened files and multiple views per file.
 Graphics can be printed and exported to png bitmaps."
    }

    ListElement {
        name: "Blender"
        appID: "blender"
        icon: "/usr/share/icons/Faenza/apps/64/blender.png"
        shortDesc: "3D modeller/renderer"
        Desc: "Blender is an integrated 3d suite for modelling, animation, rendering,
 post-production, interactive creation and playback (games). Blender has its
 own particular user interface, which is implemented entirely in OpenGL and
 designed with speed in mind. Python bindings are available for scripting;
 import/export features for popular file formats like 3D Studio and Wavefront
 Obj are implemented as scripts by the community. Stills, animations, models
 for games or other third party engines and interactive content in the form of
 a standalone binary are common products of Blender use."
    }

    ListElement {
        name: "Scribus"
        appID: "scribus"
        icon: "/usr/share/icons/Faenza/apps/64/scribus.png"
        shortDesc: "Page Layout"
        Desc: "Scribus is an open source desktop page layout program with the aim of
 producing commercial grade output in PDF and Postscript, primarily, though
 not exclusively for Linux.\nScribus can be used for many tasks; from brochure design to newspapers,
 magazines, newsletters and posters to technical documentation. It has
 sophisticated page layout features like precision placing and rotating of text
 and/or images on a page, manual kerning of type, bezier curves polygons,
 precision placement of objects, layering with RGB and CMYK custom colors. The
 Scribus document file format is XML-based. Unlike proprietary binary file
 formats, even damaged documents, can be recovered with a simple text editor.\n\n
 Scribus supports professional DTP features, such as CMYK color and a
 color management system to soft proof images for high quality color printing,
 flexible PDF creation options, Encapsulated PostScript import/export and
 creation of 4 color separations, import of EPS/PS and SVG as native vector
 graphics, Unicode text including right to left scripts such as Arabic and
 Hebrew via freetype. Graphic formats which can be placed in Scribus as images
 include PDF, Encapsulated Post Script (eps), TIFF, JPEG, PNG and XPixMap(xpm),
 and any bitmap type supported by QT4.\n\n
 Printing, PDF and SVG creation are done via custom driver libraries and
 plug-ins, giving Scribus inventive features: the abilities to include
 presentation effects with PDF output, fully scriptable interactive PDF
 forms, SVG vector file output. The internal printer drivers fully support
 Level 2 and Level 3/PDF 1.4 postscript features including transparency and
 font embedding.\n
 \n
 When run from KDE, Drag and Drop, for example from desktop to the canvas,
 is enabled. There is easy to use drag and drop scrapbook for frequently
 used items such as text blocks, pictures and custom shaped frames."
    }

    ListElement {
        name: "Minitube"
        appID: "minitube"
        icon: "/usr/share/icons/Faenza/apps/64/minitube.png"
        shortDesc: "Native YouTube client"
        Desc: "Minitube is a native YouTube client. With it you can watch YouTube videos in
 a new way: you type a keyword, Minitube gives you an endless video stream.\n
 \n
 Minitube does not require the Flash Player.\n
 \n
 Minitube is not about cloning the original YouTube web interface, it aims to
 create a new TV-like experience."
    }

    ListElement {
        name: "Mumble"
        appID: "mumble"
        icon: "/usr/share/icons/Faenza/apps/64/mumble.png"
        shortDesc: "Low latency VoIP client"
        Desc: "Mumble is a low-latency, high quality voice chat program for gaming. It
 features noise suppression, automatic gain control and low latency audio
 with support for multiple audio standards. Mumble includes an in-game
 overlay compatible with most open-source and commercial 3D applications.
 Mumble is just a client and uses a non-standard protocol. You will need
 a dedicated server to talk to other users. Server functionality is
 provided by the package \"mumble-server\"."
    }

    ListElement {
        name: "Digikam"
        appID: "digikam"
        icon: "/usr/share/icons/Faenza/apps/64/digikam.png"
        shortDesc: "digital photo management application"
        Desc: "Digital photo management program designed to import, organize, enhance, search
 and export your digital images to and from your computer.\n
 \n
 It provides a simple interface which makes importing and organizing digital
 photographs a \"snap\". digiKam enables you to manage large numbers of
 digital photographs in albums and to organize these photographs for easy
 retrieval using tags (keywords), captions, collections, dates, geolocation
 and searches. It has many features for viewing, organizing, processing and
 sharing your images. Thus, digiKam is a formidable digital asset management
 (DAM) software including powerful image editing functions.\n
 \n
 An easy-to-use camera interface is provided, that will connect to your
 digital camera and download photographs directly into digiKam albums.
 More than 1000 digital cameras are supported by the gphoto2 library.
 Of course, any media or card reader supported by your operating system
 will interface with digiKam.\n
 \n
 digiKam incorporates a fast Image Editor with many image editing tools.
 You can use the Image Editor to view your photographs, comment and rate
 them, correct, enhance and alter them. The editing power can be easily
 extended by a set of plugins, the KDE Image Plugins Interface (manual)\n
 \n
 While digiKam remains easy to use, it provides professional level features
 by the dozens. It is fully 16 bit enabled including all available plugins,
 supports RAW format conversion through libraw, DNG export and ICC color
 management work flow."
    }

}
