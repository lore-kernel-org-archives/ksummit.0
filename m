Return-Path: <dan.carpenter@oracle.com>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id C6570EDF
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 13:27:31 +0000 (UTC)
Received: from userp2120.oracle.com (userp2120.oracle.com [156.151.31.85])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3128EE5
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Fri, 14 Jun 2019 13:27:27 +0000 (UTC)
Date: Fri, 14 Jun 2019 16:27:01 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: "Martin K. Petersen" <martin.petersen@oracle.com>
Message-ID: <20190614132701.GD28859@kadam>
References: <1559836116.15946.27.camel@HansenPartnership.com>
	<20190606155846.GA31044@kroah.com>
	<1559838569.3144.11.camel@HansenPartnership.com>
	<CAPcyv4guyNu5CVhxaAzMM5cq3VaXkcOPgjRTw5wZ2o_G094EmQ@mail.gmail.com>
	<yq17e9xi24p.fsf@oracle.com> <20190613104930.7dc85e13@coco.lan>
	<1560436507.3329.12.camel@HansenPartnership.com>
	<yq18su51q92.fsf@oracle.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="1UWUbFP1cBYEclgG"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <yq18su51q92.fsf@oracle.com>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>,
	Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
	ksummit <ksummit-discuss@lists.linuxfoundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Ksummit-discuss] [MAINTAINERS SUMMIT] Pull network and Patch
 Acceptance Consistency
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>


--1UWUbFP1cBYEclgG
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I help in staging and we get tons and tons of these cleanups.  I
decided to take a look at how bugs are introduced into staging.  I
sorted through everything with a Fixes tag and divided it into
"new code", "fixes" and "cleanups".

The initial driver upload only accounts for maybe a third of our bugs.
I was surprised this figure was so low.

Mechanical newbie patches are maybe 3-5% of our bugs.  A good chunk of
these were old patches that didn't go through the normal driver-devel
mailing list and review process.  Most of these bugs were detectable
using static analysis so in terms of bugs that make it into a released
version of the kernel the impact from these cleanups is tiny.

The majority of our bugs come from the maintainers doing complicated to
review cleanups.

Some people are over using the Fixes tag.  If the patch is removing
unused variables, then that's not a runtime bug but we should still use
a Fixes tag.  But if we're just silencing GCC false positives then we
shouldn't use a Fixes tag.

I also looked at how the bugs were found.  Probably in staging the bugs
are reported to the vendor instead of to the driver-devel list.  I don't
know if the vendors are adding Reported-by tags correctly...  Out of the
fixes that have a Reported-by tag, most bugs are found by auto builders
and static analysis.  Another large chunk are found by maintainers (one
maintainer adds a bug and a different maintainer notices it).  It's
probably between two and five times per year that a regular user gets a
Reported-by tag.

I'm going to attach my raw data but I don't know if it's too large for
the mailing list.

regards,
dan carpenter

--1UWUbFP1cBYEclgG
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: attachment; filename=fixes
Content-Transfer-Encoding: 8bit

*** NEW FEATURES:

03aef4b6dc12 Staging: comedi: add ni_mio_common code
    1cbca5852d6c staging: comedi: ni_mio_common: protect register write overflow
9bdd203b4dc8 s3cmci: add debugfs support for examining driver and hardware state
    c7fc46fd1410 staging: ccree: mark debug_regs[] as static
8fc8598e61f6 Staging: Added Realtek rtl8192u driver to staging
    5e767cca2964 staging: rtl8192u: remove redundant nul check on pointer dev
    e1a7418529e3 staging: rtl8192u: return -ENOMEM on failed allocation of priv->oldaddr
2865d42c78a9 staging: r8712u: Add the new driver to the mainline kernel
    22c971db7dd4 staging: rtl8712: uninitialized memory in read_bbreg_hdl()
        Reported-by: Colin Ian King <colin.king@canonical.com>
    6e017006022a staging: rtl: fix possible NULL pointer dereference
35f6b6b86ede staging: iio: new ADT7316/7/8 and ADT7516/7/9 driver
    78accaea117c staging: iio: adt7316: fix the dac write calculation
    45130fb030ae staging: iio: adt7316: fix the dac read calculation
    76b7fe8d6c4d staging: iio: adt7316: fix handling of dac high resolution option
    e9de475723de staging: iio: adt7316: fix dac_bits assignment
    10bfe7cc1739 staging: iio: adt7316: allow adt751x to use internal vref for all dacs
    85a1c1191331 staging: iio: adt7316: invert the logic of the check for an ldac pin
    53a6f022b4fe staging: iio: adt7316: fix register and bit definitions
8d97a5877b85 staging: iio: meter: new driver for ADE7754 devices
    6cef2ab01636 staging:iio:ade7854: Fix the wrong number of bits to read
    4297b23d927f staging:iio:ade7854: Fix error handling on read/write
2919fa54ef64 staging: iio: meter: new driver for ADE7759 devices
    13ffe9a26df4 staging: iio: ade7759: fix signed extension bug on shift of a u8
fc96d58c1016 [media] v4l: omap4iss: Add support for OMAP4 camera interface - Video devices
    0894da849f14 media: staging: omap4iss: Include asm/cacheflush.h after generic includes
b9618c0cacd7 staging: IIO: ADC: New driver for AD7606/AD7606-6/AD7606-4
2051f25d2a26 iio: adc: New driver for AD7280A Lithium Ion Battery Monitoring System
    53e8785c248d staging: iio: adc: ad7280a: check for devm_kasprint() failure
959d2952d124 staging:iio: make iio_sw_buffer_preenable much more general.
    e10554738cab staging:iio:ade7758: Fix NULL pointer deref when enabling buffer
    4a53d3afa00b staging:iio:ad5933: Fix NULL pointer deref when enabling buffer
    824269c5868d staging:iio:ad5933: Fix NULL pointer deref when enabling buffer
3c97c08b5735 staging: iio: add TAOS tsl2x7x driver
    cf6c77323a96 staging: iio: tsl2x7x_core: Fix standard deviation calculation
        Reported-by: Abhiram Balasubramanian <abhiram@cs.utah.edu>
da4db94080f0 iio staging: add recently added modifiers to iio_event_monitor
7e8401b23e7f staging: comedi: daqboard2000: add back subsystem_device check
    80e162ee9b31 staging: comedi: daqboard2000: bug fix board type matching code
8f567c373c4b staging: comedi: new adl_pci7x3x driver
    ad83dbd974fe staging: comedi: adl_pci7x3x: fix digital output on PCI-7230
622897da67b3 [media] davinci: vpfe: add v4l2 video driver support
    c4a407b91f4b [media] staging: media: davinci_vpfe: unlock on error in vpfe_reqbufs()
d7e09d0397e8 staging: add Lustre file system client support
    134aecbc25fd staging: lustre: libcfs: Prevent harmless read underflow
    c3eec59659cf staging: lustre: ptlrpc: kfree used instead of kvfree
    092c3def24bb staging: lustre: obdclass: return -EFAULT if copy_from_user() fails
71bad7f08641 staging: add bcm2708 vchiq driver
    ca641bae6da9 staging: vc04_services: prevent integer overflow in create_pagelist()
    974d4d03fc02 staging: vchiq_2835_arm: Fix NULL ptr dereference in free_pagelist
61e121047645 staging: gdm7240: adding LTE USB driver
    b58f45c8fc30 staging: gdm724x: gdm_mux: fix use-after-free on module unload
9a7fe54ddc3a staging: r8188eu: Add source files for new driver - part 1
    784047eb2d34 staging: rtl8188eu: prevent an underflow in rtw_check_beacon_data()
7b464c9fa5cc staging: r8188eu: Add files for new driver - part 4
    123c0aab0050 staging: rtl8188eu: avoid a null dereference on pmlmepriv
    329862549c0f staging: rtl8188eu: rtw_mlme_ext.c: remove commented code
1cc18a22b96b staging: r8188eu: Add files for new driver - part 5
    6e017006022a staging: rtl: fix possible NULL pointer dereference
d6846af679e0 staging: r8188eu: Add files for new driver - part 7
    9dbd79aeb984 Staging: rtl8188eu: overflow in update_sta_support_rate()
b8d181e408af staging: drm/imx: add drm plane support
    3a44a2058747 imx-drm: ipuv3-plane: fix ipu_plane_dpms()
    9c74360f9adb staging: imx-drm: Fix modular build of DRM_IMX_IPUV3
fa590c222fba staging: rts5208: add support for rts5208 and rts5288
    c5fae4f4fd28 staging: rts5208: fix missing error check on call to rtsx_write_register
    7f7aeea7cf30 staging: rts5208: Fix "seg_no" calculation in reset_ms_card()
    34ff1bf49204 staging/rts5208: fix incorrect shift to extract upper nybble
    bf2ec0f9ada1 staging: rts5208: fix static checker warnings
ea313b5f88ed gpu: ion: Also shrink memory cached in the deferred free list
    54de9af9f0d7 gpu: ion: dereferencing an ERR_PTR
16c7eb6047bb staging: comedi: adv_pci1710: always enable PCI171x_PARANOIDCHECK code
    abe46b8932dd staging: comedi: adv_pci1710: fix AI INSN_READ for non-zero channel
33aa8d45a4fe staging: emxx_udc: Add Emma Mobile USB Gadget driver
    97972ccc083c staging: emxx_udc: Remove unused device_desc declaration
        Reported-by: Nick Desaulniers <ndesaulniers@google.com>
    4f3445067d5f staging: emxx_udc: remove incorrect __init annotations
    1fa2df0c70da staging: emxx_udc: fix the build error
ea2e813e8cc3 [media] tlg2300: move to staging in preparation for removal
    3cb99af5ea00 [media] tlg2300: Fix media dependencies
        Reported-by: Jim Davis <jim.epost@gmail.com>
c296d5f9957c staging: fbtft: core support
    0d0d4d21a099 staging: fbtft: array underflow in fbtft_request_gpios_match()
99dfc3357e98 staging: comedi: das1800: remove depends on ISA_DMA_API limitation
    d375278d6667 staging: comedi: das1800: fix possible NULL dereference
e56d03dee14a staging: comedi: cb_pcimdas: add main connector digital input/output
    b08ad6657aac staging: comedi: cb_pcimdas: fix handlers for DI and DO subdevices
81dee67e215b staging: sm750fb: add sm750 to staging
    d28fb1ffbaf4 staging: sm750fb: fix a type issue in sm750_set_chip_type()
c5c77ba18ea6 staging: wilc1000: Add SDIO/SPI 802.11 driver
    fea699163604 staging: wilc1000: Fix some double unlock bugs in wilc_wlan_cleanup()
    0a9019cc8ae0 Staging: wilc1000: unlock on error in init_chip()
    c58eef061dda staging: wilc1000: fix missing read_write setting when reading data
    6a27224f964d staging: wicl1000: fix dereference after free in wilc_wlan_cleanup()
68905a14e49c staging: unisys: Add s-Par visornic ethernet driver
    fa15d6d34663 staging: unisys: visornic: correct obvious double-allocation of workqueues
9bc79bbcd0c5 Staging: most: add MOST driver's aim-cdev module
    5ae890780e1b staging: most: cdev: add missing check for cdev_add failure
2870b52bae4c greybus: lights: add lights implementation
    428359cbfe08 media: staging: greybus: light: fix memory leak in v4l2 register
        Reported-by: Sakari Ailus <sakari.ailus@linux.intel.com>
8f83409cf238 staging/lustre: use 64-bit time for pl_recalc
    b8cb86fd95bb staging: lustre: ldlm: pl_recalc time handling is wrong
        Reported-by: James Simmons <jsimmons@infradead.org>
2b40182a19bc staging: android: ion: Add ion driver for Hi6220 SoC platform
    4a236d01b5e0 staging: android ion/hisi: fix dependencies
2d6ca60f3284 iio: Add a DMAengine framework based buffer
    7d2b8e6aaf9e staging: iio: ad5933: switch buffer mode to software
0cf55bbef2f9 staging: comedi: comedi_test: implement commands on AO subdevice
    403fe7f34e33 staging: comedi: comedi_test: fix timer race conditions
        Reported-by: Éric Piel <piel@delmic.com>
30135ce26df2 staging: wilc1000: wilc_wlan_init: add argument struct net_device
12927835d211 greybus: loopback: Add asynchronous bi-directional support
    44b02da39210 staging: greybus: loopback: Fix iteration count on async path
        Reported-by: Mitch Tasman <tasman@leaflabs.com>
b36f04fa9417 greybus: loopback: Convert thread delay to microseconds
    33b8807a6fe1 staging: greybus: loopback: fix broken udelay
73584a40d748 staging: wilc1000: add ops resuem/suspend/wakeup in cfg80211
    abb4f8addf1d staging: wilc1000: fix build failure
f164cbf98fa8 staging: comedi: ni_mio_common: add finite regeneration to dio output
    bafd9c64056c staging: comedi: ni_mio_common: Fix divide-by-zero for DIO cmdtest
        Reported-by: Ivan Vasilyev <grabesstimme@gmail.com>
3abb33ac6521 staging/hfi1: Add TID cache receive init and free funcs
    94158442eb0c IB/hfi1: Don't attempt to free resources if initialization failed
46a80d62e6e0 IB/qib, staging/rdma/hfi1: add s_hlock for use in post send
    747f4d7a9d1b IB/qib, IB/hfi1: Fix up UD loopback use of irq flags
        Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
14553ca11039 staging/rdma/hfi1: Adaptive PIO for short messages
    17f15bf66884 IB/hfi1: Fix pio wait counter double increment
b15d97d77017 greybus: core: add module abstraction
    e866dd8aab76 greybus: fix a leak on error in gb_module_create()
886aba558b9e greybus: arche-platform: Export fn to allow timesync driver to change the state
    d9966f1de990 staging: greybus: arche-platform: fix device reference leak
e7f63771b60e ION: Sys_heap: Add cached pool to spead up cached buffer alloc
    9bcf065e2812 staging: android: ion: fix sys heap pool's gfp_flags
13a9930d15b4 staging: ks7010: add driver from Nanonote extra-repository
    9afe11e95676 staging: ks7010: declare private functions static
    9d29f14db109 staging: ks7010: fix wait_for_completion_interruptible_timeout return handling
970dc85bd95d greybus: timesync: Add timesync core driver
    b17c1bba9cec staging: greybus: timesync: validate platform state callback
9881fe0ca187 [media] cec: add HDMI CEC framework (adapter)
    6a91d60aba67 [media] cec-adap.c: work around gcc-4.4.4 anon union initializer bug
ca684386e6e2 [media] cec: add HDMI CEC framework (api)
    ea8c535e30c1 [media] cec: add MEDIA_SUPPORT dependency
9d9d3777a9db greybus: es2: Add a new bulk in endpoint for APBridgeA RPC
    1305f2b2f52a greybus: es2: fix error return code in ap_probe()
3147b268400a staging: lustre: osc: Automatically increase the max_dirty_mb
    2fab9faf9b27 staging: lustre: fix bug in osc_enter_cache_try
e28a6c8b3fcc [media] pulse8-cec: sync configuration with adapter
    b82e39f85603 [media] pulse8-cec: avoid uninitialized data use
cc43368a3cde greybus: lights: Control runtime pm suspend/resume on AP side
    5cf62679153e staging: greybus: light: check the correct value of delay_on
13439479c7de staging: ion: Add files for parsing the devicetree
    0047b6e5f1b4 staging: android/ion: testing the wrong variable
02b23803c6af staging: android: ion: Add ioctl to query available heaps
    cf55902b9c30 staging: android: ion: Fix error handling in ion_query_heaps()
e0f3fc9b47e6 iio: accel: sca3000_core: implemented IIO_CHAN_INFO_SAMP_FREQ
    64bc2d02d754 iio: accel: sca3000_core: avoid potentially uninitialized variable
    a1427af59977 iio: accel: sca3000_core: avoid potentially uninitialized variable
239fd5d41f9b staging: lustre: libcfs: shortcut to create CPT from NUMA topology
    1b301e8343d2 staging: lustre: remove broken dead code in cfs_cpt_table_create_pattern
f0cf21abcccc staging: lustre: clio: add CIT_DATA_VERSION and remove IOC_LOV_GETINFO
    01220025b14a staging: lustre: lov: use correct env in lov_io_data_version_end()
2296c0623eb7 staging: iio: cdc: ad7746: implement IIO_CHAN_INFO_SAMP_FREQ
    3089ec2c104c staging: iio: cdc/ad7746: fix missing return value
6572389bcc11 staging: iio: cdc: ad7152: Implement IIO_CHAN_INFO_SAMP_FREQ attribute
    95264c8c6a90 staging: iio: ad7152: Fix deadlock in ad7152_write_raw_samp_freq()
11c647caf74b staging: lustre: obdclass: variable llog chunk size
    6c66a7b097f4 staging: lustre: Use 'kvfree()' for memory allocated by 'kvzalloc()'
96049bd1ecd0 staging: lustre: ptlrpc: embed highest XID in each request
    74e3bb75315c staging: lustre: ptlrpc: avoid warning on missing return
a98461d79ba5 staging: iio: ad9832: add DVDD regulator
    6826fdbd2e20 staging: iio: ad9832: allocate data before using
23b028c871e1 staging: bcm2835-audio: initial staging submission
    f5e2199ae574 staging: bcm2835-audio: allocate enough data for work queues
    021fbaa5fb5b Staging: bcm2835-audio: && vs & typo
    84472ecd7074 staging: bcm2835-audio: off by one in snd_bcm2835_playback_open_generic()
    b07525b89f95 staging: bcm2835-audio: fix empty-body warning
    fe822dc6c12b staging: bcm2835-audio: remove incorrect include path
7b3ad5abf027 staging: Import the BCM2835 MMAL-based V4L2 camera driver.
    ca4e4efbefbb Staging: vc04_services: Fix a couple error codes
    7566f39dfdc1 staging: bcm2835-camera: Abort probe if there is no camera
    b7afce51d957 staging: bcm2835-camera: fix timeout handling in wait_for_completion_timeout
    5b70084f6cbc staging: bcm2835-camera: handle wait_for_completion_timeout return properly
    8e17858a8818 staging: bcm2835-camera: fix error handling in init
    f4082c6f28a8 staging: bcm2835/mmal-vchiq: unlock on error in buffer_from_host()
    757b9bd07431 staging: bcm2835: mark all symbols as 'static'
97b35807cc4d staging: bcm2835-v4l2: Add a build system for the module.
    3ad13763b5f4 staging: bcm2835-v4l: remove incorrect include path
a49d25364dfb staging/atomisp: Add support for the Intel IPU v2
    d5426f4c2eba media: staging: atomisp: use clock framework for camera clocks
    8cd0cd065f37 media: staging/atomisp: fix header guards
    0b56d1c8fd89 media: staging: atomisp: fix bounds checking in mt9m114_s_exposure_selection()
    8033120f36c0 media: atomisp2: array underflow in imx_enum_frame_size()
    115b7ac211d1 media: atomisp2: array underflow in ap1302_enum_frame_size()
    7b065c554ca5 media: atomisp2: Array underflow in atomisp_enum_input()
    c32e3d1b490e [media] atomisp: putting NULs in the wrong place
    d1fec5bdeb18 [media] atomisp: one char read beyond end of string
        Reported-by: David Binderman <dcb314@hotmail.com>
    5795a9a5fed7 staging: atomisp: remove #ifdef for runtime PM functions
    9b7edbb60bb8 staging/atomisp: add ACPI dependency
    19740d6840b5 staging/atomisp: add PCI dependency
    418eaad30eea staging/atomisp: add VIDEO_V4L2_SUBDEV_API dependency
    902ea5fcd577 staging/atomisp: remove sh_css_lace_stat code
    a22933221c43 stating/atomisp: fix -Wold-style-definition warning
    72d2b01e84b2 staging/atomisp: fix empty-body warning
    b5563094d7df Staging: atomisp: fix an uninitialized variable bug
    53044529769b staging: atomicsp: fix a loop timeout
    bc44a73e1737 Staging: atomisp: kfreeing a devm allocated pointer
    f07d4b427067 staging: atomisp: off by one in atomisp_acc_load_extensions()
    39c116dcfd5f staging: atomisp: potential underflow in atomisp_get_metadata_by_type()
6bbfe4a76158 staging: vc04_services: Create new BCM_VIDEOCORE setting for VideoCore services.
    ce95e3a9c599 staging: vc04_services: make BCM_VIDEOCORE tristate
425e586cf95b speakup: add unicode variant of /dev/softsynth
    b96fba8d5855 staging: speakup: fix wraparound in uaccess length check
5569a1260933 staging: vchiq_arm: Add compatibility wrappers for ioctls
    5a96b2d38dc0 staging: vchiq_arm: fix compat VCHIQ_IOC_AWAIT_COMPLETION
d3269bdc7ebc bus: fsl-mc: dpio: add frame descriptor and scatter/gather APIs
    11270059e8d0 staging: fsl-mc/dpio: add cpu <--> LE conversion for dpaa2_fd
321eecb06bfb bus: fsl-mc: dpio: add QBMan portal APIs for DPAA2
    8bae455e57f1 staging: fsl-mc/dpio: remove unused function
    c96d886d7b2e staging: fsl-mc: bus: dpio: fix alter FQ state command
554c0a3abf21 staging: Add rtl8723bs sdio wifi driver
    c3e43d8b958b staging: rtl8723bs: Fix the return value in case of error in 'rtw_wx_read32()'
    a3d2ae043f64 staging: rtl8723bs: fix u8 less than zero check
    ec14121931a2 staging: rtl8723bs: avoid null pointer dereference on pmlmepriv
    c51b46dd5b99 staging: rtl8723bs: add missing range check on id
    ed6456afef0d Staging: rtl8723bs: fix an error code in isFileReadable()
    f55a6d457b21 staging: rtl8723bs: rework debug configuration handling
    c45112e467ab staging: rtl8723bs: fix empty-body warning
abefd6741d54 staging: ccree: introduce CryptoCell HW driver
    0f70db70339d staging: ccree: break send_request and fix ret val
    0f2f02d1b572 staging: ccree: use signal safe completion wait
    26f4b1f7a8da staging: ccree: fix buffer copy
50cfbbb7e627 staging: ccree: add ahash support
    c51831be99e1 staging: ccree: register setkey for none hash macs
    3d51b9562673 staging: ccree: add CRYPTO dependency
302ef8ebb4b2 staging: ccree: add skcipher support
    737aed947f9b staging: ccree: save ciphertext for CTS IV
    6c5ed91b0ca6 staging: ccree: remove unused function argument
0352d1d85201 staging: fsl-dpaa2/eth: Add APIs for DPNI objects
    b72d7451209a staging: fsl-dpaa2/eth: add ETHERNET dependency
6b9ad1c742bf staging: speakup: add send_xchar, tiocmset and input functionality for tty
    a1960e0f1639 staging: speakup: fix tty-operation NULL derefs
    e45423d76f1c staging: speakup: signedness bug in spk_ttyio_in_nowait()
2eccd4aa19fc staging: greybus: enable compile testing of arche driver
    0687090acf0d staging: greybus: mark PM functions as __maybe_unused
158aeefcb82f [media] atomisp: Add __printf validation and fix fallout
    22457cb2de13 media: atomisp: fix misleading addr information
ac669251087d staging: sm750fb: change default screen resolution
    888db9a6e02c staging: sm750fb: change default screen resolution
64b5a49df486 [media] media: imx: Add Capture Device Interface
    537b5c840c2f media: staging/imx: always select VIDEOBUF2_DMA_CONTIG
4a34ec8e470c [media] media: imx: Add CSI subdev driver
    2e0fe66e0a13 media: imx: csi: Disable CSI immediately after last EOF
        Reported-by: Gaël PORTAY <gael.portay@collabora.com>
f0d9c8924e2c [media] media: imx: Add IC subdev drivers
    a19c22677377 media: imx: prpencvf: Stop upstream before disabling IDMA channel
        Reported-by: Gaël PORTAY <gael.portay@collabora.com>
    f9cc48f1b1df media: imx: Fix VDIC CSI1 selection
46949b48568b staging: wilc1000: New cfg packet format in handle_set_wfi_drv_handler
    1bbf6a6d4091 staging: wilc1000: Fix bssid buffer offset in Txq
e130291212df [media] media: Add i.MX media core driver
    dee747f88167 media: imx: Don't register IPU subdevs/links if CSI port missing
    0b2e9e7947e7 media: staging/imx: remove confusing IS_ERR_OR_NULL usage
    4560cb4a0c99 media: imx: add VIDEO_V4L2_SUBDEV_API dependency
874bcba65f9a staging: pi433: New driver
    64c4c4ca6c12 staging: pi433: fix potential null dereference
    99859541a92d staging: pi433: use div_u64 for 64-bit division
    39ae5f1e4b86 staging: pi433: return -EFAULT if copy_to_user() fails
a037b7ec2eb7 staging: fsl-mc: allow the driver compile multi-arch
    5be271ff96ec staging: fsl-mc: fix resource_size.cocci warnings
03274850279c staging: fsl-mc: allow the driver compile multi-arch
    0116ced91d3a staging: fsl-mc: add explicit dependencies for compile-tested arches
56bde846304e staging: r8822be: Add existing rtlwifi and rtl_pci parts for new driver
    89ff9d58e6b6 staging: rtlwifi: add MAC80211 dependency
    03fef6c5c229 staging: rtlwifi: simplify logical operation
    a084cda42ece staging: rtlwifi: shut up -Wmaybe-uninitialized warning
938a0447f094 staging: r8822be: Add code for halmac sub-driver
    e4b08e16b7d9 staging: r8822be: check kzalloc return or bail
    e1bf28868ab0 staging: r8822be: fix null pointer dereferences with a null driver_adapter
    1919b0562bfc staging: r8822be: fix null pointer dereference with a null driver_adapter
    2ffabf50bd00 staging: r8822be: fix memory leak of eeprom_map on error exit return
7e5b796cde7e staging: r8822be: Add the driver code
    3eb23426e174 staging: rtl8822be: fix missing null check on dev_alloc_skb return
3f268f5d6669 staging: ccree: turn compile time debug log to params
    11cc84e708db staging: ccree: use size_t consistently
        Reported-by: kbuild test robot <fengguang.wu@intel.com>
bf3cfaa712e5 media: staging/imx: get CSI bus type from nearest upstream entity
    904371f90b2c media: imx: csi: Allow unknown nearest upstream entities
723fbf563a6a lib/scatterlist: Add SG_CHAIN and SG_END macros for LSB encodings
    b5d013bc09e9 staging: rts5208: rename SG_END macro
1628e2e4dc76 staging: fsl-mc/dpio: allow the driver to compile multi-arch
    7c979b473121 staging: fsl-mc/dpio: qbman_pull_desc_set_token() can be static
8f9439022648 staging: typec: handle vendor defined part and modify drp toggling flow
    7d287a5d5f80 staging: typec: modify parameter of tcpci_irq
44baaa43d7cc staging: fsl-dpaa2/ethsw: Add Freescale DPAA2 Ethernet Switch driver
    5555ebbbac82 staging: fsl-dpaa2/ethsw: fix memory leak of switchdev_work
    11f27765f611 staging: fsl-dpaa2: ethsw: Add missing netdevice check
0853c7a53eb3 staging: mt7621-dma: ralink: add rt2880 dma engine
    354e379684fc staging: mt7621-dma: fix potentially dereferencing uninitialized 'tx_desc'
        Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
e3cbf478f846 staging: mt7621-eth: add the drivers core files
    144e2643e2f5 staging: mt7621-eth: Use eth_hw_addr_random()
    85e1d42663a0 staging: mt7621-eth: Fix memory leak in mtk_add_mac() error path
    9d350d806a8b staging: mt7621-eth: fix return value check in mtk_connect_phy_node()
    960526d5970f staging: mt7621-eth: fix return value check in mtk_probe()
f079b6406348 staging: mt7621-eth: add gigabit switch driver (GSW)
    3eb3c3e32eef staging: mt7621-eth: fix return value check in mt7621_gsw_probe()
4907c73deefe media: staging: davinci_vpfe: allow building with COMPILE_TEST
    49dc762cffd8 media: staging: davinci_vpfe: disallow building with COMPILE_TEST
ce08eaeb6388 staging: typec: rt1711h typec chip driver
    e16711c32bca staging/typec: fix tcpci_rt1711h build errors
        Reported-by: kbuild test robot <lkp@intel.com>
3d2ec9dcd553 staging: Android: Add 'vsoc' driver for cuttlefish.
    060ea4271a82 staging: android: vsoc: fix copy_from_user overrun
9bdf43b3d40f staging: fsl-dpaa2/rtc: add rtc driver
    916c0c4b83de staging: fsl-dpaa2/rtc: fix PTP dependency
8ce76bff0e6a staging: ks7010: add new helpers to achieve mib set request and simplify code
    eb37430d402d staging: ks7010: call 'hostif_mib_set_request_int' instead of 'hostif_mib_set_request_bool'
        Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
9a69f5087ccc drivers/staging: Gasket driver framework + Apex driver
    c37a192ef442 Staging: Gasket: shift wrapping bug in gasket_read_modify_write_64()
    7cc6dfd076e8 Staging: Gasket: fix a couple off by one bugs
    97b23455ccd5 Staging: Gasket: uninitialized return in gasket_mmap()
2408898e3b6c staging: vboxvideo: Add page-flip support
    a5aca2057469 staging: vboxvideo: Fix modeset / page_flip error handling
    65aac1742328 staging: vboxvideo: Change address of scanout buffer on page-flip
4a965c5f89de staging: add driver for Xilinx AXI-Stream FIFO v4.1 IP core
    b9f13084580c staging: fix platform_no_drv_owner.cocci warnings
    6d4abf1c0e26 staging: axis-fifo: fix return value check in axis_fifo_probe()
3aa8ec716e52 staging: erofs: add directory operations
    33bac912840f staging: erofs: keep corrupted fs from crashing kernel in erofs_readdir()
d72d1ce60174 staging: erofs: add namei functions
    419d6efc50e9 staging: erofs: keep corrupted fs from crashing kernel in erofs_namei()
    d4104c5e783f staging: erofs: keep corrupted fs from crashing kernel in erofs_namei()
    38c6aa2175c3 staging: erofs: use the wrapped PTR_ERR_OR_ZERO instead of open code
        Reported-by: kbuild test robot <lkp@intel.com>
b17500a0fdba staging: erofs: introduce xattr & acl support
    62dc45979f3f staging: erofs: fix race of initializing xattrs of a inode at the same time
    3b1b5291f79d staging: erofs: fix memleak of inode's shared xattr array
    7077fffcb0b0 staging: erofs: fix fast symlink w/o xattr when fs xattr is on
        Reported-by: Li Guifu <bluce.liguifu@huawei.com>
0d40d6e399c1 staging: erofs: add a generic z_erofs VLE decompressor
    8bce6dcede65 staging: erofs: fix to handle error path of erofs_vmap()
3883a79abd02 staging: erofs: introduce VLE decompression support
    b6391ac73400 staging: erofs: fix error handling when failed to read compresssed data
    11152496021e staging: erofs: fix error handling when failed to read compresssed data
    8bce6dcede65 staging: erofs: fix to handle error path of erofs_vmap()
    a112152f6f3a staging: erofs: fix mis-acted TAIL merging behavior
    1e5ceeab6929 staging: erofs: fix illegal address access under memory pressure
    af692e117cb8 staging: erofs: compressed_pages should not be accessed again after freed
50e761516f2b media: platform: Add Cedrus VPU decoder driver
    53e9d838275d media: cedrus: Fix a NULL vs IS_ERR() check
    b12c7afc10b0 media: platform: fix platform_no_drv_owner.cocci warnings
    b7c56d7bfe83 drivers: staging: cedrus: find ctx before dereferencing it ctx
284db12cfda3 staging: erofs: add trace points for reading zipped data
    ba9ce771b018 staging: erofs: fix `trace_erofs_readpage' position
51fd36738383 staging: comedi: ni_mio_common: implement INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS
    9a1ec4eb6f37 staging: comedi: ni_mio_common: scale ao INSN_CONFIG_GET_CMD_TIMING_CONSTRAINTS
c893500a16ba media: imx: csi: Register a subdev notifier
    337e90ed0286 media: imx-csi: Input connections to CSI should be optional
347e244884c3 staging: comedi: tio: implement global tio/ctr routing
    4dc2a3cd2785 staging: comedi: clarify/unify macros for NI macro-defined terminals
    a7ed5b3e7dca staging: comedi: tio: fix multiple missing break in switch bugs
f5f2e4273518 media: staging/intel-ipu3: Add css pipeline programming
    c3c2eca87dcd media: staging/intel-ipu3: reduce kernel stack usage
    81a43d10b8ed media: staging: intel-ipu3: fix unsigned comparison with < 0
a0ca1627b450 media: staging/intel-ipu3: Add v4l2 driver based on media framework
    6d5f26f2e045 media: staging/intel-ipu3-v4l: reduce kernel stack usage
7fc7af649ca7 media: staging/intel-ipu3: Add imgu top level pci device driver
    948dff7cfa1d media: staging/intel-ipu3: mark PM function as __maybe_unused
439d8186fb23 media: imx: add capture compose rectangle
    5964cbd86922 media: imx: Set capture compose rectangle in capture_device_set_format
7807063b862b media: staging/imx7: add MIPI CSI-2 receiver subdev for i.MX7
    1fc79c4bb19b media: staging/imx7: Fix an error code in mipi_csis_clk_get()
07173c3ec276 block: enable multipage bvecs
    f4e97f5d4c9e staging: erofs: fix unexpected out-of-bound data access
7dc7967fc39a staging: kpc2000: add initial set of Daktronics drivers
    d4c596ebf627 staging: kpc2000: Fix build error without CONFIG_UIO
        Reported-by: Hulk Robot <hulkci@huawei.com>
        Reported-by: kbuild test robot <lkp@intel.com>
    f998a1180e14 staging: kpc2000: fix resource size calculation
    d687bdefba27 staging: kpc2000: Fix a stack information leak in kp2000_cdev_ioctl()
7df95299b94a staging: kpc2000: Add DMA driver
    c85aa326f5c5 staging: kpc2000: double unlock in error handling in kpc_dma_transfer()
284eb160681c staging: octeon-ethernet: support of_get_mac_address new ERR_PTR error
    da48be337343 staging: octeon-ethernet: Fix of_get_mac_address ERR_PTR check
3ef46bc97ca2 media: staging/imx: Improve pipeline searching
    c89b41343862 media: staging/imx: fix two NULL vs IS_ERR() bugs
43ad38191816 staging: kpc2000: kpc_i2c: add static qual to local symbols in kpc_i2c.c
    99bf7761b7cd staging: kpc2000: kpc_i2c: fix platform_no_drv_owner.cocci warnings

*** FIXES:

36b30d6138f4 staging: nvec: ps2: change serio type to passthrough
    17c1c9ba15b2 Revert "staging: nvec: ps2: change serio type to passthrough"
8b7a13c3f404 staging: r8712u: Fix possible buffer overrun
    300cd664865b staging: rtl8712: Fix possible buffer overrun
d35dcc89fc93 staging: comedi: quatech_daqp_cs: fix daqp_ao_insn_write()
    1376b0a21603 staging: comedi: quatech_daqp_cs: fix no-op loop daqp_ao_insn_write()
0a438d5b381e staging: vt6656: use free_netdev instead of kfree
    cb4855b49deb Staging: vt6655-6: potential NULL dereference in hostap_disable_hostapd()
3030d40b5036 staging: vt6655: use free_netdev instead of kfree
    cb4855b49deb Staging: vt6655-6: potential NULL dereference in hostap_disable_hostapd()
83271f6262c9 ion: hold reference to handle after ion_uhandle_get
    6fa92e2bcf63 staging: ion: fix corruption of ion_import_dma_buf
7ad82572348c staging:wlan-ng:Fix sparse warning
    2c474b8579e9 staging: wlan-ng: add missing byte order conversion
4a9fdbbecc18 staging: core: tiomap3430.c Fix line over 80 characters.
    ff4f58f0ca5d staging: tidspbridge: fix an erroneous removal of parentheses
0557344e2149 staging: comedi: ni_mio_common: fix local var for 32-bit read
    857a661020a2 staging: comedi: ni_mio_common: fix E series ni_ai_insn_read() data
f79b0d9c223c staging: speakup: Fixed warning <linux/serial.h> instead of <asm/serial.h>
    327b882d3bcc Staging: speakup: Fix getting port information
73e0e4dfed4c staging: comedi: comedi_test: fix timer lock-up
    403fe7f34e33 staging: comedi: comedi_test: fix timer race conditions
        Reported-by: Éric Piel <piel@delmic.com>
81fb0b901397 staging: android: ion_test: unregister the platform device
    ccbc2a9e7878 staging: android: ion_test: fix check of platform_device_register_simple() error code
0abb60c1c5c3 staging: unisys: visorchannel_write(): Handle partial channel_header writes
    d253058f490f staging: unisys: fix random memory corruption in visorchannel_write()
9535ebc5e9cc staging/wilc1000: fix Kconfig dependencies
    bcc43a4b5ed7 staging/wilc: fix Kconfig dependencies, second try
e6ffd1ba55a4 staging: fbtft: fix out of bound access
    11f2323ad357 staging: fbtft: fix build error
        Reported-by: kbuild test robot <fengguang.wu@intel.com>
82c2611daaf0 staging/rdma/hfi1: Handle packets with invalid RHF on context 0
    9d2f53ef42c1 staging/rdma/hfi1: Fix error in hfi1 driver build
9d15134d067e greybus: power_supply: rework get descriptors
    47830c1127ef staging: greybus: power_supply: fix prop-descriptor request size
a545f5308b6c staging/rdma/hfi: fix CQ completion order issue
    b96b040445f5 IB/hfi1: Fix potential panic with sdma drained mechanism
    b9b06cb6feda IB/hfi1: Fix missing lock/unlock in verbs drain callback
4d99b2581eff staging: lustre: avoid intensive reconnecting for ko2iblnd
    9b046013e583 staging: lustre: separate a connection destroy from free struct kib_conn
b08bb6bb5af5 staging: lustre: make lustre dependent on LNet
    2cc089e41d8e staging: lustre: really make lustre dependent on LNet
49d200deaa68 debugfs: prevent access to removed files' private data
    0fd9da9a979a staging/android: sync_debug: unproxify debugfs files' fops
ed2f549dc0f6 staging: lustre: libcfs: test if userland data is to small
    62cbe860c5c3 staging: lustre: libcfs: fix test for libcfs_ioctl_hdr minimum size
        Reported-by: Doug Oucharek <doug.s.oucharek@intel.com>
87787e5ef727 Staging: iio: Fix sparse endian warning
    7e982555d89c staging: iio: fix ad7606_spi regression
e88c9271d9f8 IB/hfi1: Fix buffer cache races which may cause corruption
    9565c6a37a9d IB/hfi1: Fix an interval RB node reference count leak
b788dc51e425 staging: lustre: llite: drop acl from cache
    ed7bdf5c9c15 staging: lustre: hide call to Posix ACL in ifdef
5bb2399a4fe4 [media] cec: fix Kconfig dependency problems
    a58d1191ca04 [media] cec: fix Kconfig help text
    cd70c37b5a23 [media] staging: add MEDIA_SUPPORT dependency
d806f30e639b staging: lustre: osc: revise unstable pages accounting
    c89d98e224b4 staging/lustre/llite: Move unstable_stats from sysfs to debugfs
    7894c263f200 staging: lustre: fix unstable pages tracking
eaf47b713b60 staging: rtl8188eu: fix missing unlock on error in rtw_resume_process()
    23bf40424a0f staging: rtl8188eu: fix double unlock error in rtw_resume_process()
57b978ada073 [media] s5p-cec: fix system and runtime PM integration
    eadf081146ec [media] s5p-cec: mark PM functions as __maybe_unused again
5231f7651c55 staging: lustre: statahead: small fixes and cleanup
    f689c72d7dbc staging: lustre: statahead: remove incorrect test on agl_list_empty()
0561155f6fc5 staging: iio: tsl2583: don't shutdown chip when updating the lux table
    c266cda29ae6 staging: iio: tsl2583: fix unused function warning
e895f00a8496 Staging: wlan-ng: hfa384x_usb.c Fixed too long code line warnings.
    a67fedd78818 staging: wlan-ng: fix adapter initialization failure
ec988ad78ed6 phy: Don't increment MDIO bus refcount unless it's a different owner
    e7c9a3d9e432 staging: octeon: Call SET_NETDEV_DEV()
        Reported-by: Aaro Koskinen <aaro.koskinen@iki.fi>
757b9bd07431 staging: bcm2835: mark all symbols as 'static'
    156650083f7d staging: bcm2835: don't mark 'bcm2835_v4l2_debug' as static
0adbfd4694c2 staging: bcm2835-audio: fix memory leak in bcm2835_audio_open_connection()
    c97d96b4e612 staging: bcm2835-audio: Fix memory corruption
4b4eda001704 Staging: media: Unmap and release region obtained by ioremap_nocache
    3b6471c7becd media: Staging: media: Release the correct resource in an error handling path
2a55e7b5e544 staging: android: ion: Call dma_map_sg for syncing and mapping
    31eb79db420a staging: android: ion: Support cpu access during dma_buf_detach
0e490657c721 staging: wilc1000: Fix problem with wrong vif index
    dda037057a57 staging: wilc1000: fix to set correct value for 'vif_num'
ef9209b642f1 staging: rtl8723bs: Fix indenting errors and an off-by-one mistake in core/rtw_mlme_ext.c
    47dcb0802d28 Merge tag 'staging-4.20-rc6' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging
    87e4a5405f08 Revert commit ef9209b642f "staging: rtl8723bs: Fix indenting errors and an off-by-one mistake in core/rtw_mlme_ext.c"
74e1e498e84e staging: rtl8188eu: fix comments with lines over 80 characters
    4004a9870bbe staging: rtl8188eu: Revert part of "staging: rtl8188eu: fix comments with lines over 80 characters"
d1eab9dec610 staging: vchiq_core: Bail out in case of invalid tx_pos
    8113b89fc615 staging: vchiq_core: Fix missing semaphore release in error case
        Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
39163c0ce0f4 staging: fsl-dpaa2/eth: Errors checking update
    58ad0d0263c5 staging: fsl-dpaa2: eth: move generic FD defines to DPIO
    11b86a84bc53 staging: fsl-dpaa2/eth: fix off-by-one FD ctrl bitmaks
0b2e9e7947e7 media: staging/imx: remove confusing IS_ERR_OR_NULL usage
    b605687cf517 media: staging: imx-media-vdic: fix inconsistent IS_ERR and PTR_ERR
9a5a6911aa3f staging: imx: fix non-static declarations
    4a3039e26eba media: staging: atomisp: imx: remove dead code
    09cbc5de1540 Revert "staging: imx: fix non-static declarations"
        Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
737aed947f9b staging: ccree: save ciphertext for CTS IV
    46df8824982e staging: ccree: NULLify backup_info when unused
87eb55e418b7 staging: fsl-dpaa2/eth: Fix potential endless loop
    466bcdc1fa30 staging: fsl-dpaa2/eth: Fix DMA mapping direction
4b2d9fe87950 staging: fsl-dpaa2/eth: Extra headroom in RX buffers
    441851b49a34 staging: fsl-dpaa2/eth: Don't set netdev->needed_headroom
    54ce89177988 staging: fsl-dpaa2/eth: Fix access to FAS field
c5f39d07860c staging: ccree: fix leak of import() after init()
    293edc27f8bc stating: ccree: revert "staging: ccree: fix leak of import() after init()"
    aece09024414 staging: ccree: Uninitialized return in ssi_ahash_import()
ce8a3a9e76d0 staging: android: ashmem: Fix a race condition in pin ioctls
    740a5759bf22 staging: android: ashmem: Fix possible deadlock in ashmem_ioctl
        Reported-by: syzbot+d7a918a7a8e1c952bc36@syzkaller.appspotmail.com
890f27693f2a media: imx: work around false-positive warning
    8d1a4817cce1 media: imx: work around false-positive warning, again
80782927e3aa staging: lustre: Fix unneeded byte-ordering cast
    127aaef460eb staging: lustre: lnet: use correct 'magic' test
aaea2164bdff staging: wilc1000: check for kmalloc allocation failures
    291b93ca2c50 staging: wilc1000: fix memdup.cocci warnings
fe014d4e6b55 staging: wilc1000: free memory allocated for general info message from firmware
    b00e2fd10429 staging: wilc1000: fix NULL pointer exception in host_int_parse_assoc_resp_info()
dc9f65cf9aea media: staging: atomisp: avoid a warning if 32 bits build
    e935dbfc9ff8 media: atomisp: remove an impossible condition
faa657641081 staging: wilc1000: refactor scan() to free kmalloc memory on failure cases
    ad109ba13786 staging: wilc1000: fix infinite loop and out-of-bounds access
69c90cf1b2fa staging: most: sound: call snd_card_new with struct device
    98592c1faca8 staging: most: sound: pass correct device when creating a sound card
        Reported-by: Eugeniu Rosca <erosca@de.adit-jv.com>
aba258b73101 staging: most: cdev: fix chrdev_region leak
    af708900e9a4 staging: most: cdev: fix chrdev_region leak in mod_exit
37b7b3087a2f staging/vc04_services: Register a platform device for the camera driver.
    25c7597af20d staging: vchiq_arm: Register a platform device for audio
    405e2f98637d staging: vchiq_arm: Fix camera device registration
4bebb0312ea9 staging/bcm2835-camera: Set ourselves up as a platform driver.
    3a2c20024a2b staging: bcm2835-camera: fix module autoloading
    4f566194cec3 staging: bcm2835-camera: Fix module section mismatch warnings.
        Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
bfd40eaff5ab mm: fix vma_is_anonymous() false-positives
    44960f2a7b63 staging: ashmem: Fix SIGBUS crash when traversing mmaped ashmem pages
        Reported-by: Amit Pundir <amit.pundir@linaro.org>
        Reported-by: Youling 257 <youling257@gmail.com>
9abc44ba4e2f staging: wilc1000: fix TODO to compile spi and sdio components in single module
    f45b8934b90b staging: wilc1000: revert "fix TODO to compile spi and sdio components in single module"
02211edc9a1f staging: wilc1000: fix endianness warnings reported by sparse
    3f285135bcff staging: wilc1000: fix compilation warning for ARCH PowerPC
        Reported-by: kbuild test robot <lkp@intel.com>
156c3df8d4db staging: erofs: disable compiling temporarile
    aca19723604c Revert "staging: erofs: disable compiling temporarile"
    f86cf25a6091 Revert "staging: erofs: disable compiling temporarile"
852b2876a8a8 staging: vchiq: rework remove_event handling
    77cf3f5dcf35 staging: vchiq: make wait events interruptible
    a50c4c9a6577 staging: vchiq: Fix local event signalling
a772f116702e staging: vchiq: switch to wait_for_completion_killable
    086efbabdc04 staging: vchiq: revert "switch to wait_for_completion_killable"
6e537b58de77 media: imx: vdic: rely on VDIC for correct field order
    ce3c2433b074 media: imx: vdic: Restore default case to prepare_vdi_in_buffers()
        Reported-by: Hans Verkuil <hverkuil@xs4all.nl>
e4b08e16b7d9 staging: r8822be: check kzalloc return or bail
    e8edc32d70a4 staging: rtlwifi: Use proper enum for return in halmac_parse_psd_data_88xx
6d4cd041f0af net: phy: at803x: disable delay only for RGMII mode
    9498da46d1ce staging: octeon-ethernet: fix incorrect PHY mode

*** CLEANUPS:

b37f9e1c3801 staging: rtl8723bs: Fix lines too long in update_recvframe_attrib().
    c948c6915b62 staging: rtl8723bs: Fix incorrect sense of ether_addr_equal
29148543c521 staging:iio:resolver:ad2s1210 minimal chan spec conversion.
    105967ad68d2 staging:iio:resolver:ad2s1210 fix negative IIO_ANGL_VEL read
550268ca1111 staging:iio: scrap scan_count and ensure all drivers use active_scan_mask
    79fa64eb2ee8 staging:iio:ade7758: Fix check if channels are enabled in prenable
d0f47ff17f29 ASoC: OMAP: Build config cleanup for McBSP
    d3921a03a89a staging: tidspbridge: check for CONFIG_SND_OMAP_SOC_MCBSP
fb1ef622e7a3 staging: comedi: usbduxsigma: tidy up analog output command support
    c04a1f17803e staging: comedi: usbduxsigma: don't clobber ao_timer in command test
b986be8527c7 staging: comedi: usbduxsigma: tidy up analog input command support
    423b24c37dd5 staging: comedi: usbduxsigma: don't clobber ai_timer in command test
7dc19d5affd7 drivers: convert shrinkers to new count/scan API
    5957324045ba staging: ashmem: Fix ASHMEM_PURGE_ALL_CACHES return value
        Reported-by: YongQin Liu <yongqin.liu@linaro.org>
b3ff824a81e8 staging: comedi: drivers: use comedi_dio_update_state() for complex cases
    9382c06e2d19 Staging: comedi: pcl730: fix some bitwise vs logical AND bugs
1b3f76756633 imx-drm: initialise drm components directly
    d9fdb9fba7ec imx-drm: imx-ldb: fix NULL pointer in imx_ldb_unbind()
10f74377eec3 staging: comedi: ni_tio: make ni_tio_winsn() a proper comedi (*insn_write)
    5ca05345c56c staging: comedi: ni_mio_common: fix wrong insn_write handler
        Reported-by: Éric Piel <piel@delmic.com>
c6cd0eefb27b staging: comedi: comedi_fops: introduce __comedi_get_user_chanlist()
    238b5ad85592 staging: comedi: fix memory leak / bad pointer freeing for chanlist
        Reported-by: H Hartley Sweeten <hsweeten@visionengravers.com>
    6cab7a37f5c0 staging: comedi: (regression) channel list must be set for COMEDI_CMD ioctl
        Reported-by: Bernd Porr <mail@berndporr.me.uk>
e534f3e9429f staging:nvec: Introduce the use of the managed version of kzalloc
    68fae2f3df45 staging: nvec: remove managed resource from PS2 driver
6a760394d7eb staging: comedi: ni_tiocmd: clarify the cmd->start_arg validation and use
    1fd24a4702d2 staging: comedi: ni_tiocmd: change mistaken use of start_src for start_arg
ebb657babfa9 staging: comedi: ni_mio_common: clarify the cmd->start_arg validation and use
    f0f4b0cc3a8c staging: comedi: ni_mio_common: fix AO inttrig backwards compatibility
        Reported-by: Spencer Olson <olsonse@umich.edu>
28a821c30688 Staging: speakup: Update __speakup_paste_selection() tty (ab)usage to match vt
    f4f9edcf9b52 staging/speakup: Use tty_ldisc_ref() for paste kworker
3fe563249374 staging: rtl8192u: r8192U_core.c: Cleaning up unclear and confusing code
    c3f463484bdd staging: rtl8192u: Fix crash due to pointers being "confusing"
fadbe0cd5292 staging: rtl8188eu:Remove rtw_zmalloc(), wrapper for kzalloc()
    1335a9516d3d staging: r8188eu: Fix scheduling while atomic splat
    33dc85c3c667 staging: r8188eu: Fix scheduling while atomic error introduced in commit fadbe0cd
    11306d1f20ca staging: rtl8188eu: use GFP_ATOMIC under spinlock
817144ae7fda staging: comedi: ni_mio_common: remove unnecessary use of 'board->adbits'
    655c4d442d12 staging: comedi: ni_mio_common: fix M Series ni_ai_insn_read() data mask
0953ee4acca0 staging: comedi: ni_mio_common: checkpatch.pl cleanup (else not useful)
    bd3a3cd6c27b staging: comedi: ni_mio_common: fix the ni_write[blw]() functions
4f9c63fe5333 staging: comedi: amplc_pci230: refactor iobase addresses
    94254d1baec7 staging: comedi: amplc_pci230: fix a precedence bug
91360b02ab48 ashmem: use vfs_llseek()
    97fbfef6bd59 staging: android: ashmem: lseek failed due to no FMODE_LSEEK.
fdedd94509fd staging/lustre/lvfs: remove the lvfs layer
    372d5b560707 staging/lustre/lvfs: fix building without CONFIG_PROC_FS
240512474424 staging: comedi: comedi_test: use comedi_handle_events()
    403fe7f34e33 staging: comedi: comedi_test: fix timer race conditions
        Reported-by: Éric Piel <piel@delmic.com>
    73e0e4dfed4c staging: comedi: comedi_test: fix timer lock-up
b3dd8957c23a staging: lustre: lustre: llite: Use kstrdup
    15f7330be7c0 staging: lustre: llite: initialize xattr->xe_namelen
8c4f13649731 Staging: lustre: Use put_unaligned_le64
    fb1de5a4c825 staging: lustre: Include unaligned.h instead of access_ok.h
b12fdf7da28f staging: unisys: rework signal remove/insert to avoid sparse lock warnings
    24ac1074c1da staging: unisys: fix random hangs with network stress in visornic
817bd7253291 dma-buf: cleanup dma_buf_export() to make it easily extensible
    72449cb47b01 staging: android: ion: fix wrong init of dma_buf_export_info
        Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
af3fa7c71bf6 staging/lustre/lnet: peer aliveness status and NI status
    9f088dba3cc2 staging/lustre: use jiffies for lp_last_query times
efde234674d9 ARM: OMAP4+: control: remove support for legacy pad read/write
    c02d7da3dd00 Merge tag 'media/v4.1-3' of git://git.kernel.org/pub/scm/linux/kernel/git/mchehab/linux-media
    fefad2d54beb [media] v4l: omap4iss: Replace outdated OMAP4 control pad API with syscon
0aca78449b58 staging: unisys: remove ERRDEV macros
    bdbceb4de3e3 staging: unisys: fix some debugfs output
6501c8e7d86c Staging: rtl8712: Eliminate use of _cancel_timer_ex
    39a6e7376af0 staging: rtl8712: fix stack dump
        Reported-by: Arek Rusniak <arek.rusi@gmail.com>
    a1471eb9da4a staging: rtl8712: fix stack dump
        Reported-by: Arek Rusniak <arek.rusi@gmail.com>
382d020f4459 Staging: rtl8712: Eliminate use of _cancel_timer
    39a6e7376af0 staging: rtl8712: fix stack dump
        Reported-by: Arek Rusniak <arek.rusi@gmail.com>
    a1471eb9da4a staging: rtl8712: fix stack dump
        Reported-by: Arek Rusniak <arek.rusi@gmail.com>
bb046fef9668 staging: panel: register reboot
    7d98c63edc45 staging: panel: fix stackdump
c84a083b995b Staging: dgnc: Use goto for spinlock release before return
    5ec293650827 Staging: dgnc: release the lock before testing for nullity
5a2ca43fa54f Staging: lustre: Iterate list using list_for_each_entry
    a8da8e528cb0 staging: lustre: o2iblnd: Fix crash in kiblnd_handle_early_rxs()
45de432775d6 Staging: rtl8712: Use memdup_user() instead of copy_from_user()
    b5eed730bd3f staging: rtl8712: freeing an ERR_PTR
99d56ff7c1c2 staging/lustre: Always try kmalloc first for OBD_ALLOC_LARGE
    7f804436fbd3 staging: lustre: remove unused variable warning
d5b3f1dccee4 staging: unisys: move timskmod.h functionality
    1fc07f99134b staging: unisys: Allow visorbus to autoload
53490b545cb0 staging: unisys: move periodic_work.c into the visorbus directory
    f5ab93fa5e79 staging: unisys: remove reference of visorutil
    b99464b1da04 staging: unisys: cleanup UNISYS_VISORUTIL
795731627c74 staging: unisys: Clean up device sysfs attributes
    fd012d0def47 staging: unisys: correctly NULL-terminate visorbus sysfs attribute array
b32c4997c03d staging: unisys: Move channel creation up the stack
    a3ef1a8e9391 staging: unisys: Lock visorchannels associated with devices
af8a819a2513 [media] lirc_imon: simplify error handling code
    b833d0df943d [media] lirc_imon: do not leave imon_probe() with mutex held
ee0ec1946ec2 lustre: ptlrpc: Replace uses of OBD_{ALLOC,FREE}_LARGE
    c3eec59659cf staging: lustre: ptlrpc: kfree used instead of kvfree
68345dd7bc26 staging: rtl8188eu: rtw_mlme_ext.c: unexport message callbacks
    f996bd10a049 staging: rtl8188eu: don't define OnAuth() in non-AP mode
782eddd748d9 staging: rtl8188eu: unexport internal functions
    2b49e0fce249 staging: rtl8188eu: don't define issue_asocrsp() in non-AP mode
a9b693cd77d7 Staging: rts5208: helper function to manage delink states
    6c6f95a9351b Staging: rts5208: fix CHANGE_LINK_STATE value
4f016420d368 Staging: lustre: obdclass: Use kasprintf
    436630983b00 staging: lustre: obd_mount: use correct niduuid suffix.
1a02387063fb staging: comedi: me4000: remove 'board' from me4000_ai_insn_read()
    358d577ce1a7 staging: comedi: me4000: use bitwise AND instead of logical
db0fa0cb0157 scatterlist: use sg_phys()
    3e6110fd5480 Revert "scatterlist: use sg_phys()"
        Reported-by: Vitaly Lavrov <vel21ripn@gmail.com>
d42ab0838d04 staging: wilc1000: use id value as argument
    6ae9ac0b61a7 staging: wilc1000: off by one in get_handler_from_id()
fd2bb310ca3d Staging: iio: Move evgen interrupt generation to irq_work
    2e9fed42209b staging: iio: dummy: complete IIO events delivery to userspace
    aea545fa9081 staging: iio: select IRQ_WORK for IIO_DUMMY_EVGEN
367e8560e8d7 Staging: fbtbt: Replace timespec with ktime_t
    fc1e2c8ea85e Staging: fbtft: Fix bug in fbtft-core
56293ff232b9 staging: wilc1000: linux_wlan_spi: include header
    92af89d37c41 staging: wilc1000: restore wilc_spi_dev variable
a4ab1ade75a3 staging: wilc1000: replace drvHandler and hWFIDrv with hif_drv
    cc28e4bf6e52 staging: wilc1000: fix a bug when unload driver
8b8ad7bc90bc staging: wilc1000: rename wilc_firmware in the struct wilc
    6f72ed75e5c5 staging: wilc1000: fix rmmod failure
12ba5416dc77 staging: wilc1000: assign pointer of g_linux_wlan to sdio device data
    702c0e50f6b3 staging: wilc1000: fix build error on SPI
ebd43516d387 Staging: panel: usleep_range is preferred over udelay
    b64a1cbef6df Revert "Staging: panel: usleep_range is preferred over udelay"
        Reported-by: Huang, Ying <ying.huang@intel.com>
c1af9db78950 staging: wilc1000: call linux_sdio_init instead of io_init
    e663900aed9b staging: wilc1000: fix always return 0 error
e0c961bdaf27 iio: adc: mxs-lradc: Prefer using the BIT macro
    f89c2b39ce67 staging:iio:mxs-lradc Fix large integer implicitly truncated to unsigned warning
14b93bb6bbf0 staging: comedi: adv_pci_dio: separate out PCI-1760 support
    c71f20ee7634 staging: comedi: adv_pci1760: Do not return EINVAL for CMDF_ROUND_DOWN.
562ed3f1f78a staging/wilc1000: pass struct wilc to most linux_wlan.c functions
    c6866cc4be96 staging: wilc1000: tcp_process: fix a build warning
8e1d6c336d74 greybus: loopback: drop bus aggregate calculation
    5a70524bbf3b staging: greybus: loopback: Hold per-connection mutex across operations
    8563a49c4382 staging: greybus: remove unused kfifo_ts
e7f2b70fd3a9 staging: most: replace multiple if..else with table lookup
    13c45007e0a8 staging: most: use format specifier "%s" in snprintf
bd2f348db503 goldfish: refactor goldfish platform configs
    b0e302b40873 staging: goldfish: use div64_s64 instead of do_div
a44eb74cd413 staging/android: move SW_SYNC_USER to a debugfs file
    0fd9da9a979a staging/android: sync_debug: unproxify debugfs files' fops
080e6795cba3 staging: comedi: ni_mio_common: Cleans up/clarifies ni_ao_cmd
    15d5193104a4 staging: comedi: ni_mio_common: fix AO timer off-by-one regression
        Reported-by: Éric Piel <piel@delmic.com>
06fb9336acdc staging: wilc1000: wilc_wfi_cfgoperations.c: replaces PRINT_ER with netdev_err
    d99ee289b4ac staging: wilc1000: fix mgmt_tx()
633d27399514 staging/rdma/hfi1: use mod_timer when appropriate
    87717f0a7543 IB/hfi1: Remove unreachable code
        Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
6fba39cf32a3 staging: sm750fb: use BIT macro for PANEL_DISPLAY_CTRL single-bit fields
    992f961480d2 staging: sm750fb: Correctly set CLOCK_PHASE bit of display controller.
e280d71bea18 staging: rtl8723au: use list_for_each_entry*()
6fe5efa1415c staging: octeon: Convert create_singlethread_workqueue()
    8ad253fc0a09 staging: octeon: Fix line over 80 characters
de71daf5c839 Staging: fsl-mc: Replace pr_debug with dev_dbg
    e79e344a3d2f staging: fsl-mc: fix incorrect type passed to dev_dbg macros
        Reported-by: Guenter Roeck <linux@roeck-us.net>
454b0ec8bf99 Staging: fsl-mc: Replace pr_err with dev_err
    2e1159017168 staging: fsl-mc: fix incorrect type passed to dev_err macros
        Reported-by: Guenter Roeck <linux@roeck-us.net>
9899cb68c6c2 Staging: lustre: rpc: Use sizeof type *pointer instead of sizeof type.
    dc7ffefdcc28 staging/lustre/lnet: Fix allocation size for sv_cpt_data
aa94f2888825 staging: comedi: ni_660x: tidy up ni_660x_set_pfi_routing()
    479826cc8611 staging: comedi: ni_660x: fix missing break in switch statement
b42ca86ad605 staging: comedi: ni_tio: remove BUG() checks for ni_tio_get_clock_src()
    55abe8165f31 staging: comedi: ni_tio: fix buggy ni_tio_clock_period_ps() return value
60b3109e5e2d staging: dgnc: use tty_alloc_driver instead of kcalloc
    a0ca97b808c0 staging: dgnc: Fix a NULL pointer dereference
        Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
7c9574090d30 staging: comedi: dt2811: simplify A/D reference configuration
    5ac5c3bcf574 staging: comedi: dt2811: fix a precedence bug
ba3e67001b42 greybus: SPI: convert to a gpbridge driver
    770b03c2ca4a staging: greybus: spilib: fix use-after-free after deregistration
5a8d651a2bde usb: gadget: move gadget API functions to udc-core
    0bf048abebb6 staging: emxx_udc: allow modular build
32c8728d87dc staging/lustre/ptlrpc: reorganize ptlrpc_request
    9275036ec08f staging: lustre: ptlrpc: restore 64-bit time for struct ptlrpc_cli_req
1e1f9ff406fd staging: lustre: llite: break ll_getxattr_common into 2 functions
    d6a80699bad7 staging: lustre: hide unused variable
2518ac59eb27 staging: wilc1000: Replace kthread with workqueue for host interface
    1d4f1d53e1e2 Staging: wilc1000: Fix kernel Oops on opening the device
        Reported-by: Nicolas Ferre <Nicolas.Ferre@microchip.com>
11fb998986a7 mm: move most file-based accounting to the node
    7894c263f200 staging: lustre: fix unstable pages tracking
8f18c8a48b73 staging: lustre: lmv: separate master object with master stripe
    17556cdbe6ed staging: lustre: lmv: correctly iput lmo_root
70a251f68dea staging: lustre: obd: decruft md_enqueue() and md_intent_lock()
    26d2bf1e7152 staging: lustre: mdc: Make IT_OPEN take lookup bits lock
5c2ba8b85e35 rtl8712: pwrctrl_priv: Replace semaphore lock with mutex
    4db7c0bebdff staging: rtl8712: fix double lock bug in SetPSModeWorkItemCallback()
0a1200991234 staging: lustre: cleanup lustre_lib.h
    4091af4a0948 staging: lustre: Fix variable type declaration after refactoring
3d44a78f0d8b staging: rtl8712: Remove unnecessary 'else'
    8681a1d47b33 Fixes: 3d44a78f0d8b ("staging: rtl8712: Remove unnecessary 'else'")
1e1db2a97be5 staging: lustre: clio: Revise read ahead implementation
    186ae2f38ac2 staging: lustre: remove invariant in cl_io_read_ahead()
e10a431b3fd0 staging: lustre: lov: move LSM to LOV layer
    d4bcd7e75cce staging: lustre: restore initialization of return code
2eb9d8cbb3c3 staging: rts5208: rtsx.c: Alloc sizeof struct
    ef5aa934cf03 staging: rts5208: rtsx.c: Fix invalid use of sizeof in rtsx_probe()
cf9caf192988 staging: vc04_services: Replace dmac_map_area with dmac_map_sg
    ff92b9e3c9f8 staging: vc04_services: Fix bulk cache maintenance
        Reported-by: Stefan Wahren <stefan.wahren@i2se.com>
03140dabf584 staging: sm750fb: Replace functions CamelCase naming with underscores.
    52d0744d751d staging: sm750fb: prefix global identifiers
43a07e48af44 staging: iio: ad9832: clean-up regulator 'reg'
    6826fdbd2e20 staging: iio: ad9832: allocate data before using
735bb39ca3be staging: wilc1000: simplify vif[i]->ndev accesses
    dda037057a57 staging: wilc1000: fix to set correct value for 'vif_num'
    0e490657c721 staging: wilc1000: Fix problem with wrong vif index
8d78f0f2ba76 staging: lustre: lnet: cleanup some of the > 80 line issues
    5bba129eaa00 staging: lustre: lnet: memory corruption in selftest
bdfb95c4baab staging: greybus: remove timesync protocol support
    1e029b836108 staging: greybus: arche: remove timesync remains
0cec463e391e staging: bcm2835-audio: Simplify callback structure for write data
    7dd551e20ea2 staging: bcm2835-audio: use | instead of || otherwise result is just boolean 1
c075b6f2d357 staging: sm750fb: Replace POKE32 and PEEK32 by inline functions
    16808dcf605e staging: sm750fb: Fix parameter mistake in poke32
66812da3a689 staging: octeon: Use net_device_stats from struct net_device
    69eb1596b4df staging: octeon: remove unused variable
e31447f934d3 staging: rtl8188eu: Replace x==NULL by !x
    5629ff0ffe77 staging: rtl8188eu: fix some inverted conditions
7676b72428e8 staging: ks7010: move comparison to right hand side
    7bb6313d011f staging: ks7010: fix off by one error
        Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
5b6f9b95f7ae staging: unisys: visorbus: get rid of create_bus_type.
    b0512faf6082 staging: unisys: visorbus: fix kernel BUG discovered by day0 testing
da22013f7df4 atomisp: remove indirection from sh_css_malloc
    bfc133515ffb media: staging: atomisp: sh_css_calloc shall return a pointer to the allocated space
184f8e0981ef atomisp: remove satm kernel
    5162e1ae0c58 staging: atomisp: satm include directory is gone
204f672255c2 staging: android: ion: Use CMA APIs directly
    6e42d12ce0da staging: android: ion: Remove leftover comment
    6d79bd5bb6c7 staging: android: ion: Zero CMA allocated memory
    f292b9b28097 staging: ion: Fix ion_cma_heap allocations
15c6098cfec5 staging: android: ion: Remove ion_handle and ion_client
    35ba13e43cfb staging: android: ion: Clean unused debug_show memeber of the heap object
    f7a320ffebe2 staging: android: uapi: drop definitions of removed ION_IOC_{FREE,SHARE} ioctls
5b29aaaa1e3c staging: rtl8188eu: removes comparison to null
    011ce71609e9 staging: rtl8188eu: memory leak in rtw_free_cmd_obj()
c6f7f2f4591f staging: ccree: refactor LLI access macros
    e0b3f39092a1 staging: ccree: fix 64 bit scatter/gather DMA ops
        Reported-by: Stuart Yoder <stuart.yoder@arm.com>
b93ad9a067e1 staging: fsl-mc: be consistent when checking strcmp() return
    47f078339be9 Revert "staging: fsl-mc: be consistent when checking strcmp() return"
b7e607bf33a2 staging: ccree: move FIPS support to kernel infrastructure
    dc5591dc9c03 staging: ccree: fix fips event irq handling build
62f39d49d168 staging: pi433: reduce stack size in tx thread
    da3761feaec3 Staging: Pi433: Bugfix for wrong argument for sizeof() in TX thread
b03679f6a41a staging: lustre: uapi: remove obd_ioctl_popdata() wrapper
    3ca121c2f4be staging: lustre: obdclass: return -EFAULT if copy_to_user() fails
8e55b6fd0660 staging: lustre: lnet: replace list_for_each with list_for_each_entry
    a93639090a27 staging: lustre: lnet: Fix recent breakage from list_for_each conversion
edf188bee1d9 MIPS: Octeon: Remove usage of cvmx_wait() everywhere.
    0590cdfead8c staging: octeon-usb: use __delay() instead of cvmx_wait()
95b3b4238581 staging: rtl8723bs: remove ternary operators in assignmet statments
    f3c3a0b66ab5 staging: rtl8723bs: remove unused variables
b7749656e946 staging: rtl8188eu: Convert timers to use timer_setup()
    d96e8c10f81f staging: rtl8188eu: Fix bug introduced by convert timers to use timer_setup()
f8af6a323368 staging: rtlwifi: Convert timers to use timer_setup()
    2f9115820982 staging: rtlwifi: Remove unused variable
1b10a0316e2d staging: most: video: remove aim designators
    1f447e51c0b9 staging: most: video: fix registration of an empty comp core_component
b3ec9a6736f2 staging: ccree: staging: ccree: replace sysfs by debugfs interface
    c7fc46fd1410 staging: ccree: mark debug_regs[] as static
621b08eabcdd media: staging/imx: remove static media link arrays
    107927fa597c media: imx: Clear fwnode link struct for each endpoint iteration
6106c0f82481 staging: lustre: lnet: convert selftest to use workqueues
    7d70718de014 staging: lustre: lnet/selftest: fix compile error on UP build
        Reported-by: kbuild test robot <fengguang.wu@intel.com>
    e3675875c0a5 staging: lustre: lnet: avoid uninitialized return value
e9d4f0b9f559 staging: lustre: llite: use d_splice_alias for directories.
    1d6e65bedf58 staging: lustre: fix error deref in ll_splice_alias().
2b2ea09e74a5 staging:r8188eu: Use lib80211 to decrypt WEP-frames
    7775665aadc4 staging: rtl8188eu: Fix module loading from tasklet for WEP encryption
2baddf262e98 staging: lustre: use memdup_user to allocate memory and copy from user
    a139834ed6ce staging: lustre: selftest: freeing an error pointer
6bd082af7e36 staging:r8188eu: use lib80211 CCMP decrypt
    84cad97a717f staging: rtl8188eu: Fix module loading from tasklet for CCMP encryption
52e17089d185 media: imx: Don't initialize vars that won't be used
    2b7db29b7919 media: imx-media-csi: Fix inconsistent IS_ERR and PTR_ERR
    dd5747fb9235 media: imx-media-csi: Do not propagate the error when pinctrl is not found
    890f27693f2a media: imx: work around false-positive warning
b83b8b1881c4 staging:r8188eu: Use lib80211 to support TKIP
    69a1d98c831e Revert "staging:r8188eu: Use lib80211 to support TKIP"
9673d9f6f44b staging: mt7621-mmc: Refactor suspend, resume
    ace488268a90 staging: mt7621-mmc: Fix typo in function parameters
8f2395586cf0 staging: mt7621-mmc: Refactor msdc_init_gpd_bd
    e396de684ebe staging: mt7621-mmc: Fix calculation typo in msdc_init_gpd_bd
        Reported-by: NeilBrown <neil@brown.name>
9533b292a7ac IB: remove redundant INFINIBAND kconfig dependencies
    533d1daea8d8 IB: Revert "remove redundant INFINIBAND kconfig dependencies"
7d7cdb4fa552 staging: most: video: remove debugging code
    f7887f741e55 staging: most: video: fix build warnings
        Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
d4b4aaba515a staging: wilc1000: fix line over 80 characters in host_int_parse_join_bss_param()
    979eb0c96be9 staging: wilc1000: Avoid overriding rates_no while parsing ies element.
0922c0084b91 staging: lustre: remove libcfs_all from ptlrpc
    7a5abc3d9699 staging: lustre: fix more build errors in errno.c
        Reported-by: kbuild test robot <lkp@intel.com>
    3c24e170d49d staging: lustre: fix build error in errno.c
        Reported-by: kbuild test robot <lkp@intel.com>
73d65c8d1a85 staging: lustre: remove libcfs_all.h from lustre/include/*.h
    f7a258a8a450 staging: lustre: fix build error in mdc_request.c
        Reported-by: kbuild test robot <lkp@intel.com>
1daddbc8dec5 staging: vboxvideo: Update driver to use drm_dev_register.
    1ebafd1561a0 staging: vboxvideo: Fix IRQs no longer working
ff52a57a7a42 staging: wilc1000: move the allocation of cmd out of wilc_enqueue_cmd()
    15c3381e3abb staging: wilc1000: fix static checker warning to unlock mutex in wilc_deinit()
        Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
62b6215c11ea staging: mt7621-pinctrl: make use of pinctrl_utils_reserve_map
    0be0debe4a8a staging: mt7621-pinctrl: init *map to NULL for correct memory assignation
e12a1a6e087b staging: mt7621-pinctrl: refactor rt2880_pinctrl_dt_node_to_map function
    0ca1f90861b6 staging: mt7621-pinctrl: use pinconf-generic for 'dt_node_to_map' and 'dt_free_map'
        Reported-by: NeilBrown <neil@brown.name>
    cd56a5141331 staging: mt7621-pinctrl: fix uninitialized variable ngroups
515ce733e86e staging:r8188eu: Use lib80211 to encrypt (CCMP) tx frames
    c5fe50aaa20c Revert "staging:r8188eu: Use lib80211 to encrypt (CCMP) tx frames"
e624c58cf8eb staging: wilc1000: refactor code to avoid use of wilc_set_multicast_list global
    ae26aa844679 staging: wilc1000: Avoid GFP_KERNEL allocation from atomic context.
b3ee105c332e staging: wilc1000: refactor code to move initilization in wilc_netdev_init()
    b4a01d8fa311 staging: wilc1000: fix null checks on wilc
d7ca3a71545b staging: bcm2835-audio: Operate non-atomic PCM ops
    649496b60300 staging: bcm2835-audio: double free in init error path
acceb12a9f8b staging: wilc1000: refactor code to avoid static variables for config parameters
    8f6b8ed3b02e staging: wilc1000: fix incorrect allocation size for structure
35f3288c453e staging: vboxvideo: Atomic phase 1: convert cursor to universal plane
    c00e1d09e305 staging: vboxvideo: unlock on error in vbox_cursor_atomic_update()
2a54e3259e2a staging: mt7621-mmc: Remove #if 0 blocks in sd.c
    e894075934a4 staging: mt7621-mmc: Fix incompletely removed #if 0 block in sd.c
        Reported-by: NeilBrown <neil@brown.name>
745eeeac68d7 staging: mt7621-pci: factor out 'mt7621_pcie_enable_port' function
    e51844bf8251 staging: mt7621-pci: fix reset lines for each pcie port
        Reported-by: NeilBrown <neil@brown.name>
42e764d05712 staging: tegravde: replace bit assignment with macro
    9483804a725a media: staging: tegra-vde: print long unsigned using %lu format specifier
        Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
2159fb372929 staging: olpc_dcon: olpc_dcon_xo_1.c: Switch to the gpio descriptor interface
    ae0a6d2017f7 staging: olpc_dcon_xo_1: add missing 'const' qualifier
05f9d4a0c8c4 staging: erofs: use the new LZ4_decompress_safe_partial()
    7962e63a2f41 staging: erofs: fix undefined LZ4_decompress_safe_partial()
        Reported-by: kbuild test robot <lkp@intel.com>
cc9c58ef6e06 staging: iio: adc: ad7280a: use devm_* APIs
    794e20ee038e staging: iio: adc: ad7280a: fix overwrite of the returned value
f27e47bc6b8b staging: vchiq: use completions instead of semaphores
    a772f116702e staging: vchiq: switch to wait_for_completion_killable
        Reported-by: Arnd Bergmann <arnd@arndb.de>
    852b2876a8a8 staging: vchiq: rework remove_event handling
187ac53e590c staging: vchiq_arm: rework probe and init functions
    9b9c87cf5178 staging: vc04_services: Fix an error code in vchiq_probe()
147ccfd45102 staging: wilc1000: handle mgmt_frame_register ops from cfg82011 context
    b62ce02e157a staging: wilc1000: fix registration frame size
8f1a0ac1eba7 staging: wilc1000: handle scan operation callback from cfg80211 context
    0b7b9b6c3dee staging: wilc1000: fix NULL dereference inside wilc_scan()
        Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
ff5979ad8636 staging: vchiq_2835_arm: quit using custom down_interruptible()
    061ca1401f96 staging: vchiq_2835_arm: revert "quit using custom down_interruptible()"
2b3e88ea6528 net: phy: improve phy state checking
    49230b49c439 staging: octeon: fix broken phylib usage
4165079ba328 net: switch secpath to use skb extension infrastructure
    8762cdcd1d50 staging: octeon: fix build failure with XFRM enabled
        Reported-by: Guenter Roeck <linux@roeck-us.net>
67673ed55084 media: staging/imx: rearrange group id to take in account IPU
    55dde5094698 media: imx: vdic: Fix wrong CSI group ID
1b8b589d9103 staging: fsl-dpaa2: ethsw: Remove getting PORT_BRIDGE_FLAGS
    fd80a14363ee staging: fsl-dpaa2: ethsw: Remove unused port_priv variable
131ac62253db staging: most: core: use device description as name
    3970d0d81816 staging: most: core: replace strcpy() by strscpy()
2411a336c8ce staging: fieldbus: arcx-anybus: change custom -> mmio regmap
    0f2692f7f282 staging: fieldbus: Fix build error without CONFIG_REGMAP_MMIO
        Reported-by: Hulk Robot <hulkci@huawei.com>

--1UWUbFP1cBYEclgG--
