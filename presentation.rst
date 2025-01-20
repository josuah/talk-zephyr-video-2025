Embedded Video Systems With Zephyr
##################################

.. class:: titleslideinfo

   Josuah Demangeon, Panoramix Labs, tinyVision.ai


Background
==========

A contractor working essentially with tinyVision.ai

.. image:: img/tinyvision_lattice_devcon_2023.jpg


Video Systems
=============

Famous example: home cinema

.. image:: img/multimedia_home_cinema.jpg

.. image:: img/multimedia_system.png
   :width: 100%

.. image:: img/multimedia_system_annotated.png
   :width: 100%

.. image:: img/multimedia_system_folded.png
   :width: 100%


Embedded Video Systems
======================

Constraints:

-> Cost budget

-> Processing budget

-> Time budget (low-latency, real-time)

Can only work at low-resolution...


Embedded Video Systems
======================

Constraints:

-> Cost budget

-> Processing budget

-> Time budget (low-latency, real-time)

Can only work at low-resolution... <- FALSE!

.. image:: img/multimedia_system_camera.png
   :width: 100%

Embedded is not always low-end.


Embedded Video Systems
======================

"Why not use an USB camera?"

We are now implementing the USB camera *itself*.

.. image:: img/tinyclunx33_som_v2.png

.. image:: img/tinyclunx33_reference_design_dual_mipi_to_usb.png


Embedded Video Systems
======================

"Why not just a Raspberry Pi?"

-> Power budget

-> Performance

-> Cost

-> Latency

.. https://www.arducam.com/arducam-pivistation-5/
.. image:: img/arducam_pivistation.png


Embedded Video Systems
======================

Can be very large:

.. https://en.wikipedia.org/wiki/Very_Large_Telescope
.. image:: img/very_large_telescope.png

.. image:: img/very_large_telescope_inside.png

We can imagine a lot involved to assist the video function:

.. image:: img/very_large_telescope_inside_annotated.png

Still there on small embedded systems:

-> Motor for auto-focus ("VCM" motor ``#include <zephyr/drivers/video-controls.h>``)

-> I2C communication with other chips (``#include <zephyr/drivers/i2c.h>``)

-> Turning on/off the chip power (`Power Management <https://docs.zephyrproject.org/latest/services/pm/index.html>`_)


Embedded Video Systems
======================

But usually the smaller the better: how to shrink?

Switch from Linux OS -> RTOS like Zephyr

FFmpeg -> ???

Gstreamer -> ???

OpenCV -> ???

PyTorch -> ???

``/dev/video0`` -> ???

Everything to reinvent!
Needs a new ecosystem.


Zephyr Video APIs
=================

.. https://static.linaro.org/connect/san19/presentations/san19-503.pdf


Systems doing what?
===================

.. https://2384176.fs1.hubspotusercontent-na1.net/hubfs/2384176/Webinars/MIPI-Webinar-Introduction-MIPI-Camera-Command-Set-v1.pdf
.. image:: img/mipi_csi_imaging.png


On a journey from Phontons to Video
===================================

Photodiode
==========

Phenomenon of semiconductors producing voltage when exposed to the light.

.. image:: img/photodiode.jpeg
   :width: 40%

.. https://hackaday.com/2024/07/23/photoresistor-based-single-pixel-camera/
.. image:: img/singlepixel_altaz.jpeg
.. image:: img/singlepixel_photo.png

Note: photoresistor instead of photodiode here

.. code-block:: c
   :startinline: true

   #include <zephyr/drivers/pwm.h> // if using servomotors
   #include <zephyr/drivers/stepper.h> // if using stepper motors
   #include <zephyr/drivers/adc.h> // measure the light intensity


Photons -> Photonics
====================

Much more than just video:

-> Gas detection/characterization, i.e. NDIR CO2 sensors 

Industrial, safety, medical use-cases.

Since 1958: measuring Earth atmospheric CO2 with "1-pixel image sensors"

-> Biology/medical research, i.e. DNA sequencing

.. https://www.hamamatsu.com/content/dam/hamamatsu-photonics/sites/documents/99_SALES_LIBRARY/ssd/s13360_series_kapd1052e.pdf
.. image:: img/hamamatsu_dna_sequencing_sensor.png

Sensing voltage: not a very Linux thing to do...


Multiple sensors on a line
==========================

Line sensors: single cameras.

External systems measure responsible the voltage.
Sensing one pixel at a time, scanning through them fast.

.. image:: img/hamamatsu_dna_sequencing_sensor.png


Multiple sensors on a line
==========================


