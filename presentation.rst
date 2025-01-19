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

- Cost budget

- Processing budget

- Time budget (low-latency, real-time)

Can only work at low-resolution...


Embedded Video Systems
======================

Constraints:

- Cost budget

- Processing budget

- Time budget (low-latency, real-time)

Can only work at low-resolution... <- FALSE!

.. image:: img/multimedia_system_camera.png
   :width: 100%

Embedded is not always low-end.


Embedded Video Systems
======================

"Why not use an USB camera?"

We are now implementing the USB camera *itself*.


Embedded Video Systems
======================

"Why not just a Raspberry Pi?"

- Power budget

- Performance

- Cost

- Latency

.. image:: img/arducam_pivistation.png



.. code-block:: c
   :startinline: true

    
