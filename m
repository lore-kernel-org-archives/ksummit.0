Return-Path: <linus.walleij@linaro.org>
Received: from smtp1.linuxfoundation.org (smtp1.linux-foundation.org
	[172.17.192.35])
	by mail.linuxfoundation.org (Postfix) with ESMTPS id 685052C
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Jul 2017 03:56:50 +0000 (UTC)
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by smtp1.linuxfoundation.org (Postfix) with ESMTPS id 3F746400
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sun,  9 Jul 2017 03:56:49 +0000 (UTC)
Received: by mail-io0-f174.google.com with SMTP id h134so12128634iof.2
	for <ksummit-discuss@lists.linuxfoundation.org>;
	Sat, 08 Jul 2017 20:56:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20170707090206.uiry6j7yizpl7yw4@mwanda>
References: <20170706144028.46a2mt2mdzpt6ip7@mwanda>
	<20170706144208.6hlgxwo37gntk6qm@mwanda>
	<CAJKOXPfE+ffRWq_1JB_1LSpg4gDne5pWNN2fKd-3t1hwX7amFA@mail.gmail.com>
	<20170707090206.uiry6j7yizpl7yw4@mwanda>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sun, 9 Jul 2017 05:56:47 +0200
Message-ID: <CACRpkdZB9g3rCgRDnZFDT2g9qQTtUZhKG2Pxp8qKrGP3u1p5+Q@mail.gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Content-Type: text/plain; charset="UTF-8"
Cc: "ksummit-discuss@lists.linuxfoundation.org"
	<ksummit-discuss@lists.linuxfoundation.org>,
	Michal Hocko <mhocko@kernel.org>
Subject: Re: [Ksummit-discuss] [PATCH 2/2] kconfig: new command line kernel
 configuration tool
List-Id: <ksummit-discuss.lists.linuxfoundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/ksummit-discuss/>
List-Post: <mailto:ksummit-discuss@lists.linuxfoundation.org>
List-Help: <mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/ksummit-discuss>,
	<mailto:ksummit-discuss-request@lists.linuxfoundation.org?subject=subscribe>

On Fri, Jul 7, 2017 at 11:02 AM, Dan Carpenter <dan.carpenter@oracle.com> wrote:

> Krzysztof Kozlowski wrote:
>> However why not extending existing scripts/config? It
>> already has the feature for setting kconfig options (without looking
>> at dependencies - so like >> of yours).
>
> I didn't know about scripts/config when I wrote it.  scripts/config is
> essentially a UI around "echo CONFIG_FOO=m >> .config".  It's totally
> useless.

Maybe useless for you but i use it every day in my work. To compile a kernel
for a purpose I have a custom makefile.mak in my top kernel dir
that calls scripts/config to set stuff up on-the-fly with multiple rules like
this:

config-base: FORCE
        @mkdir -p $(build_dir)
        @cp $(rootfs) $(build_dir)/$(rootfsbase)
        $(MAKE) $(make_options) u8500_defconfig

config-initramfs: have-rootfs config-base
        # Configure in the initramfs
        $(CURDIR)/scripts/config --file $(config_file) \
        --enable BLK_DEV_INITRD \
        --set-str INITRAMFS_SOURCE $(rootfsbase) \
        --enable RD_GZIP \
        --enable INITRAMFS_COMPRESSION_GZIP

(....)

config: config-common config-distro config-initramfs
        $(CURDIR)/scripts/config --file $(config_file) \
        --enable USE_OF \
        --enable ARM_APPENDED_DTB \
        --enable ARM_ATAG_DTB_COMPAT \
        --enable PROC_DEVICETREE
        yes "" | make $(make_options) oldconfig

For the full Makefile see:

https://dflund.se/~triad/krad/makefiles/ux500.mak

There are several of these, like some that create a minimal
i586 system with busybox on an initramfs:
https://dflund.se/~triad/krad/makefiles/i586.mak

I don't know if I am stupid in using this rather than config
fragments, but it works for me.

That said, what you have brewing looks better :)

Yours,
Linus Walleij
